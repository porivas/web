package admin.dao;

import admin.model.Certificate;
import admin.model.CertificateExample;
import java.util.List;

import common.core.generic.GenericDao;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

public interface CertificateMapper extends GenericDao {/*

    int countByExample(CertificateExample example);


    int deleteByExample(CertificateExample example);


    @Delete({
        "delete from certificate",
        "where certificate_id = #{certificateId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer certificateId);


    @Insert({
        "insert into certificate (certificate_id, sport_id, ",
        "certificate_type, certificate_name, ",
        "certificate_department, certificate_date, ",
        "certificate_pic)",
        "values (#{certificateId,jdbcType=INTEGER}, #{sportId,jdbcType=INTEGER}, ",
        "#{certificateType,jdbcType=VARCHAR}, #{certificateName,jdbcType=VARCHAR}, ",
        "#{certificateDepartment,jdbcType=VARCHAR}, #{certificateDate,jdbcType=DATE}, ",
        "#{certificatePic,jdbcType=VARCHAR})"
    })
    @SelectKey(statement="SELECT LAST_INSERT_ID()", keyProperty="certificateId", before=true, resultType=Integer.class)
    int insert(Certificate record);


    int insertSelective(Certificate record);


    List<Certificate> selectByExample(CertificateExample example);


    @Select({
        "select",
        "certificate_id, sport_id, certificate_type, certificate_name, certificate_department, ",
        "certificate_date, certificate_pic",
        "from certificate",
        "where certificate_id = #{certificateId,jdbcType=INTEGER}"
    })
    @ResultMap("BaseResultMap")
    Certificate selectByPrimaryKey(Integer certificateId);


    int updateByExampleSelective(@Param("record") Certificate record, @Param("example") CertificateExample example);


    int updateByExample(@Param("record") Certificate record, @Param("example") CertificateExample example);


    int updateByPrimaryKeySelective(Certificate record);


    @Update({
        "update certificate",
        "set sport_id = #{sportId,jdbcType=INTEGER},",
          "certificate_type = #{certificateType,jdbcType=VARCHAR},",
          "certificate_name = #{certificateName,jdbcType=VARCHAR},",
          "certificate_department = #{certificateDepartment,jdbcType=VARCHAR},",
          "certificate_date = #{certificateDate,jdbcType=DATE},",
          "certificate_pic = #{certificatePic,jdbcType=VARCHAR}",
        "where certificate_id = #{certificateId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Certificate record);*/
}