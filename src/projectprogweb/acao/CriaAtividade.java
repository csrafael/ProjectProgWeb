/*package projectprogweb.acao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projectprogweb.dao.AtividadesDAO;
import projectprogweb.dao.UsuarioDAO;
import projectprogweb.modelo.Atividade;
import projectprogweb.modelo.Usuario;

public class CriaAtividade implements Acao{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String criador = req.getParameter("login");
		String senha = req.getParameter("senha");
		String titulo = req.getParameter("titulo");
		String descricao = req.getParameter("descricao");
		String data = req.getParameter("data");
		
		Usuario user = new Usuario();
		user.setLogin(criador);
		user.setPassword(senha);
		
		UsuarioDAO uDAO = new UsuarioDAO();
		if(uDAO.checaPermissao(user) == true){
			Atividade atv = new Atividade();
			atv.setCriador(criador);
			atv.setTitulo(titulo);
			atv.setDescricao(descricao);
			atv.setData(data);
			
			AtividadesDAO atvDAO = new AtividadesDAO();
			atvDAO.criaAtividade(atv);

			return "/admin/index.jsp";
		}else 
			req.setAttribute("msg", "Usu�rio ou senha incorreto(s)!");
		return "/admin/cria-atividade.jsp";
	}
}
