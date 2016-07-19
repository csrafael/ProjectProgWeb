package Action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.modelo.UsuarioDAO;
import user.Usuario;

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
		
		req.setAttribute("msg", "Usuario " + user.getLogin() + " cadastrado com sucesso!");
		RequestDispatcher rd = req.getRequestDispatcher("/sucesso.jsp");
		   rd.forward(req, resp);
		return "./sucesso.jsp";
	}
}
