package admin.service.impl;

import admin.dao.VenuestypeMapper;
import admin.model.Venuestype;
import admin.service.VenuesTypeService;
import common.core.generic.GenericDao;
import common.core.generic.GenericServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by chenchen on 16/8/20.
 */
@Service
public class VeneusTypeServiceImpl extends GenericServiceImpl<Venuestype,Integer> implements VenuesTypeService {

    @Resource
    private VenuestypeMapper venuestypeMapper;

    @Override
    public int insert(Venuestype venuestype) {
        return venuestypeMapper.insertSelective(venuestype);
    }

    public int update(Venuestype venuestype) {
        return 0;
    }

    public int delete(Long id) {
        return 0;
    }

    public Venuestype selectById(Long id) {
        return null;
    }

    public GenericDao<Venuestype,Integer> getDao() {
        return venuestypeMapper;
    }//cc

    public Venuestype selectOne() {
        return null;
    }

}
