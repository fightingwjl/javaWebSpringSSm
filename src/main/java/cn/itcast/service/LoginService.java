package cn.itcast.service;

import cn.itcast.domain.Advice;
import cn.itcast.domain.Login;

import java.util.List;

public interface LoginService {
    //查询所有账户信息
    public List<Login> findAll();

    //查询所有账户信息
    public List<Advice> findAllAd();

    //保存账户信息
    public void saveLogin(Login login);

    //查询单个用户信息
    public Login login(Login login);

    //更新用户信息
    public void updateMsg(Login login);

    //更新用户信息
    public void updateAd(Advice advice);

    //删除用户信息
    public void deleteMsg(Login login);

}
