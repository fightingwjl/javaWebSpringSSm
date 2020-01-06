package cn.itcast.dao;


import cn.itcast.domain.Account;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

//账户接口
@Repository
public interface AccountDao {

    //查询所有账户信息
    @Select("select * from account")
    public List<Account> findAll();

    //保存账户信息
    @Insert("insert into account (name,money) values (#{name}, #{money})")
    public void saveAccount(Account account);


    //查询单个用户信息
    @Select("select money from account where name = #{name}")
    public double login(Account account);


    //更新用户信息
    @Update("Update Account Set Account.money = #{money} Where Account.name = #{name}")
    public void updateMsg(Account account);

    //删除单个用户信息
    @Delete("Delete from Account Where name = #{name} ")
    public void deleteMsg(Account account);

}
