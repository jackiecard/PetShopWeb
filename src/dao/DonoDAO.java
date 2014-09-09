package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import model.Dono;
import model.Animal;

public interface DonoDAO {

	public void save(Dono x) throws SQLException;
	public void delete(int id) throws SQLException;
	public ArrayList<Dono> list() throws SQLException;
	public ArrayList<Dono> search(String nome) throws SQLException;
	public Dono find(int id) throws SQLException;
}
