package cn.itcast.controller;


import cn.itcast.domain.Login;
import cn.itcast.domain.Wage;
import cn.itcast.service.WageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.rmi.transport.proxy.HttpReceiveSocket;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static cn.itcast.controller.LoginController.login1;

@Controller
@RequestMapping("/wage")
public class WageController {
    @Autowired
    private WageService wageService;

    @RequestMapping("/findAll")
    public String findAll(Model model){
        System.out.println("wage表现层：查询所有账户...");
        //调用业务层service的方法
        List<Wage> listWage = wageService.findAll();
        model.addAttribute("list",listWage);
        return "listwage";
    }

    //保存
    @RequestMapping(value = "/save")
    public void save(Wage wage, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("保存成功...");
        System.out.println(wage);
        wageService.saveWage(wage);
        //重定向 跳转到所有的用户信息页面 保存时注意一定要登录表中有这个工号 不然是没用的
        response.sendRedirect(request.getContextPath()+"/wage/findAll");

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
    public void updateMsg( Wage wage, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("wage表现层：开始更新信息...");
        wageService.updateMsg(wage);
        response.sendRedirect(request.getContextPath()+"/wage/findAll");
    }

    //删除信息
    @RequestMapping("/deleteMsg")
    public void deleteMsg(Wage wage, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("表现层：开始删除信息...");
        wageService.deleteMsg(wage);
        response.sendRedirect(request.getContextPath()+"/wage/findAll");
    }

    //单个信息
    @RequestMapping("/wage")
    public void wage(Wage wage1, Model model)  {
        System.out.println("wage表现层：查询单个信息...");
        System.out.println(wage1);
        Wage testWage  = wageService.wage(wage1);
        model.addAttribute("Wage",testWage);

    }
}
