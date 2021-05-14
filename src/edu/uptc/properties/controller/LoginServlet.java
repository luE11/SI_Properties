package edu.uptc.properties.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uptc.properties.entity.Owner;
import edu.uptc.properties.model.LoginManager;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private LoginManager lManager;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        lManager = new LoginManager();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().removeAttribute("role");
		request.getSession().removeAttribute("username");
		request.getSession().removeAttribute("currOwner");
		response.sendRedirect(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String pwd = request.getParameter("password");
		
		String isAdmin = lManager.findAdminPK(username);
		Owner currUser = lManager.findOwnerPK(username);
		
		if( isAdmin.compareTo("")!=0) {
			if( isAdmin.compareTo(pwd) == 0 ) {
				request.getSession().setAttribute("role", "admin");
				request.getSession().setAttribute("username", username);
				response.sendRedirect(request.getContextPath() + "/home.jsp");
			}else {
				System.out.println("Contraseña incorrecta");
				response.sendRedirect(request.getContextPath());
			}
		}else if (currUser != null) {
			if( currUser.getOwnerPwd().compareTo(pwd) == 0) {
				request.getSession().setAttribute("role", "owner");
				request.getSession().setAttribute("username", username);
				request.getSession().setAttribute("currOwner", currUser);
				response.sendRedirect(request.getContextPath() + "/home.jsp");
			}else {
				System.out.println("Contraseña incorrecta");
				response.sendRedirect(request.getContextPath());
			}
			
		}else {
			System.out.println("No hay ningún usuario con esos datos");
			response.sendRedirect(request.getContextPath());
		}		
		
	}

}
