package cn.itcast.controller;

import cn.itcast.dao.AccountDao;
import cn.itcast.domain.Account;
import cn.itcast.service.AccountSrivice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private AccountSrivice accountSrivice;

    @RequestMapping("/findAll")
    public String findAll(Model model){
        System.out.println("表现层：查询所有账户...");
        //调用业务层service的方法
        List<Account> list = accountSrivice.findAll();
        model.addAttribute("list",list);

        return "list";
    }

    //保存
    @RequestMapping("/save")
    public void save(Account account, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("保存成功...");
        accountSrivice.saveAccount(account);
        //重定向 跳转到所有的用户信息页面
        response.sendRedirect(request.getContextPath()+"/account/findAll");
        return;
    }

    //向登录页面跳转
    @RequestMapping("/toLogin")
    public String toLogin(){
        System.out.println("准备去登录页面");
        return "login";
    }

    //用户登录
    @RequestMapping("/login")
    public String login(Account account, HttpServletRequest request, HttpServletResponse response){
        System.out.println("表现层：开始查询...");
        Double money = accountSrivice.login(account);
        if(money.equals( account.getMoney())){
            return "loginSuccess";
        }
        else{
            return "loginFail";
        }
    }

    //更新信息
    @RequestMapping("/updateMsg")
    public void updateMsg(Account account, HttpServletRequest request, HttpServletResponse response){
        System.out.println("表现层：开始更新信息...");
        accountSrivice.updateMsg(account);
    }

    //删除信息
    @RequestMapping("/deleteMsg")
    public void deleteMsg(Account account, HttpServletRequest request, HttpServletResponse response){
        System.out.println("表现层：开始删除信息...");
        accountSrivice.deleteMsg(account);
    }


}
