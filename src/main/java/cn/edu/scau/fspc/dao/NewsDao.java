package cn.edu.scau.fspc.dao;

import java.util.List;

import cn.edu.scau.fspc.entity.News;

public interface NewsDao {

	public List<News> load();

	public News checkDetail(String title);

	public void addNews(News news);

	public void delete(String title);

}
