package cn.edu.scau.fspc.serviceImpl;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.scau.fspc.entity.Demo;
import cn.edu.scau.fspc.service.DemoService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/spring-mybatis.xml"})
public class DemoServiceImplTest {
	
	private DemoService demoService; 
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Test
	public void test() {
		Demo demoEntity = new Demo();
		demoEntity.setDemo("test");
		demoService.saveDemo(demoEntity);
	}

}
