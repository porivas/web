package admin.dao;

import admin.model.Award;
import admin.model.AwardExample;
import java.util.List;

import common.core.generic.GenericDao;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

public interface AwardMapper extends GenericDao {
}