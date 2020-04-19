package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Amistad;
import entities.Usuario;
import services.AmistadDao;
import services.UsuarioDao;

/**
 * Servlet implementation class AñadirAmigo
 */
@WebServlet("/AñadirAmigo")
public class AñadirAmigo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AñadirAmigo() {
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
		HttpSession session =request.getSession();
      	Usuario usuario= (Usuario) session.getAttribute("usuario");
		String usuarioAmigo=request.getParameter("amigo");
		java.util.Date fecha= new Date();
		
		Amistad a=new Amistad();
		UsuarioDao uDao=new UsuarioDao();
		Usuario u=uDao.find(usuarioAmigo);
		a.setUsuario2(uDao.find(usuarioAmigo));
		a.setUsuario1(usuario);
		a.setFechaSolicitud(fecha);
		AmistadDao aDao= new AmistadDao();
		aDao.insert(a);
		response.sendRedirect("PerfilAmigo.jsp?usuario="+request.getParameter("amigo")+"&img-perfil="+u.getImagenPerfil());
	}

}
