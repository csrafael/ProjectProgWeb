package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bases.Atividade;
import project.modelo.AtividadesDAO;

public class CriaAtividade implements Acao{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String criador = req.getParameter("criador");
		String titulo = req.getParameter("titulo");
		String descricao = req.getParameter("descricao");
		String data = req.getParameter("data");
		
		Atividade atv = new Atividade();
		atv.setCriador(criador);
		atv.setTitulo(titulo);
		atv.setDescricao(descricao);
		atv.setData(data);
		
		AtividadesDAO atvDAO = new AtividadesDAO();
		atvDAO.criaAtividade(atv);
		
		return "/user/index.jsp";
	}
}
