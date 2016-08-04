package project.jdbc;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class ConexaoBD {

	public Connection getConexaoBD() {
		System.out.println("Conectando ao banco de dados.");
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			String url = "jdbc:mysql://localhost/projeto";
			return (Connection) DriverManager.getConnection(url, "root", "4dm1n");
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}