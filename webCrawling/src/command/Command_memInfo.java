package command;

import java.net.StandardSocketOptions;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao_admin;
import dto.Dto_join;
import dto.Dto_order;
import etc.Command;

public class Command_memInfo implements Command {

	public void exe(HttpServletRequest request, HttpServletResponse response) throws NamingException {
		
		String id = (String)request.getAttribute("id");
		//test
		System.out.println(id);
		// Dao ��ü ����
		Dao_admin dao_admin = new Dao_admin();
		
		// ȸ�� ������ ���� Dto
		Dto_join dto_member =dao_admin.getMemberInformation(id);
		
		// ȸ���� �ֹ� ������ ���� Dto
		Dto_order dto_order = dao_admin.getMemberOrderList(id);
		
		// ȸ���� ��ü �ֹ� ������ ���� Dto list
		ArrayList<Dto_order> list_wholeOrder =dao_admin.getWholeorder(id);
		
		
		
		request.setAttribute("dto_member", dto_member);
		request.setAttribute("dto_order", dto_order);
		request.setAttribute("dto_wholeOrder", list_wholeOrder);
		
	}

}
