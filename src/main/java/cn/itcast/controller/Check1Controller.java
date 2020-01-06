package cn.itcast.controller;


import cn.itcast.domain.Check1;
import cn.itcast.service.Check1Service;
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
@RequestMapping("/check1")
public class Check1Controller {

    @Autowired
    private Check1Service check1Service;

    @RequestMapping("/findAll")
    public String findAll(Model model){
        System.out.println("Check1表现层：查询所有账户...");
        //调用业务层service的方法
        List<Check1> listCheck1 = check1Service.findAll();
        model.addAttribute("list",listCheck1);
        return "listCheck1";
    }

    //保存
    @RequestMapping(value = "/save")
    public void save(Check1 check1, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("保存成功...");
        System.out.println(check1);
        check1Service.saveCheck1(check1);
        //重定向 跳转到所有的用户信息页面 保存时注意一定要登录表中有这个工号 不然是没用的
        response.sendRedirect(request.getContextPath()+"/check1/findAll");

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
    public void updateMsg( Check1 check1, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("Check1表现层：开始更新信息...");
        check1Service.updateMsg(check1);
        response.sendRedirect(request.getContextPath()+"/check1/findAll");
    }

    //删除信息
    @RequestMapping("/deleteMsg")
    public void deleteMsg(Check1 check1, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("表现层：开始删除信息...");
        check1Service.deleteMsg(check1);
        response.sendRedirect(request.getContextPath()+"/check1/findAll");
    }

    //单个信息
    @RequestMapping("/check1")
    @ResponseBody
    public void check1( Check1 check1, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("Check1表现层：查询单个信息...");
        System.out.println(check1.getSno());
        Check1 testCheck1 = check1Service.check1(check1);
        System.out.println(testCheck1);
    }

}
