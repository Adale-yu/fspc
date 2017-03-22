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
			return 1;	//����1��ʾ�û��������ڣ�
		}
		else if(loginEntity.getAuthority()==0){
			return 3;	//����3��ʾ�û�δ���ͨ����
		}
		else if(!password.equals(loginEntity.getPassword())){
			return 2;	//����2��ʾ�������
		}
		else
			return 0;		
		//����0��ʾ�ɹ���½��
	}

	@Override
	public int checkUsernameExist(String username) {
		String username2 = loginDao.selectUsername(username);
		System.out.println(username2);
		if(username2 == null){
			return 0;	//����0��ʾ�����ڣ�
		}
		else		
			return 1;	//����1��ʾ���ݿ��Ѵ����û�;
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
