package admin.service.impl;

import admin.dao.VenuesMapper;
import admin.dao.VenuestypeMapper;
import admin.model.Venues;
import admin.model.Venuestype;
import admin.service.VenuesService;
import admin.service.VenuesTypeService;
import common.core.generic.GenericDao;
import common.core.generic.GenericServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service
public class VeneusServiceImpl extends GenericServiceImpl<Venues,Integer> implements VenuesService {

    @Resource
    private VenuesMapper venuesMapper;


    public GenericDao<Venues,Integer> getDao() {
        return venuesMapper;
    }//cc




}
