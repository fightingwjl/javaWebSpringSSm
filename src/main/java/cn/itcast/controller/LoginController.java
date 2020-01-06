package cn.itcast.controller;


import cn.itcast.domain.*;
import cn.itcast.service.*;
import org.apache.ibatis.annotations.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.transform.Result;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/login")
public class LoginController {

    public Wage wagee;

    public Check1 check11;

    public Depart departt;

    public Staff staffs;

    //登录账户表
    @Autowired
    private LoginService loginService;

    //工资表
    @Autowired
    private WageService wageService;

    //考勤表
    @Autowired
    private Check1Service check1Service;

    //部门表
    @Autowired
    private DepartService departService;

    //管理员
    @Autowired
    private AdminService adminService;

    //员工
    @Autowired
    private StaffService staffService;

    public  static Login login1;

    @RequestMapping("/findAll")
    public String findAll(Model model){
        System.out.println("表现层：查询所有账户...");
        //调用业务层service的方法
        List<Login> listlogin = loginService.findAll();
        List<Staff> liststaff = staffService.findAll();
        List<Wage> listwage = wageService.findAll();
        List<Check1> listcheck = check1Service.findAll();
        List<Depart> listdepart = departService.findAll();
        List<Admin> listadmin = adminService.findAll();

        //所有表单信息
        model.addAttribute("list",listlogin);
        model.addAttribute("list1",liststaff);
        model.addAttribute("list2",listwage);
        model.addAttribute("list3",listcheck);
        model.addAttribute("list4",listdepart);
        model.addAttribute("list5",listadmin);


        //单个查询信息
        model.addAttribute( "wage",wagee);
        model.addAttribute( "check1",check11);
        model.addAttribute( "depart",departt);
        model.addAttribute( "staff",staffs);
        if(login1.isAdmin1()){
            return "loginAdmin";
        }else{
            return "loginSuccess";
        }

    }

    @RequestMapping("/modify")
    public String modify(Model model){
        if(login1.isAdmin1()){
            return "loginAdmin";
        }else{
            return "loginSuccess";
        }
    }

    //保存
    @RequestMapping(value = "/save1")
    @ResponseBody
    public Login save1(Login login, HttpServletRequest request, HttpServletResponse response) throws IOException {
        loginService.saveLogin(login);
        return login;

    }

    //向登录页面跳转
    @RequestMapping("/toLogin")
    public String toLogin(){
        System.out.println("准备去登录页面");
        return "login";
    }

    //向登录页面跳转
    @RequestMapping("/toAdvice")
    public String toAdvice(Model model){
        System.out.println("准备去建议页面");
        List<Advice> listadvice = loginService.findAllAd();
        model.addAttribute("list6",listadvice);

        return "advice";
    }

    //用户登录
    @RequestMapping("/login")
    public String login(Login login, HttpServletRequest request, HttpServletResponse response) throws IOException {


        System.out.println("表现层：开始查询...");
        if(login.getSno()== null || login.getPassword() == null){
            return "loginFail";
        }
        //进行权限的查询
        Login testlogin = loginService.login(login);
        if(testlogin.getPassword().equals( login.getPassword())){
            login1 = testlogin;
            response.sendRedirect(request.getContextPath()+"/login/findAll");
            return "loginAdmin";  //修改处  这儿不起作用 写上只是为了有返回值
        }
        else{
            return "loginFail";
        }
    }

    //更新信息
    @RequestMapping("/updateMsg")
    @ResponseBody
    public Login updateMsg( Login login, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("表现层：开始更新信息...");
        System.out.println(login1.isAdmin1());
        if(login1.isAdmin1()){
            loginService.updateMsg(login);
            return login;
        }else {
            login.setSno(login1.getSno());
            loginService.updateMsg(login);
            return login;
        }
    }

    //更新意见
    @RequestMapping("/updateAd")
    @ResponseBody
    public Advice updateAd( Advice advice, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("意见");
        advice.setSno(login1.getSno());
        System.out.println(advice.getSno());
        System.out.println(advice.getAdvice1());
        loginService.updateAd(advice);
        return advice;
    }

    //删除信息
    @RequestMapping("/deleteMsg")
    @ResponseBody
    public Login deleteMsg(Login login, HttpServletRequest request, HttpServletResponse response){
        System.out.println("表现层：开始删除信息...");
        loginService.deleteMsg(login);
        return login;
    }

    @RequestMapping("/wage")
    public String wage(Wage wage1, HttpServletResponse response, HttpServletRequest request) throws IOException {
        System.out.println("login表现层：查询单个信息...");
        if(wage1.getSno().equals(login1.getSno())){
            Wage testWage  = wageService.wage(wage1);
            wagee = testWage;
            System.out.println(wagee);
            response.sendRedirect(request.getContextPath()+"/login/findAll");
            return null;
        }
        return "searFail";
    }

    //单个信息
    @RequestMapping("/check1")
    public String check1(Check1 check1, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("Check1表现层：查询单个信息...");
        if(check1.getSno().equals(login1.getSno())){
            Check1 testCheck1 = check1Service.check1(check1);
            check11 = testCheck1;
            System.out.println(check11);
            response.sendRedirect(request.getContextPath()+"/login/findAll");
            return null;
        }
       return "searFail";
    }

    //单个信息
    @RequestMapping("/depart")
    @ResponseBody
    public String Depart( Staff staff, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("Depart表现层：查询单个信息...");
        if(staff.getSno().equals(login1.getSno())){
            Depart testDepart = departService.depart(staff);
            System.out.println(testDepart);
            departt =  testDepart;
            response.sendRedirect(request.getContextPath()+"/login/findAll");
            return null;
        }
       return "searFail";
    }

    //单个信息
    @RequestMapping("/staff")
    public String Staff( Staff staff, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("wage表现层：查询单个信息...");
        System.out.println(staff.getSno());
        System.out.println(login1.getSno());
        if(staff.getSno().equals(login1.getSno())){
            Staff testStaff = staffService.staff(staff);
            staffs = testStaff;
            System.out.println(testStaff);
            response.sendRedirect(request.getContextPath()+"/login/findAll");
            return null;

        }
        return "searFail";
    }

    // 员工信息的增删改
    //更新员工信息
    @RequestMapping("/updateSMsg")
    @ResponseBody
    public Staff updateStaff(Staff staff, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("wage表现层：开始更新信息...");
        System.out.println(staff.getSno() +"  "+staff.getSname());
        if(staff.getSno() == null || staff.getSname() == null){
            return null;
        }
        staffService.updateMsg(staff);
       return staff;
    }

    //删除员工信息
    @RequestMapping("/deleteSMsg")
    @ResponseBody
    public Staff deleteStaff(Staff staff, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("表现层：开始删除信息...");
        if(staff.getSno() == null){
            return null;
        }
        staffService.deleteMsg(staff);
        return staff;
    }

    //新增员工信息
    @RequestMapping("/Staff")
    @ResponseBody
    public Staff staff(Staff staff, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("保存成功...");
        System.out.println(staff);
        if (staff.getSno() == null || staff.getSname() == null || staff.getDno() == null || staff.getSage() == null
                || staff.getSedu() == null || staff.getSemail() == null || staff.getSposition() ==null
                || staff.getStel() == null  || staff.getSsex() == null) {
            return null;
        }
        staffService.saveStaff(staff);
        return staff;
    }

    //工资信息的增删改
    //更新工资表
    @RequestMapping("/updateWage")
    @ResponseBody
    public Wage updateWage( Wage wage, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("wage表现层：开始更新信息...");
        if (wage.getSno() == null || wage.getWactual() == 0.0 || wage.getWbasic() == 0.0 || wage.getWpenalty() == 0) {
            return null;
        }
        wageService.updateMsg(wage);
        return wage;
    }

    //删除信息
    @RequestMapping("/deleteWage")
    @ResponseBody
    public Wage deleteWage(Wage wage, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("表现层：开始删除信息...");
        if (wage.getSno() == null){
            return null;
        }
        wageService.deleteMsg(wage);
        return wage;
    }
    //保存
    @RequestMapping(value = "/saveWage")
    @ResponseBody
    public Wage saveWage(Wage wage, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("保存成功...");
        System.out.println(wage);
        if (wage.getSno() == null || wage.getWactual() == 0.0 || wage.getWbasic() == 0.0 || wage.getWpenalty() == 0) {
            return null;
        }
        wageService.saveWage(wage);
        //重定向 跳转到所有的用户信息页面 保存时注意一定要登录表中有这个工号 不然是没用的
        return wage;

    }

    //考勤信息的增删改
    //更新考勤信息
    //保存
    @RequestMapping(value = "/saveCheck1")
    @ResponseBody
    public Check1 saveCheck1(Check1 check1, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("保存成功...");
        System.out.println(check1);
        if (check1.getSno() == null || check1.getCabsence() == null || check1.getCregular() == null || check1.getCtardy() == null) {
            return null;
        }
        check1Service.saveCheck1(check1);
        //重定向 跳转到所有的用户信息页面 保存时注意一定要登录表中有这个工号 不然是没用的
        return check1;
    }


    //更新信息
    @RequestMapping("/updateCheck1")
    @ResponseBody
    public Check1 updateCheck1( Check1 check1, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("Check1表现层：开始更新信息...");
        if (check1.getSno() == null || check1.getCabsence() == null || check1.getCregular() == null || check1.getCtardy() == null) {
            return null;
        }
        check1Service.updateMsg(check1);
        return check1;
    }

    //删除信息
    @RequestMapping("/deleteCheck1")
    @ResponseBody
    public Check1 deleteCheck1(Check1 check1, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("表现层：开始删除信息...");
        if(check1.getSno() == null){
            return null;
        }
        check1Service.deleteMsg(check1);
        return check1;
    }

    //部门信息的增删改
    //更新部门信息
    //保存
    @RequestMapping("/saveDepart")
    @ResponseBody
    public Depart saveDepart(Depart depart, HttpServletRequest request, HttpServletResponse response) throws  IOException {
        System.out.println("保存成功...");
        System.out.println(depart);
        if (depart.getDno() == null || depart.getDname() == null || depart.getSname() == null || depart.getSno() == null) {
            return null;
        }
        departService.saveDepart(depart);
        //重定向 跳转到所有的用户信息页面 保存时注意一定要登录表中有这个工号 不然是没用的
        return depart;

    }

    //更新信息
    @RequestMapping("/updateDepart")
    @ResponseBody
    public Depart updateDepart( Depart depart, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("Depart表现层：开始更新信息...");
        if (depart.getDno() == null || depart.getDname() == null || depart.getSname() == null || depart.getSno() == null) {
            return null;
        } else {
            departService.updateMsg(depart);
            return depart;
        }
    }

    //删除信息
    @RequestMapping("/deleteDepart")
    @ResponseBody
    public Depart deleteDepart(Depart depart, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("表现层：开始删除信息...");
        if (depart.getDno() == null) {
            return null;
        } else {
            departService.deleteMsg(depart);
            return depart;
        }
    }
}
