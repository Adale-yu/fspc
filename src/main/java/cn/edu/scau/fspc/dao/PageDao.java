package cn.edu.scau.fspc.dao;

import java.util.List;

import cn.edu.scau.fspc.dto.Page;
import cn.edu.scau.fspc.entity.News;

public interface PageDao {

	public List<News> getPage2(Page<News> page);

	public List<News> getPage1(Page<News> page);

	public List<News> getPage3(Page<News> page);

	public List<News> getPage4(Page<News> page);

	public int getSum1();

	public int getSum2(String author);

	public int getSum3(String type);

	public int getSum4(String type, String author);

}
