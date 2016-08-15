package projectprogweb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import projectprogweb.dao.AtividadesDAO;
import projectprogweb.dao.UsuarioDAO;
import projectprogweb.modelo.Atividade;
import projectprogweb.modelo.Usuario;

public class ActivityController {

	
	@RequestMapping(value="criaAtividade", method=RequestMethod.GET)
	public String cadastra() {
		return "admin/criaAtividade";
	}
	@RequestMapping(value="criaAtividade", method=RequestMethod.POST)
	public String criaAtvidade(Usuario user, Atividade atividade, HttpServletRequest req, Model model){
		UsuarioDAO dao = new UsuarioDAO();
		
		if(dao.checaPermissao(user) == true){
			Atividade atv = new Atividade();
			atv.setCriador(atividade.getCriador());
			atv.setTitulo(atividade.getTitulo());
			atv.setDescricao(atividade.getDescricao());
			atv.setData(atividade.getData());
			
			AtividadesDAO atvDAO = new AtividadesDAO();
			atvDAO.criaAtividade(atv);

			return "/admin/index.jsp";
		}else 
			req.setAttribute("msg", "Usuario ou senha incorreto(s)!");
		return "/admin/cria-atividade.jsp";
	}
}
