package projectprogweb.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import projectprogweb.modelo.Usuario;

public class InterceptadorLogin extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp,
			Object controller) throws Exception {

		HttpSession session = ((HttpServletRequest) req).getSession();
		Usuario usuario = (Usuario) session.getAttribute("usuario");
		if(usuario != null) {
			return true;
		}
		resp.sendRedirect(req.getServletContext().getContextPath()+"/login");
		return false;
	}
}