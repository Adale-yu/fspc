package cn.edu.scau.fspc.service;

import org.springframework.stereotype.Service;

import cn.edu.scau.fspc.dto.Page;
import cn.edu.scau.fspc.entity.News;

@Service
public interface PageService {
	
	public Page<News> getPage(int current,String type,int size,String author);
}
