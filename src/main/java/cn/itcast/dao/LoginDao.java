package cn.itcast.dao;



import cn.itcast.domain.Account;
import cn.itcast.domain.Advice;
import cn.itcast.domain.Login;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LoginDao {

    //查询所有账户信息
    @Select("select * from login")
    public List<Login> findAll();

    //查询所有意见
    @Select("select * from ad")
    public List<Advice> findAllAd();

    //新增账户信息
    @Insert("insert into login (Sno,password) values (#{Sno}, #{password})")
    public void saveLogin(Login login);

    //查询单个用户信息
    @Select("select * from login where Sno = #{Sno}")
    public Login login(Login login);


    //更新用户信息
    @Update("Update Login Set password = #{password} Where Sno = #{Sno}")
    public void updateMsg(Login login);


    //更新用户意见
    @Update("Update ad Set advice1 = #{advice1} Where Sno = #{Sno}")
    public void updateAd(Advice advice);

    //删除单个用户信息
    @Delete("Delete from Login Where Sno = #{Sno} ")
    public void deleteMsg(Login login);

}
