package cn.itcast.service;

import cn.itcast.domain.Check1;

import java.util.List;

public interface Check1Service {
    //查询所有账户信息
    public List<Check1> findAll();

    //保存账户信息
    public void saveCheck1(Check1 check1);

    //查询单个用户信息
    public Check1 check1(Check1 check1);

    //更新用户信息
    public void updateMsg(Check1 check1);

    //删除用户信息
    public void deleteMsg(Check1 check1);

}
