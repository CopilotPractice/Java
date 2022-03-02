import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MultipleParamServlet")
public class MultipleParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MultipleParamServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		String[] hobby = request.getParameterValues("hobby");
		
		out.println("<html>");
		out.println("<body>");
		
		if( hobby == null){
			out.println("[선택한 취미가 없습니다]");
		}else{
			out.println("<table border=\"1\">");
			for(int i=0 ; i<hobby.length ; i++){
				out.println("<tr>");
				out.println(" 	<td>");
				out.println(hobby[i]);
				out.println(" 	</td>");
				out.println("</tr>");
			}
			out.println("</table>");
		}
		out.println("</body>");
		out.println("</html>");
	}
}