package cn.itcast.service.impl;

import cn.itcast.dao.LoginDao;
import cn.itcast.dao.WageDao;
import cn.itcast.domain.Advice;
import cn.itcast.domain.Login;
import cn.itcast.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("loginService")
public class LoginServiceimpl implements LoginService {

    @Autowired
    private LoginDao loginDao;


    @Override
    public List<Login> findAll() {
        return loginDao.findAll();
    }

    @Override
    public List<Advice> findAllAd() {
        return loginDao.findAllAd();
    }

    @Override
    public void saveLogin(Login login) {
         loginDao.saveLogin(login);
    }

    @Override
    public Login login(Login login) {
        return loginDao.login(login);
    }

    @Override
    public void updateMsg(Login login) {
        loginDao.updateMsg(login);
    }

    @Override
    public void updateAd(Advice advice) {
        loginDao.updateAd(advice);
    }

    @Override
    public void deleteMsg(Login login) {
        loginDao.deleteMsg(login);
    }
}
