package cn.edu.scau.fspc.service;

import org.springframework.stereotype.Service;

import cn.edu.scau.fspc.entity.Login;

@Service
public interface LoginService {
	public int checkLogin(String username,String password);

	public int checkUsernameExist(String username);

	public void signup(String usernamesignup, String emailsignup,
			String passwordsignup);
	
}
