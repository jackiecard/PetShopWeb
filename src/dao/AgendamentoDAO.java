package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import model.Agendamento;

	public interface AgendamentoDAO {

		public void save(Agendamento x) throws SQLException;
		public void delete(int id) throws SQLException;
		public ArrayList<Agendamento> list() throws SQLException;
		public ArrayList<Agendamento> search(Date data) throws SQLException;
		public Agendamento find(int id) throws SQLException;

}
