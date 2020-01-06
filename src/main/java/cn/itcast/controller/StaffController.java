package cn.itcast.controller;


import cn.itcast.domain.Staff;
import cn.itcast.domain.Wage;
import cn.itcast.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/staff")
public class StaffController {
    @Autowired
    private StaffService staffService;

    @RequestMapping("/findAll")
    public String findAll(Model model){
        System.out.println("staff表现层：查询所有账户...");
        //调用业务层service的方法
        List<Staff> listStaff = staffService.findAll();
        model.addAttribute("list",listStaff);
        return "listStaff";
    }

    //保存
    @RequestMapping(value = "/save")
    public void save(Staff staff, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("保存成功...");
        System.out.println(staff);
        staffService.saveStaff(staff);
        //重定向 跳转到所有的用户信息页面 保存时注意一定要登录表中有这个工号 不然是没用的
        response.sendRedirect(request.getContextPath()+"/staff/findAll");

    }

    //向登录页面跳转
    @RequestMapping("/toLogin")
    public String toLogin(){
        System.out.println("准备去登录页面");
        return "login";
    }


    //更新信息
    @RequestMapping("/updateMsg")
    @ResponseBody
    public void updateMsg(Staff staff, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("wage表现层：开始更新信息...");
        System.out.println(staff.getSno() +"  "+staff.getSname());
        staffService.updateMsg(staff);
        response.sendRedirect(request.getContextPath()+"/staff/findAll");
    }

    //删除信息
    @RequestMapping("/deleteMsg")
    public void deleteMsg(Staff staff, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("表现层：开始删除信息...");
        staffService.deleteMsg(staff);
        response.sendRedirect(request.getContextPath()+"/staff/findAll");
    }

    //单个信息
    @RequestMapping("/staff")
    @ResponseBody
    public void staff( Staff staff, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("wage表现层：查询单个信息...");
        System.out.println(staff.getSno());
        Staff testStaff = staffService.staff(staff);
        System.out.println(testStaff);
    }
}
