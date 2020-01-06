package cn.itcast.service.impl;

import cn.itcast.dao.AccountDao;
import cn.itcast.domain.Account;
import cn.itcast.service.AccountSrivice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sun.security.util.AuthResources_it;

import java.util.List;

@Service("accountService")
public class AccountServiceImpl implements AccountSrivice {

    @Autowired
    private AccountDao accountDao;

    @Override
    public List<Account> findAll() {
        System.out.println("业务层：查询所有账户。。。");
        return accountDao.findAll();
    }

    @Override
    public void saveAccount(Account account) {
        System.out.println("业务层：保存所有账户。。。");
        accountDao.saveAccount(account);
    }

    @Override
    public Double login(Account account) {
        System.out.println("业务层：验证登录。。。");
        Double money = accountDao.login(account);
        System.out.println(money);
        return money;
    }

    @Override
    public void updateMsg(Account account) {
        System.out.println("业务层：更新信息。。。");
        accountDao.updateMsg(account);
    }

    @Override
    public void deleteMsg(Account account) {
        System.out.println("业务层：删除信息。。。");
        accountDao.deleteMsg(account);
    }
}
