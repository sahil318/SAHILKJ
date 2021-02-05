package in.edac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Hello4Day8")
public class Hello4Day8 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("Hello4_1Day8").include(request, response);
		request.getRequestDispatcher("Hello4_2Day8").include(request, response);
		request.getRequestDispatcher("Hello4_3Day8").include(request, response);
		String str=(String)request.getAttribute("FirstName");
		String str1=(String)request.getAttribute("Midname");
		String str2=(String)request.getAttribute("LastName");
		PrintWriter out = response.getWriter();
		out.println("Lets include multiple pages");
		out.print(str+" "+" "+str1+" "+str2);
		
	}

}
