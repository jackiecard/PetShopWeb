package model;

import java.sql.SQLException;
import java.util.Date;

import dao.AnimalMySQL;

public class Agendamento {

	private Date data;
	private double valor;
	private int id;
	private int animal_id;
	private String tipo;
	// Tipos: banho; tosa.

	public Agendamento(Date d, int animal_id){
		// Método verificador de datas já usadas
		// Horários de seg-sab
		// 
		setData(d);
		setAnimal_id(animal_id);
	}
	
	public Agendamento(){
	}
	
	public String toString(){
		AnimalMySQL anim;
		String srt = "";
		try {
			anim = new AnimalMySQL();
			srt += "Animal: " + anim.find(getAnimal_id()).getNome() +
					"Data: " + getData() +
					"Tipo: "  + getTipo() +
					"Valor: R$" + getValor();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return srt;
	}
	
	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public int getAnimal_id() {
		return animal_id;
	}

	public void setAnimal_id(int animal_id) {
		this.animal_id = animal_id;
	}
	
}
