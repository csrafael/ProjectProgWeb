package projectprogweb.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

import projectprogweb.jdbc.ConexaoBD;
import projectprogweb.modelo.Atividade;

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
	
	public ArrayList<Atividade> getLista(){
		ArrayList<Atividade> lista = new ArrayList<Atividade>(); 
		PreparedStatement stmt;
		
		try{
			stmt = (PreparedStatement) connection.prepareStatement("select * from atividades");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()){
				Atividade atv = new Atividade();
				atv.setCriador(rs.getString("user"));
				atv.setDescricao(rs.getString("descricao"));
				atv.setTitulo(rs.getString("titulo"));
				atv.setData(rs.getString("date"));
				lista.add(atv);
			}
			
			rs.close();
			stmt.close();
			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
		return lista;
	}
}