import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ConditionServlet")
public class ConditionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ConditionServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // euc-kr, utf-8
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		String method = request.getParameter("method"); // �ڡڡڡڡ�
		
		out.println("<html>");
		out.println("<body>");
		if( method == null){
			out.println("<h2> ���� �׸��� �����ϴ�</h2>");
		}else if(method.equals("get")){
			out.println("<h2> get ����̶� �������~~~~</h2>");
		}else if(method.equals("post")){
			out.println("<h2> post ����̶� ��¼�� ��¼��~~~~</h2>");
		}else{
			out.println("<h2> ��û�� �׸��� �� �� �����ϴ�. </h2>");
		}
		out.println("</body>");
		out.println("</html>");
	}
}
