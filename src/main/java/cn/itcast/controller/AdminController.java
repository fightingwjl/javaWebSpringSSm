package cn.itcast.controller;

import cn.itcast.domain.Admin;
import cn.itcast.service.AdminService;
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
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService adminService;


    @RequestMapping("/findAll")
    public String findAll(Model model){
        System.out.println("wage表现层：查询所有账户...");
        //调用业务层service的方法
        List<Admin> listAdmin = adminService.findAll();
        model.addAttribute("list",listAdmin);
        return "listAdmin";
    }

    //保存
    @RequestMapping(value = "/save")
    public void save(Admin admin, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("保存成功...");
        System.out.println(admin);
        adminService.saveAdmin(admin);
        //重定向 跳转到所有的用户信息页面 保存时注意一定要登录表中有这个工号 不然是没用的
        response.sendRedirect(request.getContextPath()+"/admin/findAll");

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
    public void updateMsg( Admin admin, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("wage表现层：开始更新信息...");
        adminService.updateMsg(admin);
        response.sendRedirect(request.getContextPath()+"/admin/findAll");
    }

    //删除信息
    @RequestMapping("/deleteMsg")
    public void deleteMsg(Admin admin, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("表现层：开始删除信息...");
        adminService.deleteMsg(admin);
        response.sendRedirect(request.getContextPath()+"/admin/findAll");
    }

    //单个信息
    @RequestMapping("/admin")
    @ResponseBody
    public void wage( Admin admin, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("admin表现层：查询单个信息...");
        System.out.println(admin.getSno());
        Admin testAdmin = adminService.admin(admin);
        System.out.println(testAdmin);
    }
}
