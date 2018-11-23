package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao_join;
import dto.Dto_join;
import etc.ActionForward;

public class Command_CheckingId implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Dao_join dao=new Dao_join();
	   	Dto_join dto=new Dto_join();
	   	ActionForward forward=new ActionForward();
		String id = null;
		boolean confirmIds = true;
		
		try {
			
			id = (String)request.getParameter("memId");
			confirmIds = dao.CheckingId(id);
			
			forward.setRedirect(false);
	   		forward.setPath("./join.jsp");
   			return forward;
   		
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return forward;
	}

}
