package admin.service.impl;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import common.core.generic.GenericDao;
import common.core.generic.GenericServiceImpl;
import admin.dao.RoleMapper;
import admin.model.Role;
import admin.service.RoleService;

/**
 * 角色Service实现类
 *
 * @author StarZou
 * @since 2014年6月10日 下午4:16:33
 */
@Service
public class RoleServiceImpl extends GenericServiceImpl<Role, Long> implements RoleService {

    @Resource
    private RoleMapper roleMapper;

    @Override
    public GenericDao<Role, Long> getDao() {
        return roleMapper;
    }

    @Override
    public List<Role> selectRolesByUserId(int userId) {
        return roleMapper.selectRolesByUserId(userId);
    }

}
