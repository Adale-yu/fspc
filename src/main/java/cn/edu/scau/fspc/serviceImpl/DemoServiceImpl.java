package cn.edu.scau.fspc.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.fspc.dao.DemoDao;
import cn.edu.scau.fspc.entity.Demo;
import cn.edu.scau.fspc.service.*;

@Service
public class DemoServiceImpl implements DemoService {

	@Autowired
	private DemoDao demoDao;

	/**
	 * serviceImpl
	 */
	public void saveDemo(Demo demoEntity) {
		// TODO Auto-generated method stub
		System.out.println("ServiceGet");
		demoDao.save(demoEntity);
		
	}

}
