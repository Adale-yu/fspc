package cn.edu.scau.fspc.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.fspc.dao.LoginDao;
import cn.edu.scau.fspc.entity.Login;
import cn.edu.scau.fspc.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	public LoginDao loginDao;
	
	@Override
	public int checkLogin(String username,String password){
		Login loginEntity = loginDao.getLoginDao(username);		
	
		if(loginEntity == null){
			return 1;	//返回1提示用户名不存在；
		}
		else if(loginEntity.getAuthority()==0){
			return 3;	//返回3提示用户未审核通过；
		}
		else if(!password.equals(loginEntity.getPassword())){
			return 2;	//返回2提示密码错误；
		}
		else
			return 0;		
		//返回0提示成功登陆；
	}

	@Override
	public int checkUsernameExist(String username) {
		String username2 = loginDao.selectUsername(username);
		System.out.println(username2);
		if(username2 == null){
			return 0;	//返回0表示不存在；
		}
		else		
			return 1;	//返回1表示数据库已存在用户;
	}

	@Override
	public void signup(String usernamesignup, String emailsignup,
			String passwordsignup) {
		Login loginEntity = new Login();
		loginEntity.setAuthority(0);
		loginEntity.setEmail(emailsignup);
		loginEntity.setPassword(passwordsignup);
		loginEntity.setUsername(usernamesignup);
		
		loginDao.signup(loginEntity);
	}

}
