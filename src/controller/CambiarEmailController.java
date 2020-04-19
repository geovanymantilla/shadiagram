package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Usuario;
import services.UsuarioDao;

/**
 * Servlet implementation class CambiarEmailController
 */

@WebServlet("/CambiarEmailController")

public class CambiarEmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CambiarEmailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		String email=request.getParameter("email");
		String email2=request.getParameter("email");
		
		if(email.equals(email2)){
			HttpSession session =request.getSession();
			Usuario usuario= (Usuario) session.getAttribute("usuario");
	      	UsuarioDao uDao=new UsuarioDao();
	      	usuario.setEmail(email);
	      	uDao.update(usuario);
		}
	}

}
