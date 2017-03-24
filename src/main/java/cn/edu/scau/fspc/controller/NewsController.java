package cn.edu.scau.fspc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.fspc.dto.Page;
import cn.edu.scau.fspc.entity.News;
import cn.edu.scau.fspc.entity.Demo;
import cn.edu.scau.fspc.entity.Security;
import cn.edu.scau.fspc.exception.CheckException;
import cn.edu.scau.fspc.service.NewsService;
import cn.edu.scau.fspc.service.DemoService;

@Controller
@RequestMapping("/news")
public class NewsController {
	
	@Autowired
	public NewsService newsService;
	
	
	@RequestMapping("/load")
	public @ResponseBody List<News> load(Model model){
		List<News> news = newsService.load();
		model.addAttribute("news", news);
		
		return news;
	}
	
	@RequestMapping("/checkDetail")
	public @ResponseBody News checkDetail(String title){
		News comm = newsService.checkDetail(title);
		
		return comm;
	}
	
	@RequestMapping("/delete")
	public @ResponseBody String delete(String title){
		//newsService.delete(title);
		
		return "ok";
	}
	
	@RequestMapping("/addNews")
	public @ResponseBody String addNews(News news){
		
		try {
			newsService.addNews(news);
			return "OK!";
		} catch (CheckException e) {
			e.printStackTrace();
			return e.getMessage();
		}
		
	}
	
}
