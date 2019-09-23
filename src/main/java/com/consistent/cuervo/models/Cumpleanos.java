package com.consistent.cuervo.models;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Cumpleanos {
	
	
	private static boolean isRangeDate(String format, String fecha , int range){
	SimpleDateFormat dateFormat = new SimpleDateFormat(format);
	dateFormat.setLenient(false);
	try {
		Date date = dateFormat.parse(fecha);
		Calendar currentDateAfter3Months = Calendar.getInstance();
		currentDateAfter3Months.add(Calendar.DAY_OF_MONTH, range);
		
		Calendar currentDateBefore3Months = Calendar.getInstance();
		currentDateBefore3Months.add(Calendar.DAY_OF_MONTH, -1);
		
		if(date.before(currentDateAfter3Months.getTime()) && date.after(currentDateBefore3Months.getTime()) ) {
			System.out.println("SI");
			return true;
		}else {
			System.out.println("NO");
			return false;
		}
	}catch (NullPointerException e) {
		System.out.println("Fecha nula");
		e.printStackTrace();
		// TODO: handle exception
	}catch (ParseException e) {
		// TODO: handle exception
		System.out.println("Viene vacia la fecha");
		e.printStackTrace();
	}catch (Exception e) {
		// TODO: handle exception
		System.out.println(e.getMessage());
		e.printStackTrace();
	}
	return false;
}

}
