package projectprogweb.controller;

//import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import projectprogweb.dao.UsuarioDAO;
import projectprogweb.modelo.Usuario;

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
			model.addAttribute("msgA", "Por favor, faca login no sistema!");
		}
		else if (dao.estaCadastrado(usuario.getLogin()) && dao.checaPermissao(usuario)) {
			model.addAttribute("msgS", "Bem-vindo, " + usuario.getLogin() + "!");
			session.setAttribute("usuario", usuario); 
			return "admin/index";
		}
		else {
			session.setAttribute("usuario", null);
			model.addAttribute("msgE", "Usuario ou senha incorreto(s)!");
		}
		return "login";
	}
	
	@RequestMapping(value="cadastra", method=RequestMethod.GET)
	public String cadastra() {
		return "cadastra";
	}
	
	@RequestMapping(value="cadastra", method=RequestMethod.POST)
	public String cadastraUsuario(Usuario user, Model model) {
		UsuarioDAO dao = new UsuarioDAO();

		if (!dao.estaCadastrado(user.getLogin())) {
			dao.cadastra(user);
			model.addAttribute("msgS", "Usuario: " + user.getLogin()
			+ " cadastrado com sucesso!");
			return "login";
		}
		else{
			model.addAttribute("msgE", "Usuario: " + user.getLogin()
			+ " usuario ja cadastrado!");
			return "/cadastra";
		}

	}

	@RequestMapping(value="index", method=RequestMethod.GET)
	public String index() {
		return "admin/index";
	}
	
}