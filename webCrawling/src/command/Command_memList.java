// ������ ���������� ȸ�� ���� ��ư Ŭ���� ȸ�� ����� �����ֱ� ���� Command
package command;

import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao_admin;
import dao.Dao_order;
import dto.Dto_join;
import dto.Dto_order;
import etc.Command;
import oracle.jdbc.OracleResultSetMetaData.SecurityAttribute;

public class Command_memList implements Command{

	public void exe(HttpServletRequest request, HttpServletResponse response) {
		
		// ȸ�� ����� ���� ArrayList ��ü
		ArrayList<Dto_join> list_member = null;
		
		// Dao ��ü ����
		Dao_admin dao_admin = null;
		try {
			dao_admin = new Dao_admin();
		} catch (NamingException e) {
			e.printStackTrace();
		}
		
		// ȸ�� ����� ������
		list_member = dao_admin.getMemberList();
		
		//request ��ü�� Set
		request.setAttribute("list_member", list_member);
	}

}
