package dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import model.Agendamento;

public class AgendamentoMySQL extends MySQL implements AgendamentoDAO {

		
		public AgendamentoMySQL() throws SQLException {
			super();
		}
		
		public void save(Agendamento x) throws SQLException {
			if(x.getId() == 0) {
				String insertSQL = "INSERT INTO agendamento(data_agendamento, tipo, valor, animal_id) "
						+ "VALUES(?, ?, ?, ?)";	
				PreparedStatement preparedStatement = con.prepareStatement(insertSQL);
				preparedStatement.setDate(1, new Date(x.getData().getTime()));
				preparedStatement.setString(2, x.getTipo());
				preparedStatement.setFloat(3, x.getValor());
				preparedStatement.setInt(4, x.getAnimal_id());
				preparedStatement.executeUpdate();
			} else {
				String updateSQL = "UPDATE agendamento "
						+ "SET data_agendamento=?, tipo=?, valor=?, animal_id=?"
						+ "WHERE id = ?";	
				PreparedStatement preparedStatement = con.prepareStatement(updateSQL);
				preparedStatement.setDate(1, new Date(x.getData().getTime()));
				preparedStatement.setString(2, x.getTipo());
				preparedStatement.setFloat(3, x.getValor());
				preparedStatement.setInt(4, x.getAnimal_id());
				preparedStatement.setInt(5, x.getId());
				preparedStatement.executeUpdate();
			}
		}
		
		public void delete(int id) throws SQLException {
			String deleteSQL = "DELETE FROM agendamento WHERE id = ?";
			PreparedStatement preparedStatement = con.prepareStatement(deleteSQL);
			preparedStatement.setInt(1, id);
			preparedStatement.executeUpdate();
		}
		
		public ArrayList<Agendamento> list() throws SQLException {
			String selectSQL = "SELECT * FROM agendamento";
			// O PreparedStatement permite inserir parametros nas consultas SQL.
			PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
			ResultSet rs = preparedStatement.executeQuery();
			ArrayList<Agendamento> lh = new ArrayList<>();
			while (rs.next()) {
				lh.add(populateAgenda(rs));
			}
			return lh;
		}
		
		// Procura por determinada data.
		public ArrayList<Agendamento> search(java.util.Date data) throws SQLException {
			String selectSQL = "SELECT * FROM agendamento WHERE data_agendamento LIKE ?";
			// O PreparedStatement permite inserir parametros nas consultas SQL.
			PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
			preparedStatement.setString(1, "%"+data+"%");
			ResultSet rs = preparedStatement.executeQuery();
			ArrayList<Agendamento> lh = new ArrayList<>();
			while(rs.next()) {
				lh.add(populateAgenda(rs));
			}
			return lh;
		}
		
		public ArrayList<Agendamento> search(java.util.Date data, int inicio, int limite) throws SQLException {
			String selectSQL = "SELECT * FROM agendamento WHERE data_agendamento LIKE ? LIMIT ?, ? ORDER BY nome";
			// O PreparedStatement permite inserir parametros nas consultas SQL.
			PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
			preparedStatement.setString(1, "%"+data+"%");
			preparedStatement.setInt(2, inicio);
			preparedStatement.setInt(3, limite);
			ResultSet rs = preparedStatement.executeQuery();
			ArrayList<Agendamento> lh = new ArrayList<>();
			while(rs.next()) {
				lh.add(populateAgenda(rs));
			}
			return lh;
		}
		
		public Agendamento find(int id) throws SQLException {
			String selectSQL = "SELECT * FROM agendamento WHERE id = ?";
			// O PreparedStatement permite inserir parametros nas consultas SQL.
			PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
			preparedStatement.setInt(1, id);
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next()) {
				return populateAgenda(rs);
			}
			return null;
		}
		
		private Agendamento populateAgenda(ResultSet rs) throws SQLException {
			Agendamento x = new Agendamento();
			x.setId(rs.getInt("id"));
			x.setData(rs.getDate("data_agendamento"));
			x.setTipo(rs.getString("tipo"));
			x.setValor(rs.getFloat("valor"));
			x.setAnimal_id(rs.getInt("animal_id"));
			return x;
		}

}
