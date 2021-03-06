package projectprogweb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import projectprogweb.dao.UsuarioDAO;
import projectprogweb.dao.AtividadesDAO;
import projectprogweb.modelo.Usuario;
import projectprogweb.modelo.Atividade;

@Controller
public class ActivityController {
	@RequestMapping(value = "criaAtividade", method = RequestMethod.GET)
	public String criaAtividade() {
		return "admin/criaAtividade";
	}

	@RequestMapping(value = "criaAtividade", method = RequestMethod.POST)
	public String criaAtividade(Atividade atividade, HttpServletRequest req, Model model) {
		UsuarioDAO user = new UsuarioDAO();
		
		if (!user.estaCadastrado(atividade.getCriador())) {
			model.addAttribute("msgE", "Usuario incorreto");
		} else {
			AtividadesDAO atvDAO = new AtividadesDAO();
			atvDAO.criaAtividade(atividade);
			return "/admin/index";
		}
		return "/admin/criaAtividade";
	}
	
	@RequestMapping(value="subscribe", method = RequestMethod.POST)
		public String subscribe(Atividade atv, HttpServletRequest req, Model model){
			AtividadesDAO dao = new AtividadesDAO();
			dao.adicionaInscrito("," + req.getSession().getAttribute("usuario").toString(), atv.getTitulo());
			return "/admin/index";
		}
			@RequestMapping(value = "/admin/atividade", method = RequestMethod.GET)
	public String atividade() {
		return "admin/atividade";
	}
}