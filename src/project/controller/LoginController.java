package project.controller;

//import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//import org.springframework.web.bind.annotation.RequestMethod;
import project.dao.UsuarioDAO;
import project.modelo.Usuario;

@Controller
public class LoginController {
	@RequestMapping("/")
	public String home() {
		return "login";
	}
	
	@RequestMapping("login")
	public String login(Usuario usuario, HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		UsuarioDAO dao = new UsuarioDAO(); 
		
		if(usuario == null || usuario.getLogin() == null) {
			model.addAttribute("msgA", "Por favor, fa�a login no sistema!");
		}
		else if (dao.estaCadastrado(usuario.getLogin()) && dao.checaPermissao(usuario)) {
			model.addAttribute("msgS", "Bem-vindo, " + usuario.getLogin() + "!");
			session.setAttribute("usuario", usuario); 
			return "user/index";
		}
		else {
			session.setAttribute("usuario", null);
			model.addAttribute("msgE", "Usu�rio ou senha incorreto(s)!");
		}
		return "login";
	}
	
	@RequestMapping(value="new-user", method=RequestMethod.GET)
	public String cadastra() {
		return "new-user";
	}
	
	@RequestMapping(value="cadastra", method=RequestMethod.POST)
	public String cadastraUsuario(Usuario user, Model model) {
		UsuarioDAO dao = new UsuarioDAO();

		if (!dao.estaCadastrado(user.getLogin())) {
			dao.cadastra(user);
			model.addAttribute("msgS", "Usu�rio: " + user.getLogin()
			+ " cadastrado com sucesso!");
			return "login";
		}
		else{
			model.addAttribute("msgE", "Usu�rio: " + user.getLogin()
			+ " usu�rio j� cadastrado!");
			return "/new-user.jsp";
		}

	}
}