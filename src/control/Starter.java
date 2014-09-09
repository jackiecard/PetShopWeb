package control;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import view.Ui;

import dao.AgendamentoMySQL;
import dao.DonoMySQL;
import dao.AnimalMySQL;
import model.Agendamento;
import model.Dono;
import model.Animal;

public class Starter {
	public static void main(String[] args) throws SQLException {
		Ui inter = new Ui();
		
		/*Dono d1 = new Dono("Jackie", "senha", "33433325", "Rua Guararema, n 353");
		DonoMySQL donoMy = new DonoMySQL();
		//donoMy.save(d1);
		int idDono = 0;
		ArrayList<Dono> don = donoMy.list();
		for (Dono dono : don) {
			System.out.println(dono.toString());
			idDono = dono.getId();
		}
		
		// Problema no d1.getId() - usando o valor "1" pra teste
		// Problema na data
		// Data: tratar o mês! (0-11)
		Calendar c = GregorianCalendar.getInstance();
		c.set(Calendar.YEAR, 1999);
		c.set(Calendar.MONTH, Calendar.MARCH);
		c.set(Calendar.DAY_OF_MONTH, 12);
		Animal g = new Animal("Fluffy", idDono, "persa", "longa", c.getTime(), "m", "gato");
		AnimalMySQL animal = new AnimalMySQL();
		animal.save(g);
		ArrayList<Animal> animals = animal.list();
		int idAnimal = 0;
		for (Animal anim : animals) {
			System.out.println(anim.toString());
			idAnimal = anim.getId();
		}
		
		
		Date data = new Date(2014, 11, 12);
		Agendamento agend = new Agendamento();
		AgendamentoMySQL agendMySQL = new AgendamentoMySQL();
		ArrayList<Agendamento> agendamentos = agendMySQL.list();
		for (Agendamento agendamento : agendamentos) {
			if(agendamento.getData().compareTo(data) == 0){
			}
			else{
				agend.setData(data);
				agend.setAnimal_id(idAnimal);
				agend.setTipo("tosa");
			}
		}
		for (Agendamento agendamento : agendamentos) {
				System.out.println(agendamento.toString());
		}*/
	}

}
