package cn.edu.scau.fspc.controller;

import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.fspc.dto.Page;
import cn.edu.scau.fspc.entity.News;
import cn.edu.scau.fspc.service.PageService;

@Controller
@RequestMapping("/manage")
public class ManageController {
	
	@Autowired
	private PageService pageService;
	
	@RequestMapping("/index")
	public String index(){
		return "manageIndex";
	}
	
	@RequestMapping("/compileNews")
	public String compileNews(){
		return "compileNews";
	}
	
	@RequestMapping("/manageNews")
	public String manageNews(Model model){
		Page<News> page = pageService.getPage(1, "所有类型", 5, "所有作者");	
		
		model.addAttribute("page", page);
		return "manageNews";
	}
	
	@RequestMapping("/page")
	public @ResponseBody Page<News> page(Model model,int current,String type,String author){
		Page<News> page = pageService.getPage(current, type, 5, "所有作者");	//5是每页显示个数；	
		model.addAttribute("page", page);	
		
		return page;
	}
}
