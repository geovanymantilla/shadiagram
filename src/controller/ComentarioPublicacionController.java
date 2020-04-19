package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Comentario;
import entities.Usuario;
import services.ComentarioDao;
import services.PublicacionDao;
import services.UsuarioDao;

/**
 * Servlet implementation class ComentarioPublicacionController
 */
@WebServlet("/ComentarioPublicacionController")
public class ComentarioPublicacionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComentarioPublicacionController() {
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
		String comentario=request.getParameter("comentario");
		int id=Integer.parseInt(request.getParameter("id"));
		HttpSession session =request.getSession();
      	Usuario usuario= (Usuario) session.getAttribute("usuario");
      	java.util.Date fecha=new Date();
      	
      	PublicacionDao pDao=new PublicacionDao();   	
      	Comentario c=new Comentario();
      	ComentarioDao cDao=new ComentarioDao();
      	UsuarioDao uDao=new UsuarioDao();
      	
      	c.setFechaComentario(fecha);
      	c.setPublicacion(pDao.find(id));
      	c.setUsuario(usuario);
      	c.setComentario(comentario);
      	cDao.insert(c);
      	
      	response.sendRedirect("Perfil.jsp?usuario="+usuario.getUsuario()+"&img-perfil="+usuario.getImagenPerfil());
	}

}
