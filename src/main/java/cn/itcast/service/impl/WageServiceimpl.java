package cn.itcast.service.impl;

import cn.itcast.dao.WageDao;
import cn.itcast.domain.Wage;
import cn.itcast.service.WageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("wageService")
public class WageServiceimpl implements WageService {

    @Autowired
    private WageDao wageDao;

    @Override
    public List<Wage> findAll() {
        return wageDao.findAll();
    }

    @Override
    public void saveWage(Wage wage) {
        wageDao.saveWage(wage);
    }

    @Override
    public Wage wage(Wage wage) {
        return wageDao.wage(wage);
    }

    @Override
    public void updateMsg(Wage wage) {
        wageDao.updateMsg(wage);
    }

    @Override
    public void deleteMsg(Wage wage) {
        wageDao.deleteMsg(wage);
    }
}
