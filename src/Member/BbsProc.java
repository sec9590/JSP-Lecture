package Member;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BbsProc
 */
@WebServlet("/Member/BbsProcServlet")
public class BbsProc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BbsProc() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BbsDAO bDAO = null;
		BbsDTO bbs = null;
		String message = null;
		String url = null;
		int memberid = 0;
		int id = 0;
		String name = null;
		String title = null;
		String content = null;
		int curPage = 1;
		RequestDispatcher rd = null;
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String action = request.getParameter("action");

		try {
			memberid = (int) session.getAttribute("memberId");
		} catch (NullPointerException e) {
			System.out.println("세션이 만료되었습니다.");
		}
		if (memberid == 0) {
			rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}

		List<String> pageList = new ArrayList<String>();

		switch (action) {
		case "list":
			if (!request.getParameter("page").equals("")) {
				curPage = Integer.parseInt(request.getParameter("page"));
			}
			bDAO = new BbsDAO();
			int count = bDAO.getCount();
			if (count == 0)			// 데이터가 없을 때 대비
				count = 1;
			int pageNo = (int)Math.ceil(count/10.0);
			if (curPage > pageNo)	// 경계선에 걸렸을 때 대비
				curPage--;
			session.setAttribute("currentBbsPage", curPage);
			// 리스트 페이지의 하단 페이지 데이터 만들어 주기
			String page = null;
			page = "<a href=#>&laquo;</a>&nbsp;";
			pageList.add(page);
			for (int i=1; i<=pageNo; i++) {
				page = "&nbsp;<a href=BbsProcServlet?action=list&page=" + i + ">" + i + "</a>&nbsp;";
				pageList.add(page);
			}
			page = "&nbsp;<a href=#>&raquo;</a>";
			pageList.add(page);
			
			List<BbsDTO> bmList = bDAO.selectJoinAll(curPage);
			request.setAttribute("bbsMemberList", bmList);
			request.setAttribute("pageList", pageList);
			rd = request.getRequestDispatcher("bbs_list.jsp");
	        rd.forward(request, response);
			break;
			
		case "write":
			memberid = Integer.parseInt(request.getParameter("memberid"));
			title = request.getParameter("title");
			content = request.getParameter("content");
			bDAO = new BbsDAO();
			bbs = new BbsDTO();
			bbs.setMemberId(memberid);
			bbs.setContent(content);
			bbs.setTitle(title);

			bDAO.insertBbs(bbs);

			message = memberid + " 의 글작성이 완료되었습니다.";
			url = "BbsProcServlet?action=list&page=1";
			request.setAttribute("message", message);
			request.setAttribute("url", url);
			rd = request.getRequestDispatcher("alertMsg.jsp");
			rd.forward(request, response);
			bDAO.close();
			break;

		case "detail":
			if (!request.getParameter("id").equals("")) {
				id = Integer.parseInt(request.getParameter("id"));
			}

			bDAO = new BbsDAO();
			bbs = bDAO.selectMemberId(id);
			content = bbs.getContent().replaceAll("\r\n", "<br>");
			bbs.setContent(content);
			bDAO.close();
			request.setAttribute("id", id);
			request.setAttribute("bbs", bbs);
			rd = request.getRequestDispatcher("bbs_detailview.jsp");
			rd.forward(request, response);
			break;

		case "update": // 수정 버튼 클릭 시
			if (!request.getParameter("id").equals("")) {
				id = Integer.parseInt(request.getParameter("id"));
			}
			bDAO = new BbsDAO();
			bbs = bDAO.selectOne(id);
			request.setAttribute("name", bDAO.selectMemberId(id).getName());
			content = bbs.getContent().replaceAll("<br>", "\r\n");
			bbs.setContent(content);
			curPage = (int)session.getAttribute("currentBbsPage");
			
			if (bbs.getMemberId() != (Integer) session.getAttribute("memberId")) {
				message = "수정 권한이 없습니다.";
				url = "BbsProcServlet?action=list&page=" + curPage;
				request.setAttribute("message", message);
				request.setAttribute("url", url);
				rd = request.getRequestDispatcher("alertMsg.jsp");
				rd.forward(request, response);
				break;
			}

			bDAO.close();
			request.setAttribute("bbs", bbs);
			rd = request.getRequestDispatcher("bbs_update.jsp");
			rd.forward(request, response);
			break;

		case "execute":
			if (!request.getParameter("id").equals("")) {
				id = Integer.parseInt(request.getParameter("id"));
			}

			title = request.getParameter("title");
			content = request.getParameter("content");

			bDAO = new BbsDAO();
			bbs = bDAO.selectOne(id);
			bbs.setTitle(title);
			bbs.setContent(content);
			System.out.println(bbs.toString());
			curPage = (int)session.getAttribute("currentBbsPage");
			bDAO.updateBbs(bbs);
			bDAO.close();

			message = "수정되었습니다.\\n";
			request.setAttribute("message", message);
			String executeurl =  "BbsProcServlet?action=list&page=" + curPage;
			request.setAttribute("url", executeurl);
			rd = request.getRequestDispatcher("alertMsg.jsp");
			rd.forward(request, response);
			// response.sendRedirect("loginMain.jsp");
			break;

		case "delete": // 삭제 버튼 클릭 시
			if (!request.getParameter("id").equals("")) {
				id = Integer.parseInt(request.getParameter("id"));
			}

			bDAO = new BbsDAO();
			bbs = bDAO.selectOne(id);
			curPage = (int)session.getAttribute("currentBbsPage");

			if (bbs.getMemberId() != (Integer) session.getAttribute("memberId")) {
				message = "삭제 권한이 없습니다.";
				url = "BbsProcServlet?action=list&page=" + curPage;
				request.setAttribute("message", message);
				request.setAttribute("url", url);
				rd = request.getRequestDispatcher("alertMsg.jsp");
				rd.forward(request, response);
				break;
			}
			
			bDAO.deleteBbs(bbs);
			bDAO.close();
			message = "id = " + id + " 이/가 삭제되었습니다.";
			url = "BbsProcServlet?action=list&page=1";
			request.setAttribute("message", message);
			request.setAttribute("url", url);
			rd = request.getRequestDispatcher("alertMsg.jsp");
			rd.forward(request, response);
			break;

		}

	}
}
