package com.myweb.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myweb.board.service.ContentServiceImpl;
import com.myweb.board.service.DeleteServiceImpl;
import com.myweb.board.service.GetListServiceimpl;
import com.myweb.board.service.IBoardService;
import com.myweb.board.service.RegisterServiceImpl;
import com.myweb.board.service.UpdateServiceImpl;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("*.board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BoardController() {}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	
	// .board 로 끝나는 요청은 이 컨트롤로 들어오게 처리한다.
	// 1. get, post 요청을 하나의 메서드로 연결한다. (doAction)
	// 2. 컨텍스트 패스를 제거 /board/list.board 요청으로 들어오면 board_list.jsp 화면으로 이동
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());
		
		System.out.println(command);
		
		IBoardService service = null;
		
		if(command.equals("/board/list.board")) {		// 글 목록
			// 게시글 목록을 가지고 화면으로 이동...
			service = new GetListServiceimpl();
			service.execute(request, response);
			
			// 전달 해야 할 값은 service 영역에서 전달할 내용을 강제 저장
			RequestDispatcher dp = request.getRequestDispatcher("board_list.jsp");
			dp.forward(request, response);
			
		} else if ( command.equals("/board/write.board")) { // 글 작성
			response.sendRedirect("board_write.jsp");
			
		} else if ( command.equals("/board/register.board")) {
			// 서비스 객체 생성
			service = new RegisterServiceImpl();
			service.execute(request, response);
			
			response.sendRedirect("list.board");
			
		} else if ( command.equals("/board/content.board")) {
			service = new ContentServiceImpl();
			service.execute(request, response);
			
//			System.out.println("게시글 번호 :" + request.getParameter("num"));
			
			RequestDispatcher dp = request.getRequestDispatcher("board_content.jsp");
			dp.forward(request, response);
			
		} else if (command.equals("/board/modify.board")) {
			service = new ContentServiceImpl();
			service.execute(request, response);
			
			RequestDispatcher dp = request.getRequestDispatcher("board_modify.jsp");
			dp.forward(request, response);
			
		} else if (command.equals("/board/update.board")) {
			/*
			 *  1. UpdateServiceImpl 을 생성한다.
			 *  2. 서비스 영역에서 num, title, content 를 받아서 update() 메서드를 실행한다.
			 *  3. DAO 의 update() 에서는 update 구문으로 데이터를 수정한다.
			 *  4. 페이지 이름을 상세보기화면으로 연결(단, 필요한 값을 전달해야 한다.)
			 *  
			 *  sql = "update board set title =?, content=? where num =?"
			 */
			
			// 1. UpdateServiceImpl 을 생성한다.
			service = new UpdateServiceImpl();
			service.execute(request, response);
			
			//public class UpdateServiceImpl 로 이동
			
			String num = request.getParameter("num");	//  번호를 받아와
			String pageNum = request.getParameter("pageNum"); // 현재 페이지
			response.sendRedirect("content.board?num=" + num + "pageNum=" + pageNum);
		
		} else if (command.equals("/board/delete.board")) {
			/*
			 *  1. DeleteServiceImpl 을 생성한다.
			 *  2. 서비스 영역에서는 num을 받아서 delete() 메서드 실행한다.
			 *  3. DAO 의 delete() 에서는 delete구문으로 삭제한다
			 *  4. 페이지 이동을 목록으로
			 *  
			 *  sql = "delete from board where num = ?";
			 */
			
			service = new DeleteServiceImpl();
			service.execute(request, response);
			
			response.sendRedirect("list.board");
			
		}
		
		
	}
	
}
