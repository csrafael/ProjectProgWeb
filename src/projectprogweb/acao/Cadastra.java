/*package projectprogweb.acao;

//import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projectprogweb.dao.UsuarioDAO;
import projectprogweb.modelo.Usuario;

public class Cadastra implements Acao {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String nome = req.getParameter("nome");
		String login = req.getParameter("login");
		String senha = req.getParameter("senha");
		String email = req.getParameter("email");
		String nascimento = req.getParameter("nascimento");

		Usuario user = new Usuario();
		user.setNome(nome);
		user.setLogin(login);
		user.setPassword(senha);
		user.setEmail(email);
		user.setNascimento(nascimento);

		UsuarioDAO uDAO = new UsuarioDAO();

		if (!uDAO.estaCadastrado(login)) {
			uDAO.cadastra(user);
			return "/login.jsp";
		}
		else
			return "/new-user.jsp";
	}
}
