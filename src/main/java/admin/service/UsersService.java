package admin.service;

import common.core.generic.GenericService;
import admin.model.Users;

/**
 * 用户 业务 接口
 * 
 * @author StarZou
 * @since 2014年7月5日 上午11:53:33
 **/
public interface UsersService extends GenericService<Users, Long> {

    /**
     * 用户验证
     * 
     * @param user
     * @return
     */
    Users authentication(Users user);

    /**
     * 根据用户名查询用户
     * 
     * @param username
     * @return
     */
    Users selectByUsername(String username);
}
