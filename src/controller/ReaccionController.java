package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Reaccion;
import entities.Usuario;
import services.PublicacionDao;
import services.ReaccionDao;

/**
 * Servlet implementation class ReaccionController
 */

@WebServlet("/ReaccionController")
public class ReaccionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReaccionController() {
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
		int id=Integer.parseInt(request.getParameter("idPublicacion"));
		HttpSession session =request.getSession();
      	Usuario usuario= (Usuario) session.getAttribute("usuario");
		
		Reaccion r=new Reaccion();
	
		ReaccionDao rDao=new ReaccionDao();
		PublicacionDao pDao =new PublicacionDao();
		
		r.setPublicacion(pDao.find(id));
		r.setUsuario(usuario);
		rDao.insert(r);
		
		response.sendRedirect("Inicio.jsp?usuario="+usuario.getUsuario());		
	}

}
