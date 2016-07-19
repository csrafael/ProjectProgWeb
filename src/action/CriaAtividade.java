package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bases.Atividade;

public class CriaAtividade implements Acao{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String criador = req.getParameter("criador");
		String titulo = req.getParameter("titulo");
		String descricao = req.getParameter("descricao");
		String data = req.getParameter("data");
		
		Atividade atv = new Atividade();
		
		
		
		return "/user/index.jsp";
	}
}
