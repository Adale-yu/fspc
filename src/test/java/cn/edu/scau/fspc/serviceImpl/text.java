package cn.edu.scau.fspc.serviceImpl;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class text {
	public static boolean isValidDate(String str) {
	      boolean convertSuccess=true;
	      // ָ�����ڸ�ʽΪ��λ��/��λ�·�/��λ���ڣ�ע��yyyy/MM/dd���ִ�Сд��
	       SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	       try {
	    	   // ����lenientΪfalse. ����SimpleDateFormat��ȽϿ��ɵ���֤���ڣ�����2007/02/29�ᱻ���ܣ���ת����2007/03/01
	          format.setLenient(false);
	          format.parse(str);
	       } catch (ParseException e) {
	          // e.printStackTrace();
	// ���throw java.text.ParseException����NullPointerException����˵����ʽ����
	           convertSuccess=false;
	       } 
	       return convertSuccess;
	}
	
	
	public static void main(String argr[]){
		String date = "2015-03-06";
		
		if(isValidDate(date)){
			System.out.print("pk");
		}
		else{
			System.out.print("not!");
		}
		
	}
	
}
