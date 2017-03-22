package cn.edu.scau.fspc.dto;

import java.util.List;

public class Page<T> {
	private int current = 1;	//��ǰҳ��
	private int start = 0;		//��ǰҳ���һ�����ݱ��
	private int size = 8;		//ÿҳ��С
	private int code;			//���
	private String type;		//����
	private String title;		//����
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
