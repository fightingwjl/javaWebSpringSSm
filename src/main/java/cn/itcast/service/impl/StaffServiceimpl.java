package cn.itcast.service.impl;


import cn.itcast.dao.StaffDao;
import cn.itcast.domain.Staff;
import cn.itcast.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("staffService")
public class StaffServiceimpl implements StaffService {

    @Autowired
    private StaffDao staffDao;

    @Override
    public List<Staff> findAll() {
        return staffDao.findAll();
    }

    @Override
    public void saveStaff(Staff staff) {
        staffDao.saveStaff(staff);
    }

    @Override
    public Staff staff(Staff staff) {
        return staffDao.staff(staff);
    }

    @Override
    public void updateMsg(Staff staff) {
        staffDao.updateMsg(staff);
    }

    @Override
    public void deleteMsg(Staff staff) {
        staffDao.deleteMsg(staff);
    }
}
