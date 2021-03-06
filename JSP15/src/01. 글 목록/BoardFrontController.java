package board;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import javax.servlet.RequestDispatcher;
import board.command.*;
 
/**
 * Servlet implementation class BoardFrontController
 */
// http://localhost:8080/Chap14/*.bbs
@WebServlet("*.bbs")
public class BoardFrontController extends HttpServlet {
    private static final long serialVersionUID = 1L;
        
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }
 
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doPost(request, response);
    }
 
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("UTF-8");
        
        String requestURI = request.getRequestURI();
        // http://localhost:8083/Chap14/boardList.bbs
        
        String contextPath = request.getContextPath();
        // http://localhost:8083/Chap14
        
        String cmdURI = requestURI.substring(contextPath.length());
        // /boardList.bbs
        // /boardRead.bbs
         
        BoardCmd cmd = null;
        String viewPage = null;
         
        // 글 목록 조회 처리
        if(cmdURI.equals("/boardList.bbs")){
            cmd = new BoardListCmd();
            cmd.execute(request, response);
            viewPage = "boardList.jsp";
        }
         
        RequestDispatcher dis = request.getRequestDispatcher(viewPage);
        dis.forward(request, response);
    }
}










