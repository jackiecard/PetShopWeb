package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public abstract class MySQL {
	
	protected Connection con;
	
	public MySQL() throws SQLException {
		con = criarConexao();
	}
	
	public static Connection criarConexao() throws SQLException {
		Connection connection = null; 
		try {
            String connectionURL = "jdbc:mysql://localhost:3306/petshop";
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection(connectionURL, "root", "");
            if(!connection.isClosed())
                 System.out.println("Successfully connected to " + "MySQL server using TCP/IP...");
        }catch(Exception ex){
           System.out.println("Unable to connect to database"+ex);
        }
		return connection;   
	}
}