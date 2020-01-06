package cn.itcast.service.impl;


import cn.itcast.dao.DepartDao;
import cn.itcast.domain.Depart;
import cn.itcast.domain.Staff;
import cn.itcast.domain.Wage;
import cn.itcast.service.DepartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("departService")
public class DepartServiceimpl implements DepartService{

    @Autowired
    private DepartDao departDao;


    @Override
    public List<Depart> findAll() {
        return departDao.findAll();
    }


    @Override
    public void saveDepart(Depart depart) {
        departDao.saveDepart(depart);
    }


    @Override
    public Depart depart(Staff staff) {
        return departDao.depart(staff);
    }


    @Override
    public void updateMsg(Depart depart) {
        departDao.updateMsg(depart);
    }


    @Override
    public void deleteMsg(Depart depart) {
        departDao.deleteMsg(depart);
    }
}
