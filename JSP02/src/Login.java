

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	PrintWriter out = response.getWriter();
	String ID = request.getParameter("ID");
	String PWD = request.getParameter("PWD");
	
	out.println("<html>");
	out.println("<body>");
	if(ID.equals("admin")) {
		if(PWD.equals("1234")) {
			out.println("로그인 성공");
		}else{
			out.println("아이디 혹은 패스워드가 일치하지 않습니다");
		}
	}else{
		out.println("아이디 혹은 패스워드가 일치하지 않습니다");
	}
	out.println("</body>");
	out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
