package cn.itcast.service;

import cn.itcast.domain.Depart;
import cn.itcast.domain.Staff;

import java.util.List;

public interface DepartService {

    //查询所有账户信息
    public List<Depart> findAll();

    //保存账户信息
    public void saveDepart(Depart depart);

    //查询单个用户信息
    public Depart depart(Staff staff);

    //更新用户信息
    public void updateMsg(Depart depart);

    //删除用户信息
    public void deleteMsg(Depart depart);

}
