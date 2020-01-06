package cn.itcast.service.impl;

import cn.itcast.dao.AdminDao;
import cn.itcast.domain.Admin;
import cn.itcast.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceimpl implements AdminService {

    @Autowired
    private AdminDao adminDao;

    @Override
    public List<Admin> findAll() {
        return adminDao.findAll();
    }

    @Override
    public void saveAdmin(Admin admin) {
        adminDao.saveAdmin(admin);
    }

    @Override
    public Admin admin(Admin admin) {
        return adminDao.admin(admin);
    }

    @Override
    public void updateMsg(Admin admin) {
        adminDao.updateMsg(admin);
    }

    @Override
    public void deleteMsg(Admin admin) {
        adminDao.deleteMsg(admin);
    }
}
