package cn.edu.scau.fspc.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.fspc.dao.PageDao;
import cn.edu.scau.fspc.dto.Page;
import cn.edu.scau.fspc.entity.News;
import cn.edu.scau.fspc.service.PageService;

@Service
public class PageServiceImpl implements PageService {
	
	@Autowired
	public PageDao pageDao;
	
	public Page<News> getPage(int current,String type,int size,String author){
		Page<News> page = new Page<News>();
		page.setCurrent(current);
		page.setSize(size);
		page.setStart(5*current-5);
		page.setAuthor(author);
		page.setType(type);
		if(type.equals("所有类型")&&author.equals("所有作者")){	
			 page.setTarget(pageDao.getPage1(page));
			 if(pageDao.getSum1()%size == 0){
					page.setSum(pageDao.getSum1()/size);
				}
				else{
					page.setSum(pageDao.getSum1()/size+1);
				}
		}
		else if(type.equals("所有类型")&&!(author.equals("所有作者"))){
			page.setTarget(pageDao.getPage2(page));
			if(pageDao.getSum2(author)%size == 0){
				page.setSum(pageDao.getSum2(author)/size);
			}
			else{
				page.setSum(pageDao.getSum2(author)/size+1);
			}
		}
		else if(!type.equals("所有类型")&&author.equals("所有作者")){
			page.setTarget(pageDao.getPage3(page));
			if(pageDao.getSum3(type)%size == 0){
				page.setSum(pageDao.getSum3(type)/size);
			}
			else{
				page.setSum(pageDao.getSum3(type)/size+1);
			}
		}
		else{
			page.setTarget(pageDao.getPage4(page));
			if(pageDao.getSum4(type,author)%size == 0){
				page.setSum(pageDao.getSum4(type,author)/size);
			}
			else{
				page.setSum(pageDao.getSum4(type,author)/size+1);
			}
		}
			
		
		return page;
		
	}

}
