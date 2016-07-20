package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bases.Usuario;
import project.modelo.UsuarioDAO;

public class Remove implements Acao{
	
	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String login = req.getParameter("login");
		String senha = req.getParameter("senha");
		
		Usuario user = new Usuario();
		user.setLogin(login);
		user.setPassword(senha);
		
		UsuarioDAO uDAO = new UsuarioDAO();
		if(uDAO.checaPermissao(user) == true){
			uDAO.remove(user);
			return "/login.jsp";
		}
		return "/user/remove";
	}
}
