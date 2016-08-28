package admin.dao;

import admin.model.Schedule;
import admin.model.ScheduleExample;
import java.util.List;

import common.core.generic.GenericDao;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

public interface ScheduleMapper extends GenericDao{
}