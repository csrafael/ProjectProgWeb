package projectprogweb.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mysql.jdbc.PreparedStatement;

import projectprogweb.cripto.BCrypt;
import projectprogweb.jdbc.ConexaoBD;
import projectprogweb.modelo.Usuario;

@Repository
public class UsuarioDAO {
	private Connection connection;
	
	/*@Autowired
	public UsuarioDAO(DataSource dataSource) {
		try {
			this.connection = dataSource.getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	*/
	public UsuarioDAO(){
		this.connection = new ConexaoBD().getConexaoBD();
	}
	
	public void cadastra(Usuario user){
		String sql = "insert into usuarios (nome, login, password, email, nascimento) values(?,?,?,?,?)";
		
		try{
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			
			String senha = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
			
			stmt.setString(1, user.getNome());
			stmt.setString(2, user.getLogin());
			stmt.setString(3, senha);
			stmt.setString(4, user.getEmail());
			stmt.setString(5, user.getNascimento());
			
			stmt.execute();
			stmt.close();
		}catch (SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public void remove(Usuario user){
		String sql = "delete from usuarios where login=?";
		
		try{
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			
			String login = user.getLogin();
			
			stmt.setString(1, login);
			
			stmt.execute();
			stmt.close();
		}catch (SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public void alteraEmail(Usuario user){
		String sql = "update usuarios set email=? where login=?";
		
		try{
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			
			stmt.setString(1, user.getEmail());
			stmt.setString(2, user.getLogin());
			
			stmt.execute();
			stmt.close();
		}catch (SQLException e){
			throw new RuntimeException(e);
		}
	}
	public void alteraSenha(Usuario user){
		String sql = "update usuarios set password=? where login=?";
		
		try{
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			
			String senha = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
			
			stmt.setString(1, senha);
			stmt.setString(2, user.getLogin());
			
			stmt.execute();
			stmt.close();
		}catch (SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public boolean checaPermissao(Usuario usuario){
		boolean permissao = false;
		
		Usuario user = getUsuario(usuario.getLogin());
		
		if(estaCadastrado(usuario.getLogin()) || (usuario != null && user != null)){
			
			permissao = BCrypt.checkpw(usuario.getPassword(), user.getPassword());
			System.out.println("usuario est� cadastrado");
		}
		else{
			System.out.println("usuario nao cadastrado");
		}
		return permissao;
	}
	
	public boolean estaCadastrado(String login){
		PreparedStatement stmt;
		String sql = "select * from usuarios where login=?";
		
		try{
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setString(1, login);
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next())
				return true;
			rs.close();
			stmt.close();
		} catch(SQLException e){
			throw new RuntimeException(e);
		}
		return false;
	}
	
	public Usuario getUsuario(String login){
		Usuario user = null;
		
		PreparedStatement stmt;
		String sql = "select * from usuarios where login=?";
		try{
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setString(1, login);
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next()){
				user = new Usuario();
				user.setLogin(rs.getString("login"));
				user.setPassword(rs.getString("password"));
			}
			rs.close();
			stmt.close();
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
		return user;
	}
}
