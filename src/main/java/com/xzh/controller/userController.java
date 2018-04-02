package com.xzh.controller;


import com.xzh.model.User;
import com.xzh.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
@RequestMapping("/user")
   public class userController {

    @Resource
    private IUserService userService;
        @RequestMapping("login")
        public String login(){

            return "index";
        }
        @RequestMapping("/index")
        public String Login(Model model, @RequestParam("username") String username,@RequestParam("password") String password){
            System.err.println("Login执行了。。。。。。。。。。");
            System.out.println("username="+username+"password"+password);
            User usertemp=userService.findUsername(username,password);
            if (usertemp != null){
                return "success";
            }else {
               model.addAttribute("error","账号或密码输入错误");
                return "index";
            }

        }

    @ResponseBody
    @RequestMapping(value="queryByUser", method=RequestMethod.POST,produces="application/json;charset=UTF-8")
    public String register(User user,HttpServletRequest request,String username,String password) {
        System.out.println("register执行了/////////////////////");
        User user1 = userService.findUsername(username, password);
        if (user1 != null) {

            return "success";
        }else {
            return "success";
        }
    }
}