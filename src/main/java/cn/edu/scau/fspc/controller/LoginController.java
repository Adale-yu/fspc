package cn.edu.scau.fspc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.fspc.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	public LoginService loginservice;
	
	@RequestMapping("/checklogin")
	public  @ResponseBody String login(String username,String password){
		int flag = loginservice.checkLogin(username, password);
		if(flag == 1){
			return "NOTEXIST";
		}
		if(flag == 2){
			return "ERROR";
		}
		if(flag == 3){
			return "NOTCHECK";
		}
		
		return "OK";
	}
	
	@RequestMapping("/manageIndex")
	public String manageIndex(){
		return "manageIndex";
	}
	
	
	@RequestMapping("/checkUsernameExist")
	public @ResponseBody String checkUsernameExist(String username){
		int flag = loginservice.checkUsernameExist(username);
		
		System.out.println(flag);
		if(flag == 1){
			return "EXIST";
		}
		else
			return "NOTEXIST";
	}
	
	@RequestMapping("/signup")
	public String signup(String usernamesignup,String emailsignup,String passwordsignup){
		System.out.println(usernamesignup+emailsignup);
		loginservice.signup(usernamesignup,emailsignup,passwordsignup);
		
		return "redirect:/login.jsp";
	}
}
