package cn.edu.scau.fspc.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.fspc.dao.SecurityDao;
import cn.edu.scau.fspc.dto.Page;
import cn.edu.scau.fspc.entity.Security;
import cn.edu.scau.fspc.service.SecurityService;

@Service
public class SecurityServiceImpl implements SecurityService {

	
	@Autowired
	SecurityDao securityDao;
	
	@Override
	public void save(Security security) {
		// TODO Auto-generated method stub
		securityDao.save(security);
	}

	public Security checkone(String name){
		return securityDao.checkone(name);
	}
	
	public List<Security> findall(){
		return securityDao.findall();
	}
	
	public void updateone(Security security){
		securityDao.updateone(security);
	}
	
	public void deleteone(int securityid){
		securityDao.deleteone(securityid);
	}
	
	public List<Security> search(String name){
		return securityDao.search(name);
	}
	
	public void add(Security security){
		if(security.getName()==null){
			
		}
		
		if(security.getContent()==null){
			
		}
		
		securityDao.add(security);
	}
	
	public Page<Security> page(Page<Security> page){
		if(page.getType()==""){
			page.setType(null);
		}
		if(page.getTitle()==""){
			page.setTitle(null);
		}
		page.setTarget(securityDao.page(page));
		
		return page;
	}
}
