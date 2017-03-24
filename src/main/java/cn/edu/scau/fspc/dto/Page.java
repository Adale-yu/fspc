package cn.edu.scau.fspc.dto;

import java.util.List;

public class Page<T> {
	private int current = 1;	//当前页面
	private int start = 0;		//当前页面第一个数据编号
	private int size;		//每页大小
	private int sum;			//总页数
	private String type;		//类型
	private String author;
	private List<T> target;
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
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public List<T> getTarget() {
		return target;
	}
	public void setTarget(List<T> target) {
		this.target = target;
	}
	
	
	
}
