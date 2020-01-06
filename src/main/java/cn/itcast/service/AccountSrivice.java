package cn.itcast.service;

import cn.itcast.domain.Account;

import java.util.List;

public interface AccountSrivice {
    //查询所有账户信息
    public List<Account> findAll();

    //保存账户信息
    public void saveAccount(Account account);

    //查询单个用户信息
    public Double login(Account account);

    //更新用户信息
    public void updateMsg(Account account);

    //删除用户信息
    public void deleteMsg(Account account);
}
