package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Usuario;
import services.UsuarioDao;

/**
 * Servlet implementation class BuscarUsuarioController
 */
@WebServlet("/BuscarUsuarioController")
public class BuscarUsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuscarUsuarioController() {
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
		
		String usuario=request.getParameter("usuario");
//		String imagenPerfil=request.getParameter("imagenPerfil");
		
		UsuarioDao uDao=new  UsuarioDao();

		if(uDao.find(usuario)!=null) {
			Usuario u = new Usuario();
			u = uDao.find(usuario);
			response.sendRedirect("PerfilAmigo.jsp?usuario="+u.getUsuario()+"&img-perfil="+u.getImagenPerfil());
//			response.sendRedirect("PerfilAmigo.jsp?imagenPerfil="+u.getImagenPerfil());
		}else
			{
			response.sendRedirect("Error.jsp");	
     	}
	}

}
