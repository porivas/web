package admin.controller;

import admin.model.Venuestype;
import admin.model.VenuestypeExample;
import admin.service.VenuesTypeService;
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
    @RequestMapping(value="/add.do")
    public List<String> add(@Valid Venuestype venuestype){
        List list  = new ArrayList();
        int i = 0;
        try {
             i = venuesTypeService.insert(venuestype);

    } catch (Exception e) {

        e.printStackTrace();
    }
    list.add(String.valueOf(i));
        return list;
    }

    @ResponseBody
    @RequestMapping(value="/searchJson.do")
    public List<Venuestype> searchJson(@Valid Venuestype venuestype){
        List list  = new ArrayList();
        try {
            VenuestypeExample venuestypeExample = new VenuestypeExample();
            if(venuestype.getVenuestypeName()!=null){
                venuestypeExample.or().andVenuestypeNameLike(venuestype.getVenuestypeName());
            }

            if(venuestype.getComments()!=null){
                venuestypeExample.or().andCommentsLike(venuestype.getComments());
            }

            list = venuesTypeService.selectList(venuestypeExample);

        } catch (Exception e) {

            e.printStackTrace();
        }
        System.out.println(list.toString());

        return list;
    }

    @RequestMapping(value="/searchMav.do")
    public ModelAndView searchMav(@Valid Venuestype venuestype){
        List list  = new ArrayList();
        try {
            VenuestypeExample venuestypeExample = new VenuestypeExample();
            if(venuestype.getVenuestypeName()!=null){
                venuestypeExample.or().andVenuestypeNameLike(venuestype.getVenuestypeName());
            }

            if(venuestype.getComments()!=null){
                venuestypeExample.or().andCommentsLike(venuestype.getComments());
            }

            list = venuesTypeService.selectList(venuestypeExample);

        } catch (Exception e) {

            e.printStackTrace();
        }
        HashMap map = new HashMap<String,List>();
        map.put("datas",list);

        return new ModelAndView("/jsp/venues_type/list",map);
    }


    @RequestMapping(value="/deleteMav.do")
    public ModelAndView deleteMav(HttpServletRequest request,
                                  HttpServletResponse response,
                                  ModelMap model,
                                  @RequestParam(value = "arr[]") Integer[] arr){
        int i=0;
        try {
            System.out.println(",,,,,"+arr.length);
            VenuestypeExample venuestypeExample = new VenuestypeExample();
            venuestypeExample.or().andVenuestypeIdIn(Arrays.asList(arr));




            i = venuesTypeService.delete(venuestypeExample);

        } catch (Exception e) {

            e.printStackTrace();
        }
        HashMap map = new HashMap<String,List>();
        //map.put("datas",list);

        return new ModelAndView("/jsp/venues_type/list",map);
    }



}
