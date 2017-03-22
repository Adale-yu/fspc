package cn.edu.scau.fspc.dto;

import java.util.List;

public class Page<T> {
	private int current = 1;	//当前页面
	private int start = 0;		//当前页面第一个数据编号
	private int size = 8;		//每页大小
	private int code;			//编号
	private String type;		//类型
	private String title;		//标题
	private List<T> target;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getCurrent() {
		return current;
	}
	public void setCurrent(int current) {
		this.current = current;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public List<T> getTarget() {
		return target;
	}
	public void setTarget(List<T> target) {
		this.target = target;
	}
	
	
}
