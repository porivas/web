package admin.service.impl;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import common.core.generic.GenericDao;
import common.core.generic.GenericServiceImpl;
import admin.dao.PermissionMapper;
import admin.model.Permission;
import admin.service.PermissionService;

/**
 * 权限Service实现类
 *
 * @author StarZou
 * @since 2014年6月10日 下午12:05:03
 */
@Service
public class PermissionServiceImpl extends GenericServiceImpl<Permission, Long> implements PermissionService {

    @Resource
    private PermissionMapper permissionMapper;


    @Override
    public GenericDao<Permission, Long> getDao() {
        return permissionMapper;
    }

    @Override
    public List<Permission> selectPermissionsByRoleId(Integer roleId) {
        return permissionMapper.selectPermissionsByRoleId(roleId);
    }


}
