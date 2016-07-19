package action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bases.Usuario;
import project.modelo.UsuarioDAO;

public class Cadastra implements Acao{
	
	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String login = req.getParameter("login");
		String senha = req.getParameter("senha");
		String email = req.getParameter("email");
		String nascimento = req.getParameter("nascimento");
		
		Usuario user = new Usuario();
		user.setLogin(login);
		user.setPassword(senha);
		user.setEmail(email);
		user.setNascimento(nascimento);
		
		UsuarioDAO uDAO = new UsuarioDAO();
		uDAO.cadastra(user);
		
		return "/login.jsp";
	}
}