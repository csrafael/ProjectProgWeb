package Servlets;

import java.io.IOException;
import Action.Acao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/controller")
public class ControllerServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String opcao = req.getParameter("opcao");
		String nomeDaClasse = "Action." + opcao;
		
		try {
			Class<?> classe = Class.forName(nomeDaClasse);
			Acao acao = (Acao) classe.newInstance();
			acao.executa(req, resp);
		} catch (Exception e) {
			throw new ServletException("Erro: ",e);
		}
	}
}
