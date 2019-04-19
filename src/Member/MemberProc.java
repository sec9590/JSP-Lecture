package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/member/MemberProcServlet")
public class MemberProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public MemberProc() {
        super();
        // TODO Auto-generated constructor stub
    }

	
    //?로 받았기에
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO mDao = null;
		RequestDispatcher rd = null;
		MemberDTO member = null;
		int id = 0;
		String action = request.getParameter("action");
		if (!request.getParameter("id").equals("")) {
			id = Integer.parseInt(request.getParameter("id"));
		}
		
		switch(action) {
		case "update":		// 수정 버튼 클릭 시
			mDao = new MemberDAO();
			member = mDao.selectOne(id);
			mDao.close();
			request.setAttribute("member", member);
			rd = request.getRequestDispatcher("update.jsp");
	        rd.forward(request, response);
	        break;
	        
		case "delete":		// 삭제 버튼 클릭 시
			mDao = new MemberDAO();
			member = mDao.selectOne(id);
			mDao.deleteMember(member);
			mDao.close();
			//response.sendRedirect("loginMain.jsp");
			String message = "id = " + id + " 이/가 삭제되었습니다.";
			String url = "loginMain.jsp";
			request.setAttribute("message", message);
			request.setAttribute("url", url);
			rd = request.getRequestDispatcher("alertMsg.jsp");
			rd.forward(request, response);
			break;
			
		default:
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}
