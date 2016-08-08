package project.acao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.dao.UsuarioDAO;
import project.modelo.Usuario;

public class Login implements Acao {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		String login = req.getParameter("login");
		String senha = req.getParameter("senha");

		UsuarioDAO dao = new UsuarioDAO();

		Usuario user = new Usuario();
		user.setLogin(login);
		user.setPassword(senha);

		if (dao.estaCadastrado(login) && dao.checaPermissao(user)) {
			return "/user/index";
		}

		return "/login";
	}

}
