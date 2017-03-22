package cn.edu.scau.fspc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/manage")
public class ManageController {
	
	@RequestMapping("/index")
	public String index(){
		return "manageIndex";
	}
	
	@RequestMapping("/compileNews")
	public String compileNews(){
		return "compileNews";
	}
	
	@RequestMapping("/manageNews")
	public String manageNews(){
		return "manageNews";
	}
}
