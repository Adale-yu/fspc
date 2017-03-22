package cn.edu.scau.fspc.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.fspc.dto.Page;
import cn.edu.scau.fspc.entity.Security;
import cn.edu.scau.fspc.service.SecurityService;


@Controller
@RequestMapping("/security")
public class SecurityController {
	@Autowired
	public  SecurityService secu;
	
	
	/*发布医疗保障信息*/
	@RequestMapping("/add")
	public @ResponseBody String add(Security security){
		secu.add(security);
		
		return "1";
	}
	
	@RequestMapping("/page")
	public @ResponseBody Page<Security> page(int current,int start,String type,String title){
		Page<Security> page = new Page<Security>();
		page.setCurrent(current);
		page.setStart(start);
		page.setTitle(title);
		page.setType(type);
		
		page = secu.page(page);
		
		return page;
	}
	
	/*根据标题查询一条新闻*/
	@RequestMapping(value = "/checkone")
	public @ResponseBody Security checkone(Model model,String name){
		Security security = secu.checkone(name);
		model.addAttribute("security", security);
		
		return security;
	}
	
	/*更新一条新闻*/
	@RequestMapping(value = "/update")
	public @ResponseBody String updateone(Security security){
		System.out.print(security.getName());
		System.out.print("鱼鱼鱼鱼鱼u鱼鱼鱼鱼鱼");
		secu.updateone(security);;
		
		return "1";
	}
	
	
	
	/*删除一条新闻*/
	@RequestMapping(value = "/delete-securityinfo")
	public @ResponseBody String deleteone(int securityid){
		secu.deleteone(securityid);	
		return "ok";
	}
	
	
	/*按名字模糊查询*/
	@RequestMapping(value = "/search")
	public @ResponseBody List<Security> search(String name){
		List<Security> securitys = secu.search(name);
	
		return securitys;
	}
	
	/*添加一条新闻*/
	@RequestMapping(value = "/save")
	public @ResponseBody String save(Model model,Security security){
		secu.save(security);
		
		model.addAttribute("securityinfos", security);		
		return "1";
	}
	
	
	/*从数据库查询所有数据*/
	@RequestMapping(value = "/findall")
	public @ResponseBody List<Security> findall(Model model){
		List<Security> security = secu.findall();
		model.addAttribute("security", security);
		return security;
	}

	
	/*带参数跳转到查看一条新闻页面*/
	@RequestMapping(value = "check-securityinfo")
	public String checkinfo(HttpServletRequest request){
		String param = request.getParameter("securityid");
			
		request.setAttribute("securityid", param);
		return "check-securityinfo";
	}

	/*带参数跳转到修改新闻页面*/
	@RequestMapping(value = "/edit-securityinfo")
	public String editinfo(HttpServletRequest request){
		String param = request.getParameter("securityid");		
		request.setAttribute("securityid",param);
		
		return "edit-securityinfo";
	}
	
	/*跳转到编辑页面*/
	@RequestMapping("edit-security")
	public String editsecurity(Model model){
		return "edit-security";
	}

	/*跳转到新闻导航页面*/
	@RequestMapping("check-security")
	public String checksecurity(Model model){
		return "check-security";
	}
	
	/*跳转到新闻导航页面*/
	@RequestMapping("release-security")
	public String releasesecurity(Model model){
		return "releasesecurity";
	}
	
}
