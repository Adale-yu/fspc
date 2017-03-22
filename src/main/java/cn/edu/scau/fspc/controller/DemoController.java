package cn.edu.scau.fspc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.scau.fspc.entity.Demo;
import cn.edu.scau.fspc.service.DemoService;

/**
 * Demo
 * @author good
 *
 */
@Controller
@RequestMapping("/demo")
public class DemoController {
	
	@Autowired
	private DemoService demoService;
	
	@RequestMapping("/hello")
	public String demo(Demo demo,Model model){
		
	//	demoService.saveDemo(demo);
		
	//	model.addAttribute("ll", demo);
		
		//System.out.println("success");
		
		return "medicalsecurity_manage";
	}
}
