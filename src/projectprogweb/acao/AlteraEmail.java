package projectprogweb.acao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projectprogweb.dao.UsuarioDAO;
import projectprogweb.modelo.Usuario;

public class AlteraEmail implements Acao{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp){
		String login = req.getParameter("login");
		String senha = req.getParameter("senha");
		String email = req.getParameter("email");
		
		Usuario user = new Usuario();
		user.setLogin(login);
		user.setPassword(senha);
		
		UsuarioDAO uDAO = new UsuarioDAO();
		if(uDAO.checaPermissao(user) == true){
			user.setEmail(email);
			uDAO.alteraEmail(user);
		}
		
		return "/login.jsp";
	}
}
