package cn.itcast.service;

import cn.itcast.domain.Admin;

import java.util.List;

public interface AdminService {

    //查询所有账户信息
    public List<Admin> findAll();

    //保存账户信息
    public void saveAdmin(Admin Admin);

    //查询单个用户信息
    public Admin admin(Admin admin);

    //更新用户信息
    public void updateMsg(Admin admin);

    //删除用户信息
    public void deleteMsg(Admin admin);
}
