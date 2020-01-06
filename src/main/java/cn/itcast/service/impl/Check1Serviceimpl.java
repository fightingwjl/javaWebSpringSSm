package cn.itcast.service.impl;


import cn.itcast.dao.Check1Dao;
import cn.itcast.domain.Check1;
import cn.itcast.service.Check1Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("check1Service")
public class Check1Serviceimpl implements Check1Service {

    @Autowired
    private Check1Dao check1Dao;

    @Override
    public List<Check1> findAll() {
        return check1Dao.findAll();
    }

    @Override
    public void saveCheck1(Check1 check1) {
        check1Dao.savecheck1(check1);
    }

    @Override
    public Check1 check1(Check1 check1) {
        return check1Dao.check1(check1);
    }



    @Override
    public void updateMsg(Check1 check1) {
        check1Dao.updateMsg(check1);
    }

    @Override
    public void deleteMsg(Check1 check1) {
        check1Dao.deleteMsg(check1);
    }
}
