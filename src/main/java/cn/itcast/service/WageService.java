package cn.itcast.service;

import cn.itcast.domain.Wage;

import java.util.List;

public interface WageService {
    //查询所有账户信息
    public List<Wage> findAll();

    //保存账户信息
    public void saveWage(Wage wage);

    //查询单个用户信息
    public Wage wage(Wage wage);

    //更新用户信息
    public void updateMsg(Wage wage);

    //删除用户信息
    public void deleteMsg(Wage wage);

}
