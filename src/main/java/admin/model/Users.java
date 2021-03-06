package admin.model;

import java.util.Date;

public class Users extends BaseModel {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column users.user_id
     *
     * @mbggenerated
     */
    private Integer userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column users.username
     *
     * @mbggenerated
     */
    private String username;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column users.pwd
     *
     * @mbggenerated
     */
    private String pwd;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column users.email
     *
     * @mbggenerated
     */
    private String email;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column users.phonenum
     *
     * @mbggenerated
     */
    private String phonenum;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column users.pic
     *
     * @mbggenerated
     */
    private String pic;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column users.user_type
     *
     * @mbggenerated
     */
    private String userType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column users.role_id
     *
     * @mbggenerated
     */
    private Integer roleId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column users.create_time
     *
     * @mbggenerated
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column users.status
     *
     * @mbggenerated
     */
    private String status;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated
     */
    public Users(Integer userId, String username, String pwd, String email, String phonenum, String pic, String userType, Integer roleId, Date createTime, String status) {
        this.userId = userId;
        this.username = username;
        this.pwd = pwd;
        this.email = email;
        this.phonenum = phonenum;
        this.pic = pic;
        this.userType = userType;
        this.roleId = roleId;
        this.createTime = createTime;
        this.status = status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated
     */
    public Users() {
        super();
    }


    public Users(String username,String pwd) {
        this.username = username;
        this.pwd = pwd;
    }
    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column users.user_id
     *
     * @return the value of users.user_id
     *
     * @mbggenerated
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column users.user_id
     *
     * @param userId the value for users.user_id
     *
     * @mbggenerated
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column users.username
     *
     * @return the value of users.username
     *
     * @mbggenerated
     */
    public String getUsername() {
        return username;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column users.username
     *
     * @param username the value for users.username
     *
     * @mbggenerated
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column users.pwd
     *
     * @return the value of users.pwd
     *
     * @mbggenerated
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column users.pwd
     *
     * @param pwd the value for users.pwd
     *
     * @mbggenerated
     */
    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column users.email
     *
     * @return the value of users.email
     *
     * @mbggenerated
     */
    public String getEmail() {
        return email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column users.email
     *
     * @param email the value for users.email
     *
     * @mbggenerated
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column users.phonenum
     *
     * @return the value of users.phonenum
     *
     * @mbggenerated
     */
    public String getPhonenum() {
        return phonenum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column users.phonenum
     *
     * @param phonenum the value for users.phonenum
     *
     * @mbggenerated
     */
    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum == null ? null : phonenum.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column users.pic
     *
     * @return the value of users.pic
     *
     * @mbggenerated
     */
    public String getPic() {
        return pic;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column users.pic
     *
     * @param pic the value for users.pic
     *
     * @mbggenerated
     */
    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column users.user_type
     *
     * @return the value of users.user_type
     *
     * @mbggenerated
     */
    public String getUserType() {
        return userType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column users.user_type
     *
     * @param userType the value for users.user_type
     *
     * @mbggenerated
     */
    public void setUserType(String userType) {
        this.userType = userType == null ? null : userType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column users.role_id
     *
     * @return the value of users.role_id
     *
     * @mbggenerated
     */
    public Integer getRoleId() {
        return roleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column users.role_id
     *
     * @param roleId the value for users.role_id
     *
     * @mbggenerated
     */
    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column users.create_time
     *
     * @return the value of users.create_time
     *
     * @mbggenerated
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column users.create_time
     *
     * @param createTime the value for users.create_time
     *
     * @mbggenerated
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column users.status
     *
     * @return the value of users.status
     *
     * @mbggenerated
     */
    public String getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column users.status
     *
     * @param status the value for users.status
     *
     * @mbggenerated
     */
    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }
}