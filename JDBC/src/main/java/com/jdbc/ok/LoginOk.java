package com.jdbc.ok;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdbc.domain.UserDAO;



@WebServlet("/login_ok")
public class LoginOk extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
    public LoginOk() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/*
	 *  1. UserDAO 객체 생성하기
	 *  2. DAO 에 login(id, pw) 메서드를 생성
	 *  	> sql = select*from user where id = ? and pw = ?
	 *  3. login 메서드 안에서 executeQuery() 구문으로 실행
	 *  	> re.next() 결과가 있으면 1, 없으면 0을 반환
	 *  4. login_ok 에서는 세션을 id로 저장하고 화면으로 이동한다.
	 *  	결과가 1인 경우 , mypage.jsp 
	 *  		-> xxx님 환영합니다.
	 *  	결과가 0인 경우 , login_fail.jsp 로 이동
	 *  		-> 로그인을 실패했습니다. 로그인 페이지로 이동하기.
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 폼데이터 처리
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		UserDAO dao = UserDAO.getInstance();
		
		int result = dao.loginid(id);
		int result2 = dao.loginpw(id, pw);
		
		if (result == 1) {
			if (result2 == 1) {
			//자바에서 세션 사용하는방법
			HttpSession session = request.getSession();
			session.setAttribute("user_id", id);
			
			response.sendRedirect("mypage.jsp");
			
		} else {
			response.sendRedirect("login_pw_fail.jsp");
		}
			
		} else {
			response.sendRedirect("login_id_fail.jsp");
		}

	}

}
