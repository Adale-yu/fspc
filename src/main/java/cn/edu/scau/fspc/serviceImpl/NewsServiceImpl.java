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
			throw new CheckException("���ڸ�ʽ����");
		}
		if(news.getAuthor().equals("")||news.getContent().equals("")||news.getSummarization().equals("")||news.getTitle().equals("")){
			throw new CheckException("���⣬���ߣ����ݣ���鲻��Ϊ�գ�");
		}
		
		newsDao.addNews(news);
		
	}
	
	//�ж��ַ����Ƿ�Ϊ��ȷ�����ڸ�ʽ
	public static boolean isValidDate(News news) {
	      boolean convertSuccess=true;
	      		// ָ�����ڸ�ʽΪ��λ��/��λ�·�/��λ���ڣ�ע��yyyy/MM/dd���ִ�Сд��ע��/ �� -��ʹ�ã���Ӧ����
	       SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	       try {
	    	   // ����lenientΪfalse. ����SimpleDateFormat��ȽϿ��ɵ���֤���ڣ�����2007/02/29�ᱻ���ܣ���ת����2007/03/01
	          format.setLenient(false);
	          format.parse(news.getDate());
	       } catch (ParseException e) {
	    	   // e.printStackTrace();
	    	   // ���throw java.text.ParseException����NullPointerException����˵����ʽ����
	           convertSuccess=false;
	       } 
	       return convertSuccess;
	}

}
