package com.consistent.cumpleanos.models;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.MonthDay;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Date;

public class Cumpleanos {
	
	private String date;
	private String zona;
	private String format;
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getZona() {
		return zona;
	}
	public void setZona(String zona) {
		this.zona = zona;
	}
	public String getFormat() {
		return format;
	}
	public void setFormat(String format) {
		this.format = format;
	}
	public Cumpleanos(String date, String zona, String format) {
		super();
		this.date = date;
		this.zona = zona;
		this.format = format;
	}
	
	public Cumpleanos() {
		this.date = "";
		this.zona = "";
		this.format = "";
	}
	
	public Boolean isBirthday() {
		SimpleDateFormat dateFormat = new SimpleDateFormat(format);
		dateFormat.setLenient(false);
		try {
			Calendar calendar = Calendar.getInstance();
			Date fecha = dateFormat.parse(date);
			ZoneId zone = ZoneId.of(zona);
			LocalDate today = LocalDate.now(zone);
			calendar.setTime(fecha);
			int dia = calendar.get(Calendar.DAY_OF_MONTH);
			int mes = calendar.get(Calendar.MONTH)+1;
			int ano = calendar.get(Calendar.YEAR);
			LocalDate birthDate = LocalDate.of( ano , mes , dia );
			MonthDay fechaCumpleanos = MonthDay.from(birthDate);
			MonthDay fechaActual = MonthDay.from(today);
			boolean cumpleAnos = fechaCumpleanos.equals(fechaActual);
			return cumpleAnos;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}
	
}
