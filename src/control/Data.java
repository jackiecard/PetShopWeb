package control;

import java.util.Date;

public class Data {

	public Data(){
	}
	
	public String converta(Date dt){
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String convertido = sdf.format(dt);
		return convertido;
	}
	
}
