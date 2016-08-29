package admin.controller;

import admin.model.*;
import admin.service.AddressDictService;
import admin.service.VenuesService;
import admin.service.VenuesTypeService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.*;

/**
 * Created by chenchen on 16/8/20.
 */
@Controller
@RequestMapping(value = "/venues")
public class venuesController {

    @Resource
    private VenuesService venuesService;
    @Resource
    private VenuesTypeService venuesTypeService;
    @Resource
    private AddressDictService addressDictService;

    @ResponseBody
    @RequestMapping(value = "/addJson.do")
    public List<String> addJson(@Valid Venues venues) {
        List list = new ArrayList();
        //System.out.println("add....");
        int i = 0;
        try {
            i = venuesService.insertSelective(venues);

        } catch (Exception e) {

            e.printStackTrace();
        }
        list.add(String.valueOf(i));
        return list;
    }

    @ResponseBody
    @RequestMapping(value = "/searchJson.do")
    public List<Venues> searchJson(@Valid Venues venues) {
        return search(venues);
    }

    @RequestMapping(value = "/searchMav.do")
    public ModelAndView searchMav(@Valid Venues venues) {

        System.out.println("searchMav...");
        HashMap<String, List<Venues>> map = new HashMap<String, List<Venues>>();
        map.put("datas", search(venues));

        return new ModelAndView("/jsp/venues/list", map);
    }


    @RequestMapping(value = "/searchByKeyMav.do")
    public ModelAndView searchByKeyMav(HttpServletRequest request,
                                       HttpServletResponse response,
                                       ModelMap model,
                                       @RequestParam(value = "arr[]") Integer[] arr) {
        HashMap<String, Object> map = new HashMap<String, Object>();
        VenuesExample venuesExample = new VenuesExample();
        List<Venuestype> venuesTypes = new ArrayList<Venuestype>();


        if (arr.length == 1) {
            venuesTypes = venuesTypeService.selectByExample(null);
            map.put("venuesTypes", venuesTypes);

            Venues venues = new Venues();
            venues.setVenuesId(arr[0].intValue());
            map.put("data", search(venues).get(0));

        }


        return new ModelAndView("/jsp/venues/modify", map);
    }


    public List<Venues> search(@Valid Venues venues) {
        List<Venues> list = new ArrayList<Venues>();
        try {
            VenuesExample venuesExample = new VenuesExample();
            if (venues.getVenuesId() != null) {
                venuesExample.or().andVenuesIdEqualTo(venues.getVenuesId());
            }

            if (venues.getVenuestypeId() != null) {
                venuesExample.or().andVenuestypeIdEqualTo(venues.getVenuestypeId());
            }

            if (!StringUtils.isBlank(venues.getVenuesName())) {
                venuesExample.or().andVenuesNameLike("%" + venues.getVenuesName() + "%");
            }

            if (!StringUtils.isBlank(venues.getComments())) {
                venuesExample.or().andCommentsLike("%" + venues.getComments() + "%");
            }

            list = (List<Venues>) venuesService.selectByExample(venuesExample);

        } catch (Exception e) {

            e.printStackTrace();
        }


        return list;
    }


    @RequestMapping(value = "/deleteMav.do")
    public void deleteMav(HttpServletRequest request,
                          HttpServletResponse response,
                          ModelMap model,
                          @RequestParam(value = "arr[]") Integer[] arr) {
        int i = 0;
        try {
            System.out.println(",,,,," + arr.length);
            VenuesExample venuesExample = new VenuesExample();
            venuesExample.or().andVenuesIdIn(Arrays.asList(arr));


            i = venuesService.deleteByExample(venuesExample);

        } catch (Exception e) {

            e.printStackTrace();
            model.addAttribute("error", "删除失败");

        }

    }


    @ResponseBody
    @RequestMapping(value = "/modifyJson.do")
    public List<String> modifyJson(@Valid Venues venues) {
        List list = new ArrayList();
        int i = 0;
        try {

            i = venuesService.updateByPrimaryKeySelective(venues);

        } catch (Exception e) {

            e.printStackTrace();
        }
        list.add(String.valueOf(i));
        return list;
    }


    @RequestMapping(value = "/showAddMav.do")
    public ModelAndView showAddMav() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Venuestype> venuesTypes = new ArrayList<Venuestype>();
        List<Addressdict> provs = new ArrayList<Addressdict>();
        List<Addressdict> citys = new ArrayList<Addressdict>();
        List<Addressdict> areas = new ArrayList<Addressdict>();
        List<Addressdict> streets = new ArrayList<Addressdict>();
        try {
            venuesTypes = venuesTypeService.selectByExample(null);
            map.put("venuesTypes", venuesTypes);

            AddressdictExample addressdictExample = new AddressdictExample();
            addressdictExample.or().andLevelEqualTo("1");
            provs = addressDictService.selectByExample(addressdictExample);
            map.put("provs", provs);

            /*addressdictExample.clear();
            addressdictExample.or().andLevelEqualTo("2");
            citys = addressDictService.selectByExample(addressdictExample);


            addressdictExample.clear();
            addressdictExample.or().andLevelEqualTo("3");
            areas = addressDictService.selectByExample(addressdictExample);


            addressdictExample.clear();
            addressdictExample.or().andLevelEqualTo("4");
            streets = addressDictService.selectByExample(addressdictExample);
            */

            map.put("citys", citys);
            map.put("areas", areas);
            map.put("streets", streets);
        } catch (Exception e) {
            e.printStackTrace();
        }


        return new ModelAndView("/jsp/venues/add", map);
    }

    @RequestMapping(value = "/showSearchBarMav.do")
    public ModelAndView showSearchBarMav(){
        Map<String, Object> map = new HashMap<String, Object>();
        List<Venuestype> venuesTypes = new ArrayList<Venuestype>();

        try{
            venuesTypes = venuesTypeService.selectByExample(null);
            map.put("venuesTypes", venuesTypes);
        }catch (Exception e){
            e.printStackTrace();
        }
        return new ModelAndView("/jsp/venues/search", map);

    }


}
