package admin.service.impl;

import admin.dao.VenuestypeMapper;
import admin.model.Venuestype;
import admin.service.VenuesTypeService;
import common.core.generic.GenericDao;
import common.core.generic.GenericServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class VeneusTypeServiceImpl extends GenericServiceImpl<Venuestype,Integer> implements VenuesTypeService {

    @Resource
    private VenuestypeMapper venuestypeMapper;


    public GenericDao<Venuestype,Integer> getDao() {
        return venuestypeMapper;
    }//cc




}
