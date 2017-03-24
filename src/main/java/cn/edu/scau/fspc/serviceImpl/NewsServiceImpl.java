package cn.edu.scau.fspc.serviceImpl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.fspc.dao.NewsDao;
import cn.edu.scau.fspc.entity.News;
import cn.edu.scau.fspc.exception.CheckException;
import cn.edu.scau.fspc.service.NewsService;

@Service
public class NewsServiceImpl implements NewsService{
	
	@Autowired
	NewsDao newsDao;
	
	public List<News> load(){
		
		return newsDao.load();
	}
	
	public News checkDetail(String title){
		return newsDao.checkDetail(title);
	}
	
	@Override
	public void delete(String title) {
		newsDao.delete(title);
		
	}

	@Override
	public void addNews(News news) throws CheckException{
		// TODO Auto-generated method stub
		if(!isValidDate(news)){
			throw new CheckException("日期格式错误！");
		}
		if(news.getAuthor().equals("")||news.getContent().equals("")||news.getSummarization().equals("")||news.getTitle().equals("")){
			throw new CheckException("标题，作者，内容，简介不能为空！");
		}
		
		newsDao.addNews(news);
		
	}
	
	//判断字符串是否为正确的日期格式
	public static boolean isValidDate(News news) {
	      boolean convertSuccess=true;
	      		// 指定日期格式为四位年/两位月份/两位日期，注意yyyy/MM/dd区分大小写；注意/ 和 -的使用，对应即可
	       SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	       try {
	    	   // 设置lenient为false. 否则SimpleDateFormat会比较宽松地验证日期，比如2007/02/29会被接受，并转换成2007/03/01
	          format.setLenient(false);
	          format.parse(news.getDate());
	       } catch (ParseException e) {
	    	   // e.printStackTrace();
	    	   // 如果throw java.text.ParseException或者NullPointerException，就说明格式不对
	           convertSuccess=false;
	       } 
	       return convertSuccess;
	}

}
