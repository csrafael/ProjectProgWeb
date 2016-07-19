package project.modelo;

import java.sql.Connection;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

import bases.Atividade;
import project.jdbc.ConexaoBD;

public class AtividadesDAO {


	private Connection connection;
	
	public AtividadesDAO(){
		this.connection = new ConexaoBD().getConexaoBD();
	}
	
	public void criaAtividade(Atividade atv){
		String sql = "insert into atividades (user, descricao, titulo, date) values (?,?,?,?)";
		
		try{
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			
			stmt.setString(1, atv.getCriador());
			stmt.setString(2, atv.getDescricao());
			stmt.setString(3, atv.getTitulo());
			stmt.setString(4, atv.getData());
			
			stmt.execute();
			stmt.close();
		}catch (SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public void deletaAtivdade(Atividade atv){
		String sql = "delete from atividades where user=? and titulo=?";
		try{
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			
			stmt.setString(1, atv.getCriador());
			stmt.setString(2, atv.getTitulo());
			
			stmt.execute();
			stmt.close();
		}catch (SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public void alteraAtividade(Atividade atv){
		String sql = "update atividades set descricao=?, set titulo=?, set date=?";
		try{
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			
			stmt.setString(1, atv.getDescricao());
			stmt.setString(2, atv.getTitulo());
			stmt.setString(3, atv.getData());
			
			stmt.execute();
			stmt.close();
		}catch (SQLException e){
			throw new RuntimeException(e);
		}
	}
}
