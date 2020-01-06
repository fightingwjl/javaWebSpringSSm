package cn.itcast.controller;

import cn.itcast.domain.Depart;
import cn.itcast.domain.Staff;
import cn.itcast.service.DepartService;
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
@RequestMapping("/depart")
public class DepartController {

    @Autowired
    private DepartService departService;

    @RequestMapping("/findAll")
    public String findAll(Model model){
        System.out.println("Depart表现层：查询所有账户...");
        //调用业务层service的方法
        List<Depart> listDepart = departService.findAll();
        model.addAttribute("list",listDepart);
        return "listDepart";
    }

    //保存
    @RequestMapping(value = "/save")
    public void save(Depart depart, HttpServletRequest request, HttpServletResponse response) throws  IOException {
        System.out.println("保存成功...");
        System.out.println(depart);
        departService.saveDepart(depart);
        //重定向 跳转到所有的用户信息页面 保存时注意一定要登录表中有这个工号 不然是没用的
        response.sendRedirect(request.getContextPath()+"/depart/findAll");

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
    public void updateMsg( Depart depart, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("Depart表现层：开始更新信息...");
        departService.updateMsg(depart);
        response.sendRedirect(request.getContextPath()+"/depart/findAll");
    }

    //删除信息
    @RequestMapping("/deleteMsg")
    public void deleteMsg(Depart depart, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("表现层：开始删除信息...");
        departService.deleteMsg(depart);
        response.sendRedirect(request.getContextPath()+"/depart/findAll");
    }

    //单个信息
    @RequestMapping("/depart")
    @ResponseBody
    public void Depart(Staff staff, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("Depart表现层：查询单个信息...");
        System.out.println(staff.getSno());
        Depart testDepart = departService.depart(staff);
        System.out.println(testDepart);
    }
}
