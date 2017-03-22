package cn.edu.scau.fspc.dao;

import java.util.List;

import cn.edu.scau.fspc.dto.Page;
import cn.edu.scau.fspc.entity.Security;

public interface SecurityDao {
	
	public void save(Security security);

	public Security checkone(String name);
	
	public List<Security> findall();
	
	public void updateone(Security security);
	
	public void deleteone(int securityid);
	
	public List<Security> search(String name);
	
	public void add(Security security);
	
	public List<Security> page(Page<Security> page);
}
