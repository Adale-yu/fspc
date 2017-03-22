package cn.edu.scau.fspc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.edu.scau.fspc.dto.Page;
import cn.edu.scau.fspc.entity.Security;

@Service
public interface SecurityService {
	/**
	 * service
	 */
	public void save(Security security);
	
	public Security checkone(String name);
	
	public List<Security> findall();
	
	public void updateone(Security security);
	
	public void deleteone(int securityid);
	
	public List<Security> search(String name);
	
	public void add(Security security);
	
	public Page<Security> page(Page<Security> page);
	
}
