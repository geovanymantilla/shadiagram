package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Usuario;
import services.UsuarioDao;

/**
 * Servlet implementation class RegistrarUsuario
 */
   @WebServlet("/RegistrarUsuario")

public class RegistrarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrarUsuario() {
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
//		int id=Integer.parseInt(request.getParameter("100"));		
		String nombre=request.getParameter("nombre");
		String apellido=request.getParameter("apellido");
		String usuario=request.getParameter("usuario");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		java.util.Date fecha=new Date();
		String checkbox=request.getParameter("checkbox");
		
		Usuario u=new Usuario();
		u.setNombre(nombre);
		u.setApellidos(apellido);
		u.setUsuario(usuario);
		u.setEmail(email);
		u.setPass(pass);
		u.setFechaRegistro(fecha);
		UsuarioDao uDao=new UsuarioDao();
		uDao.insert(u);
		
		response.sendRedirect("index.jsp");
		
		//System.out.println(checkbox);
//		
//		if(checkbox=="on") {
//		
//		}else {
//			RequestDispatcher rd = request.getRequestDispatcher("Error.jsp");
//         	//rd.forward(request, response);
//		}
	}
}
