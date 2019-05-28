package Member.old;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Member.MemberDAO;

@WebServlet("/member/LoginProcServlet")
public class LoginProc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginProc() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int id = 0;
		String strid = request.getParameter("id");
		if(!strid.equals(""))
			id = Integer.parseInt(strid);
		String password = request.getParameter("password");

		MemberDAO mDao = new MemberDAO();
		int result = mDao.verifyIdPassword(id, password);
		String errorMessage = null;
		switch (result) {
		case MemberDAO.ID_PASSWORD_MATCH:
			break;
		case MemberDAO.ID_DOES_NOT_EXIST:
			errorMessage = "ID가 없음";
			break;
		case MemberDAO.PASSWORD_IS_WRONG:
			errorMessage = "패스워트가 틀렸음";
			break;
		case MemberDAO.DATABASE_ERROR:
			errorMessage = "DB 오류";
		}
		mDao.close();
		
		if (result == MemberDAO.ID_PASSWORD_MATCH) {
			response.sendRedirect("loginMain.jsp");
		} else {
			//방법 1 : 상대방이 getAttribute("error")로 받을 때
			request.setAttribute("error", errorMessage);
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
			
			//방법 2 : 상대방이 getParameter("error")로 받을 때
			/*String uri = "login.jsp?error=" + errorMessage;
			RequestDispatcher dispatcher = request.getRequestDispatcher(uri);
			dispatcher.forward(request, response);*/
			
			//방법 3 : 상대방이 getParameter("error")로 받을 때
			/*String uri = "login.jsp?error=" + errorMessage;
		      response.sendRedirect(uri); */
		}		
	}

}
