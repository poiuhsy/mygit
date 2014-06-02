package com.meetin.action.meeting;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meetin.action.Action;
import com.meetin.action.ActionForward;
import com.meetin.dao.MeetingDao;
import com.meetin.dto.Meeting;

public class MeetingForwardAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward(); 
		forward.setRedirect(false);
		
		String commandURI = request.getRequestURI();
		String command = commandURI.substring(commandURI.lastIndexOf("/")+1);
		int mNum = Integer.parseInt(command);
		
		MeetingDao dao = new MeetingDao();
		Meeting meeting = dao.getMeeting(mNum);
		if(meeting != null) {
			request.setAttribute("meeting", meeting);
			forward.setPath("/WEB-INF/jsp/view/meeting_detail.jsp");
		} else {
			forward.setPath("/WEB-INF/jsp/common/error/no_page.jsp");
		}
		dao.disconnect();
		return forward;
	}

}
