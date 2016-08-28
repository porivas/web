package common.core.generic;

import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 所有自定义Service的顶级接口,封装常用的增删查改操作
 * <p/>
 * Model : 代表数据库中的表 映射的Java对象类型
 * PK :代表对象的主键类型
 *
 * @author StarZou
 * @since 2014年6月9日 下午6:14:06
 */
public interface GenericService<Model, PK> {


    <Example>int countByExample(Example example);

    int updateByPrimaryKeySelective(Model record);


    <Example>int updateByExample( Model record,  Example example);

    <Example>int updateByExampleSelective( Model record,  Example example);

    <Example>int deleteByExample(Example example);

    int insertSelective(Model record);

    <Example>List<Model> selectByExample(Example example);
}
