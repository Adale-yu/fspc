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
	
	
	/*����ҽ�Ʊ�����Ϣ*/
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
	
	/*���ݱ����ѯһ������*/
	@RequestMapping(value = "/checkone")
	public @ResponseBody Security checkone(Model model,String name){
		Security security = secu.checkone(name);
		model.addAttribute("security", security);
		
		return security;
	}
	
	/*����һ������*/
	@RequestMapping(value = "/update")
	public @ResponseBody String updateone(Security security){
		System.out.print(security.getName());
		System.out.print("����������u����������");
		secu.updateone(security);;
		
		return "1";
	}
	
	
	
	/*ɾ��һ������*/
	@RequestMapping(value = "/delete-securityinfo")
	public @ResponseBody String deleteone(int securityid){
		secu.deleteone(securityid);	
		return "ok";
	}
	
	
	/*������ģ����ѯ*/
	@RequestMapping(value = "/search")
	public @ResponseBody List<Security> search(String name){
		List<Security> securitys = secu.search(name);
	
		return securitys;
	}
	
	/*���һ������*/
	@RequestMapping(value = "/save")
	public @ResponseBody String save(Model model,Security security){
		secu.save(security);
		
		model.addAttribute("securityinfos", security);		
		return "1";
	}
	
	
	/*�����ݿ��ѯ��������*/
	@RequestMapping(value = "/findall")
	public @ResponseBody List<Security> findall(Model model){
		List<Security> security = secu.findall();
		model.addAttribute("security", security);
		return security;
	}

	
	/*��������ת���鿴һ������ҳ��*/
	@RequestMapping(value = "check-securityinfo")
	public String checkinfo(HttpServletRequest request){
		String param = request.getParameter("securityid");
			
		request.setAttribute("securityid", param);
		return "check-securityinfo";
	}

	/*��������ת���޸�����ҳ��*/
	@RequestMapping(value = "/edit-securityinfo")
	public String editinfo(HttpServletRequest request){
		String param = request.getParameter("securityid");		
		request.setAttribute("securityid",param);
		
		return "edit-securityinfo";
	}
	
	/*��ת���༭ҳ��*/
	@RequestMapping("edit-security")
	public String editsecurity(Model model){
		return "edit-security";
	}

	/*��ת�����ŵ���ҳ��*/
	@RequestMapping("check-security")
	public String checksecurity(Model model){
		return "check-security";
	}
	
	/*��ת�����ŵ���ҳ��*/
	@RequestMapping("release-security")
	public String releasesecurity(Model model){
		return "releasesecurity";
	}
	
}
