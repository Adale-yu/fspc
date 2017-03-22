package cn.edu.scau.fspc.dao;

import cn.edu.scau.fspc.entity.Login;

public interface LoginDao {
	public Login getLoginDao(String username);

	public String selectUsername(String username);

	public void signup(Login loginEntity);
	

}
