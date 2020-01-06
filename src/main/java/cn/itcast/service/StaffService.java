package cn.itcast.service;

import cn.itcast.domain.Staff;

import java.util.List;

public interface StaffService {
    //查询所有账户信息
    public List<Staff> findAll();

    //保存账户信息
    public void saveStaff(Staff staff);

    //查询单个用户信息
    public Staff staff(Staff staff);

    //更新用户信息
    public void updateMsg(Staff staff);

    //删除用户信息
    public void deleteMsg(Staff staff);
}
