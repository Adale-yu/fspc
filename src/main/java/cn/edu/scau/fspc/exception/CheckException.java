package cn.edu.scau.fspc.exception;

public class CheckException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	public CheckException(){
		super();
	}
	
	
	public CheckException(String message){
		super(message);
	}
	
	public CheckException(Throwable cause){
		super(cause);
	}
	
	public CheckException(String message,Throwable cause){
		super(message,cause);
	}

	public CheckException(String message,Throwable cause,boolean enableSuppression,boolean writableStackTrace){
		super(message,cause,enableSuppression,writableStackTrace);
	}
	
	
}
