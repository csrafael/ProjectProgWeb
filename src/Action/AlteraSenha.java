package Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.modelo.UsuarioDAO;
import user.Usuario;

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
		
		
		return "/sucesso.jsp";
	}
}
