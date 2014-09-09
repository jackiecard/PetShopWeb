package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Dono;
import model.Animal;

public class DonoMySQL extends MySQL implements DonoDAO{
	
	public DonoMySQL() throws SQLException {
		super();
	}
	
	public void save(Dono x) throws SQLException {
		if(x.getId() == 0) {
			String insertSQL = "INSERT INTO dono(nome, senha, telefone, endereco) "
					+ "VALUES(?, ?, ?, ?)";	
			PreparedStatement preparedStatement = con.prepareStatement(insertSQL);
			preparedStatement.setString(1, x.getNome());
			preparedStatement.setString(2, x.getSenha());
			preparedStatement.setString(3, x.getTelefone());
			preparedStatement.setString(4, x.getEndereco());
			preparedStatement.executeUpdate();
		} else {
			String updateSQL = "UPDATE dono "
					+ "SET nome=?, senha=?, telefone=?, endereco=?"
					+ "WHERE id = ?";	
			PreparedStatement preparedStatement = con.prepareStatement(updateSQL);
			preparedStatement.setString(1, x.getNome());
			preparedStatement.setString(2, x.getSenha());
			preparedStatement.setString(3, x.getTelefone());
			preparedStatement.setString(4, x.getEndereco());
			preparedStatement.setInt(5, x.getId());
			preparedStatement.executeUpdate();
		}
	}
	
	public void delete(int id) throws SQLException {
		String deleteSQL = "DELETE FROM dono WHERE id = ?";
		PreparedStatement preparedStatement = con.prepareStatement(deleteSQL);
		preparedStatement.setInt(1, id);
		preparedStatement.executeUpdate();
	}
	
	public ArrayList<Dono> list() throws SQLException {
		String selectSQL = "SELECT * FROM dono";
		// O PreparedStatement permite inserir parametros nas consultas SQL.
		PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
		ResultSet rs = preparedStatement.executeQuery();
		ArrayList<Dono> lh = new ArrayList<>();
		while (rs.next()) {
			lh.add(populateDono(rs));
		}
		return lh;
	}
	
	public ArrayList<Dono> search(String nome) throws SQLException {
		String selectSQL = "SELECT * FROM dono WHERE nome LIKE ?";
		// O PreparedStatement permite inserir parametros nas consultas SQL.
		PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
		preparedStatement.setString(1, "%"+nome+"%");
		ResultSet rs = preparedStatement.executeQuery();
		ArrayList<Dono> lh = new ArrayList<>();
		while(rs.next()) {
			lh.add(populateDono(rs));
		}
		return lh;
	}
	
	public ArrayList<Dono> search(String str, int inicio, int limite) throws SQLException {
		String selectSQL = "SELECT * FROM dono WHERE nome LIKE ? LIMIT ?, ? ORDER BY nome";
		// O PreparedStatement permite inserir parametros nas consultas SQL.
		PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
		preparedStatement.setString(1, "%"+str+"%");
		preparedStatement.setInt(2, inicio);
		preparedStatement.setInt(3, limite);
		ResultSet rs = preparedStatement.executeQuery();
		ArrayList<Dono> lh = new ArrayList<>();
		while(rs.next()) {
			lh.add(populateDono(rs));
		}
		return lh;
	}
	
	public Dono find(int id) throws SQLException {
		String selectSQL = "SELECT * FROM dono WHERE id = ?";
		// O PreparedStatement permite inserir parametros nas consultas SQL.
		PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
		preparedStatement.setInt(1, id);
		ResultSet rs = preparedStatement.executeQuery();
		if(rs.next()) {
			return populateDono(rs);
		}
		return null;
	}
	
	private Dono populateDono(ResultSet rs) throws SQLException {
		Dono x = new Dono();
		x.setId(rs.getInt("id"));
		x.setNome(rs.getString("nome"));
		x.setSenha(rs.getString("senha"));
		x.setTelefone(rs.getString("telefone"));
		x.setEndereco(rs.getString("endereco"));
		return x;
	}
}
