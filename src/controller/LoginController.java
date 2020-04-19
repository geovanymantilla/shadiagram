package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Usuario;
import services.UsuarioDao;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
		
		String usuario=request.getParameter("usuario");
		String pass=request.getParameter("pass");
		UsuarioDao uDao=new UsuarioDao();
		
		Usuario u= uDao.find(usuario);
		
		PrintWriter out=response.getWriter();
		
		if(u.getPass().contentEquals(pass)) {
			HttpSession session = request.getSession();
			session.setAttribute("usuario",u);
			
			response.sendRedirect("Inicio.jsp");
//			RequestDispatcher rd = request.getRequestDispatcher("Inicio.jsp");
//         	rd.forward(request, response);		
		} else {
			
//			
//			out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
//			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
//			out.println("<script>");
//			out.println("$(document).ready(function(){");
//			out.println("swal('usuario o contraseña incorrecta', '', 'error');");
//			out.println("});");
//			out.println("</script>");
			
			response.sendRedirect("Error.jsp");
//			RequestDispatcher rd = request.getRequestDispatcher("Error.jsp");
//         	rd.forward(request, response);
		}
	
	}

}