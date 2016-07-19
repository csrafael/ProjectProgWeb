package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bases.Usuario;
import project.modelo.UsuarioDAO;

public class Login implements Acao{
	
	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception{

		String login = req.getParameter("login");
		String senha = req.getParameter("senha");

		UsuarioDAO dao = new UsuarioDAO();
		
		Usuario user = new Usuario();
		user.setLogin(login);
		user.setPassword(senha);
		
		if (dao.estaCadastrado(login) && dao.checaPermissao(user)) {
			return "/user/index.jsp";
		}
		
		req.setAttribute("msg", "Usuário ou senha incorreto(s)!");
		return "/login.jsp";
	}
}
