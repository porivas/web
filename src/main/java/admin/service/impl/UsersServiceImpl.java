package admin.service.impl;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import common.core.generic.GenericDao;
import common.core.generic.GenericServiceImpl;
import admin.dao.UsersMapper;
import admin.model.Users;
import admin.model.UsersExample;
import admin.service.UsersService;

/**
 * 用户Service实现类
 *
 * @author StarZou
 * @since 2014年7月5日 上午11:54:24
 */
@Service
public class UsersServiceImpl extends GenericServiceImpl<Users, Long> implements UsersService {

    @Resource
    private UsersMapper usersMapper;




    @Override
    public Users authentication(Users user) {
        return usersMapper.authentication(user);
    }




    @Override
    public GenericDao<Users, Long> getDao() {
        return usersMapper;
    }

    @Override
    public Users selectByUsername(String username) {
        UsersExample example = new UsersExample();
        example.createCriteria().andUsernameEqualTo(username);
        final List<Users> list = usersMapper.selectByExample(example);
        return list.get(0);
    }

}
