package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import control.Data;

import model.Animal;

public class AnimalMySQL extends MySQL implements AnimalDAO{

	Data data;
	
	public AnimalMySQL() throws SQLException {
		super();
		data = new Data();
	}
	
	public void save(Animal g) throws SQLException {
		if(g.getId() == 0) {
			String insertSQL = "INSERT INTO animal(nome, dono_id, raca, pelagem, porte, especie) "
					+ "VALUES(?, ?, ?, ?, ?, ?)";	
			PreparedStatement preparedStatement = con.prepareStatement(insertSQL);
			preparedStatement.setString(1, g.getNome());
			preparedStatement.setInt(2, g.getDono());
			preparedStatement.setString(3, g.getRaca());
			preparedStatement.setString(4, g.getPelagem());
			preparedStatement.setString(5, g.getPorte());
			preparedStatement.setString(6, g.getEspecie());
			
			preparedStatement.executeUpdate();
		} else {
			String updateSQL = "UPDATE animal "
					+ "SET nome=?, dono_id=?, raca=?, pelagem=?, porte=?, especie=?"
					+ "WHERE id = ?";	
			PreparedStatement preparedStatement = con.prepareStatement(updateSQL);
			preparedStatement.setString(1, g.getNome());
			preparedStatement.setInt(2, g.getDono());
			preparedStatement.setString(3, g.getRaca());
			preparedStatement.setString(4, g.getPelagem());
			preparedStatement.setString(5, g.getPorte());
			preparedStatement.setString(6, g.getEspecie());
			preparedStatement.setInt(7, g.getId());
			preparedStatement.executeUpdate();
		}
	}
	
	public void delete(int id) throws SQLException {
		String deleteSQL = "DELETE FROM animal WHERE id = ?";
		PreparedStatement preparedStatement = con.prepareStatement(deleteSQL);
		preparedStatement.setInt(1, id);
		preparedStatement.executeUpdate();
	}
	
	public ArrayList<Animal> list() throws SQLException {
		String selectSQL = "SELECT * FROM animal";
		// O PreparedStatement permite inserir parametros nas consultas SQL.
		PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
		ResultSet rs = preparedStatement.executeQuery();
		ArrayList<Animal> lh = new ArrayList<>();
		while (rs.next()) {
			lh.add(populateAnimal(rs));
		}
		return lh;
	}
	
	public ArrayList<Animal> search(String nome) throws SQLException {
		String selectSQL = "SELECT * FROM animal WHERE nome LIKE ?";
		// O PreparedStatement permite inserir parametros nas consultas SQL.
		PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
		preparedStatement.setString(1, "%"+nome+"%");
		ResultSet rs = preparedStatement.executeQuery();
		ArrayList<Animal> lh = new ArrayList<>();
		while(rs.next()) {
			lh.add(populateAnimal(rs));
		}
		return lh;
	}
	
	public ArrayList<Animal> search(String str, int inicio, int limite) throws SQLException {
		String selectSQL = "SELECT * FROM animal WHERE nome LIKE ? LIMIT ?, ? ORDER BY nome";
		// O PreparedStatement permite inserir parametros nas consultas SQL.
		PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
		preparedStatement.setString(1, "%"+str+"%");
		preparedStatement.setInt(2, inicio);
		preparedStatement.setInt(3, limite);
		ResultSet rs = preparedStatement.executeQuery();
		ArrayList<Animal> lh = new ArrayList<>();
		while(rs.next()) {
			lh.add(populateAnimal(rs));
		}
		return lh;
	}
	
	public Animal find(int id) throws SQLException {
		String selectSQL = "SELECT * FROM animal WHERE id = ?";
		// O PreparedStatement permite inserir parametros nas consultas SQL.
		PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
		preparedStatement.setInt(1, id);
		ResultSet rs = preparedStatement.executeQuery();
		if(rs.next()) {
			return populateAnimal(rs);
		}
		return null;
	}
	
	private Animal populateAnimal(ResultSet rs) throws SQLException {
		Animal g = new Animal();
		g.setId(rs.getInt("id"));
		g.setNome(rs.getString("nome"));
		g.setDono(rs.getInt("dono_id"));
		g.setRaca(rs.getString("raca"));
		g.setPelagem(rs.getString("pelagem"));
		g.setPorte(rs.getString("porte"));
		g.setEspecie(rs.getString("especie"));
		return g;
	}

}
