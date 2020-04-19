package controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import entities.Publicacion;
import entities.Usuario;
import services.PublicacionDao;
import util.Conexion;

/**
 * Servlet implementation class SubirFoto
 */
@WebServlet("/SubirFoto")
@MultipartConfig

public class SubirFoto extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubirFoto() {
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
		
      	String nomb=request.getParameter("nombre");
      	Part img=request.getPart("archivo");
      	InputStream is=img.getInputStream();
      	File f=new File("C:/Users/usuario/eclipse-workspace/Shadiagram1.0/WebContent/fotos/"+nomb);
      	
      	FileOutputStream ous= new FileOutputStream(f);
      	
      	int dato = is.read();
      	
      	// insertando en la base de datos
    	String descripcion=request.getParameter("descripcion");
      	java.util.Date fecha=new Date();
      	PublicacionDao pDao= new PublicacionDao(); 
      	HttpSession session =request.getSession();
      	Usuario usuario= (Usuario) session.getAttribute("usuario");
      	
     	Publicacion p =new Publicacion();
      	p.setDescripcion(descripcion);
      	p.setFechaPublicacion(fecha);
      	p.setUsuario(usuario);
      	p.setNombreImagen(nomb);
      	
      	pDao.insert(p);
      	
      	while(dato!=-1) {
      		ous.write(dato);
      		dato=is.read();
      	}
      	
      	ous.close();
      	is.close();
      	
//      	String descripcion=request.getParameter("descripcion");
//      	java.util.Date fecha=new Date();
//      	PublicacionDao pDao= new PublicacionDao(); 
//      	HttpSession session =request.getSession();
//      	Usuario usuario= (Usuario) session.getAttribute("usuario");
      	
}
}
