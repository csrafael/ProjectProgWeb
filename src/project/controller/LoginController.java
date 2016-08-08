package project.controller;

//import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
			model.addAttribute("msg", "Por favor, faça login no sistema!");
		}
		else if (dao.estaCadastrado(usuario.getLogin()) && dao.checaPermissao(usuario)) {
			model.addAttribute("msg", "Bem-vindo, " + usuario.getLogin() + "!");
			session.setAttribute("usuario", usuario); 
			return "user/index";
		}
		else {
			session.setAttribute("usuario", null);
			model.addAttribute("msg", "Usuário ou senha incorreto(s)!");
		}
		return "login";
	}
}