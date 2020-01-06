package cn.itcast.dao;

import cn.itcast.domain.Depart;
import cn.itcast.domain.Staff;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DepartDao {

    //查询所有账户信息
    @Select("select * from depart")
    public List<Depart> findAll();

    //保存账户信息
    @Insert("insert into depart (Dno,Dname,Sno,Sname) values (#{Dno}, #{Dname},#{Sno},#{Sname})")
    public void saveDepart(Depart depart);


    //查询单个用户信息
    @Select("select depart.sno,depart.dno,dname,depart.sname from depart,staff where staff.sno = #{Sno} and staff.dno=depart.dno")
    public Depart depart(Staff staff);


    //更新部门信息 需要知道部门号
    @Update("Update Depart Set Dname = #{Dname} Where Dno = #{Dno}")
    public void updateMsg(Depart depart);

    //删除单个用户信息
    @Delete("Delete from Depart Where Dno = #{Dno} ")
    public void deleteMsg(Depart depart);
}
