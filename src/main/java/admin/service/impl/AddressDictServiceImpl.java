package admin.service.impl;

import admin.dao.AddressMapper;
import admin.dao.AddressdictMapper;
import admin.model.Address;
import admin.model.Addressdict;
import admin.service.AddressDictService;
import common.core.generic.GenericDao;
import common.core.generic.GenericService;
import common.core.generic.GenericServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service
public class AddressDictServiceImpl extends GenericServiceImpl<Addressdict,Integer> implements AddressDictService {

    @Resource
    private AddressdictMapper addressdictMapper;


    public GenericDao<Addressdict,Integer> getDao() {
        return addressdictMapper;
    }//cc




}
