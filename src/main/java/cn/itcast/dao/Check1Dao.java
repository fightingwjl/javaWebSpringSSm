package cn.itcast.dao;

import cn.itcast.domain.Check1;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface Check1Dao {

    //查询所有账户信息
    @Select("select * from check1")
    public List<Check1> findAll();

    //保存账户信息
    @Insert("insert into check1 (Sno,Cregular,Cabsence,Ctardy) values (#{Sno}, #{Cregular},#{Cabsence},#{Ctardy} )")
    public void savecheck1(Check1 check1);


    //查询单个用户信息
    @Select("select * from Check1 where Sno = #{Sno}")
    public Check1 check1(Check1 check1);


    //更新用户信息
    @Update("Update Check1 Set Cregular = #{Cregular} Where Sno = #{Sno}")
    public void updateMsg(Check1 check1);

    //删除单个用户信息
    @Delete("Delete from Check1 Where Sno = #{Sno} ")
    public void deleteMsg(Check1 check1);
}
