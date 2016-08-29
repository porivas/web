package admin.controller;

import admin.model.Venuestype;
import admin.model.VenuestypeExample;
import admin.service.VenuesTypeService;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/**
 * Created by chenchen on 16/8/20.
 */
@Controller
@RequestMapping(value = "/venuesType")
public class venusTypeController {

    @Resource
    private VenuesTypeService venuesTypeService;

    @ResponseBody
    @RequestMapping(value="/addJson.do")
    public List<String> addJson(@Valid Venuestype venuestype){
        List list  = new ArrayList();
        //System.out.println("add....");
        int i = 0;
        try {
             i = venuesTypeService.insertSelective(venuestype);

    } catch (Exception e) {

        e.printStackTrace();
    }
    list.add(String.valueOf(i));
        return list;
    }

    @ResponseBody
    @RequestMapping(value="/searchJson.do")
    public List<Venuestype> searchJson(@Valid Venuestype venuestype){
       return search(venuestype);
    }

    @RequestMapping(value="/searchMav.do")
    public ModelAndView searchMav(@Valid Venuestype venuestype){

        System.out.println("searchMav...");
        HashMap<String,List<Venuestype>> map = new HashMap<String,List<Venuestype>>();
        map.put("datas",search(venuestype));

        return new ModelAndView("/jsp/venues_type/list",map);
    }


    @RequestMapping(value = "/searchByKeyMav.do")
    public ModelAndView searchByKeyMav(HttpServletRequest request,
                                       HttpServletResponse response,
                                       ModelMap model,
                                       @RequestParam(value = "arr[]") Integer[] arr){
        HashMap<String,Venuestype> map = new HashMap<String,Venuestype>();
        VenuestypeExample venuestypeExample = new VenuestypeExample();

        if(arr.length==1) {
            Venuestype venuestype = new Venuestype();
            venuestype.setVenuestypeId(arr[0].intValue());
            map.put("data",search(venuestype).get(0));

        }



        return new ModelAndView("/jsp/venues_type/modify",map);
    }


    public List<Venuestype> search(@Valid Venuestype venuestype){
        List<Venuestype>list  = new ArrayList<Venuestype>();
        try {
            VenuestypeExample venuestypeExample = new VenuestypeExample();
            if(venuestype.getVenuestypeId()!= null){
                venuestypeExample.or().andVenuestypeIdEqualTo(venuestype.getVenuestypeId());
            }

            if(!StringUtils.isBlank(venuestype.getVenuestypeName())){
                venuestypeExample.or().andVenuestypeNameLike("%"+venuestype.getVenuestypeName()+"%");
            }

            if(!StringUtils.isBlank(venuestype.getComments())){
                venuestypeExample.or().andCommentsLike("%"+venuestype.getComments()+"%");
            }

            list =(List<Venuestype>) venuesTypeService.selectByExample(venuestypeExample);

        } catch (Exception e) {

            e.printStackTrace();
        }


        return list;
    }


    @RequestMapping(value="/deleteMav.do")
    public void deleteMav(HttpServletRequest request,
                                  HttpServletResponse response,
                                  ModelMap model,
                                  @RequestParam(value = "arr[]") Integer[] arr){
        int i=0;
        try {
            System.out.println(",,,,,"+arr.length);
            VenuestypeExample venuestypeExample = new VenuestypeExample();
            venuestypeExample.or().andVenuestypeIdIn(Arrays.asList(arr));




            i = venuesTypeService.deleteByExample(venuestypeExample);

        } catch (Exception e) {

            e.printStackTrace();
            model.addAttribute("error", "删除失败");

        }

    }



    @ResponseBody
    @RequestMapping(value="/modifyJson.do")
    public List<String> modifyJson(@Valid Venuestype venuestype){
        List list  = new ArrayList();
        int i = 0;
        try {

            i = venuesTypeService.updateByPrimaryKeySelective(venuestype);

        } catch (Exception e) {

            e.printStackTrace();
        }
        list.add(String.valueOf(i));
        return list;
    }



}
