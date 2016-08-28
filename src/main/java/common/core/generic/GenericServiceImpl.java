package common.core.generic;

import java.util.List;

/**
 * GenericService的实现类, 其他的自定义 ServiceImpl, 继承自它,可以获得常用的增删查改操作,
 * 未实现的方法有 子类各自实现
 * <p/>
 * Model : 代表数据库中的表 映射的Java对象类型
 * PK :代表对象的主键类型
 *
 * @author StarZou
 * @since 2014年6月9日 下午6:14:06
 */
public abstract class GenericServiceImpl<Model, PK> implements GenericService<Model, PK> {

    /**
     * 定义成抽象方法,由子类实现,完成dao的注入
     *
     * @return GenericDao实现类
     */
    public abstract GenericDao<Model, PK> getDao();


    public <Example>int countByExample(Example example){
        return getDao().countByExample(example);
    }

    public int updateByPrimaryKeySelective(Model record){
        return getDao().updateByPrimaryKeySelective(record);
    }


    public <Example>int deleteByExample(Example example){
        return  getDao().deleteByExample(example);
    }

   public int insertSelective(Model record){
       return getDao().insertSelective(record);
   }

    public <Example>List<Model> selectByExample(Example example){
        return getDao().selectByExample(example);
    }

    public <Example>int updateByExample( Model record,  Example example){
        return getDao().updateByExample(record,example);
    }

    public <Example>int updateByExampleSelective( Model record,  Example example){
        return getDao().updateByExampleSelective(record,example);
    }
}
