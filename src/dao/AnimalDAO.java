package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Animal;

public interface AnimalDAO {
	public void save(Animal g) throws SQLException;
	public void delete(int id) throws SQLException;
	public ArrayList<Animal> list() throws SQLException;
	public ArrayList<Animal> search(String nome) throws SQLException;
	public Animal find(int id) throws SQLException;
}
