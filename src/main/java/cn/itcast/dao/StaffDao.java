package cn.itcast.dao;

import cn.itcast.domain.Staff;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StaffDao {

    //查询所有账户信息
    @Select("select * from staff")
    public List<Staff> findAll();

    //保存账户信息
    @Insert("insert into staff (Sno,Sname,Ssex,Sage,Sedu,Stel,Semail,Sposition,Dno) values (#{Sno}, #{Sname},#{Ssex},#{Sage},#{Sedu},#{Stel},#{Semail},#{Sposition},#{Dno} )")
    public void saveStaff(Staff staff);


    //查询单个用户信息
    @Select("select * from staff where Staff.Sno = #{Sno}")
    public Staff staff(Staff staff);


    //更新用户信息
    @Update("Update Staff Set Staff.Sname = #{Sname} Where Staff.Sno = #{Sno}")
    public void updateMsg(Staff staff);

    //删除单个用户信息
    @Delete("Delete from Staff Where Sno = #{Sno} ")
    public void deleteMsg(Staff staff);
}
