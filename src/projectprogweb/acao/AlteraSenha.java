package projectprogweb.acao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projectprogweb.dao.UsuarioDAO;
import projectprogweb.modelo.Usuario;

public class AlteraSenha implements Acao{
	
	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp){
		String login = req.getParameter("login");
		String senhaAntiga = req.getParameter("senhaAntiga");
		String senhaNova = req.getParameter("senhaNova");
		
		Usuario user = new Usuario();
		user.setLogin(login);
		user.setPassword(senhaAntiga);
		
		UsuarioDAO uDAO = new UsuarioDAO();
		if(uDAO.checaPermissao(user) == true){
			user.setPassword(senhaNova);
			uDAO.alteraSenha(user);
		}
		
		return "/login.jsp";
	}
}
