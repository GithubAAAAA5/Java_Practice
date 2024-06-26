package com.myweb.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myweb.board.model.BoardDAO;

public class UpdateServiceImpl implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		
		// 2. 서비스 영역에서 num, title, content 를 받아서 update() 메서드를 실행한다.
		String num = request.getParameter("num");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		
		
		BoardDAO dao = BoardDAO.getInstance();
		
		dao.update(num, title, content);
		
		// dao update로 이동
		
	}

}
