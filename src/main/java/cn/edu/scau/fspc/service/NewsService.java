package cn.edu.scau.fspc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.edu.scau.fspc.entity.News;
import cn.edu.scau.fspc.exception.CheckException;

@Service
public interface NewsService {

	public List<News> load();

	public News checkDetail(String title);

	public void addNews(News news)  throws CheckException ;

	public void delete(String title);


}
