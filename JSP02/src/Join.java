

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Join
 */
@WebServlet("/Join")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Join() {
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
		
		String NAME = request.getParameter("NAME");
		String SEX = request.getParameter("SEX");
		String ID = request.getParameter("ID");
//		String PWD = request.getParameter("PWD");
//		String RE_PWD = request.getParameter("RE_PWD");
		String ADRESS = request.getParameter("ADRESS");
		String PH_NUMBER = request.getParameter("PH_NUMBER");
		String EMAIL = request.getParameter("EMAIL");
		String[] HOBBY = request.getParameterValues("HOBBY");
		
		out.println("<html>");
		out.println("<body>");
		out.println("<h2>�ۼ��Ͻ� ������ ������ �����ϴ�.</h2><br/>");
		out.println("�̸� :"+NAME+"<br/><hr/>");
		out.println("���� :"+SEX+"<br/><hr/>");
		out.println("���̵� :"+ID+"<br/><hr/>");
		out.println("�ּ� :"+ADRESS+"<br/><hr/>");
		out.println("��ȭ��ȣ :"+PH_NUMBER+"<br/><hr/>");
		out.println("�̸����ּ� :"+EMAIL+"<br/><hr/>");
		if(HOBBY == null) {
			out.println("���:<br/>[������ ��̰� �����ϴ�]");
		}else {
			out.println("<table border=\"1\">");
			for(int i=0;i<HOBBY.length;i++) {
				out.println("<tr>");
				out.println("<td width=\"80\"align=\"center\">");
				out.println(HOBBY[i]);
				out.println("</td>");
				out.println("</tr>");
			}
		}
		out.print("</table>");
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
