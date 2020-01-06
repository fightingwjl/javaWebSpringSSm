package cn.itcast.dao;

import cn.itcast.domain.Account;
import cn.itcast.domain.Wage;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface WageDao {

    //查询所有账户信息
    @Select("select * from wage")
    public List<Wage> findAll();

    //保存账户信息
    @Insert("insert into wage (Sno,Wbasic,Wpenalty,Wactual) values (#{Sno}, #{Wbasic},#{Wpenalty},#{Wactual} )")
    public void saveWage(Wage wage);


    //查询单个用户信息
    @Select("select * from Wage where Wage.Sno = #{Sno}")
    public Wage wage(Wage wage);


    //更新用户信息
    @Update("Update Wage Set Wage.Wbasic = #{Wbasic},Wpenalty= #{Wpenalty},Wactual=#{Wactual} Where Wage.Sno = #{Sno}")
    public void updateMsg(Wage wage);

    //删除单个用户信息
    @Delete("Delete from Wage Where Sno = #{Sno} ")
    public void deleteMsg(Wage wage);
}
