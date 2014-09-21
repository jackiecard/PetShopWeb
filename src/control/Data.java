package control;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class Data {

	public Data(){
	}
	
	public String converta(Date dt){
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String convertido = sdf.format(dt);
		return convertido;
	}
	
	public Date convertaDeString(String dt, String hora){
		int dia = Integer.parseInt(dt.substring(0, dt.indexOf('/')));
		int mes = Integer.parseInt(dt.substring(dt.indexOf('/') + 1, dt.lastIndexOf('/')));
		int ano = Integer.parseInt(dt.substring(dt.lastIndexOf('/') + 1, dt.length()));
		int horaH = Integer.parseInt(hora.substring(0, hora.indexOf(':')));
		int minutoH = Integer.parseInt(hora.substring(hora.indexOf(':') + 1, hora.length()));
		
		Calendar c = GregorianCalendar.getInstance();
		c.set(ano, (mes - 1), dia, horaH, minutoH);
		
		return c.getTime();
	}
	
}
