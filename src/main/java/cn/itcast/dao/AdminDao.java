package cn.itcast.dao;

import cn.itcast.domain.Admin;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminDao {


    //查询所有账户信息
    @Select("select * from admin")
    public List<Admin> findAll();

    //保存账户信息
    @Insert("insert into admin (Sno,Aname,Asex,Aage,Atel,Aemail,SuperAdmin) values (#{Sno}, #{Aname},#{Asex},#{Aage},#{Atel},#{Aemail},#{SuperAdmin} )")
    public void saveAdmin(Admin admin);


    //查询单个用户信息
    @Select("select * from admin where admin.Sno = #{Sno}")
    public Admin admin(Admin admin);


    //更新用户信息
    @Update("Update admin Set Admin.Aname = #{Aname} Where Admin.Sno = #{Sno}")
    public void updateMsg(Admin admin);

    //删除单个用户信息
    @Delete("Delete from Admin Where Sno = #{Sno} ")
    public void deleteMsg(Admin admin);
}
