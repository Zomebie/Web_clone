package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.sql.DataSource;

import dto.Dto_join;
import dto.Dto_order;

public class Dao_mypage {

	// field

	Context context;
	DataSource datasource;

	Connection conn;

	String sql;
	String sql2;
	PreparedStatement pstmt;
	ResultSet rs;

	// constructor
	public Dao_mypage() throws NamingException {
		context = new InitialContext();
		datasource = (DataSource) context.lookup("java:comp/env/jdbc/OracleDB");

	}

	// method

	//��й�ȣ ����
	public boolean passModification(String id, String pass, String Modifiedpass) {

		sql = "select pass from webCrawling where id=?";
		sql2 = "update webcrawling set pass = ? where id = ?";

		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();

			if(rs.getString(1).equals(pass)) {

				pstmt = conn.prepareStatement(sql2);
				pstmt.setString(1, Modifiedpass);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				
				conn.close();
				pstmt.close();
				rs.close();
				return true;
				
			}else {
				System.out.println("���� ��й�ȣ�� Ʋ�Ƚ��ϴ�.");
				return false;
			}
		} catch (Exception e) {
			System.out.println("modify() : ȸ�������� ���� �Ͽ����ϴ�.");
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException e){}
			if(conn!=null)try{conn.close();}catch(SQLException e){}
		}

		return false;

	}

	//�̸��� ����
	public boolean emailModification(String id, String email) {

		sql = "update webcrawling set email = ? where id = ?";

		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
			
			conn.close();
			pstmt.close();
			rs.close();
			
		} catch (Exception e) {
			System.out.println("emailModification() : ȸ�������� ���� �Ͽ����ϴ�.");
			e.printStackTrace();
			
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException e){}
			if(conn!=null)try{conn.close();}catch(SQLException e){}
		}

		return false;

	}

	//�޴��� ����
	public boolean phoneModification(String id, String phone) {

		sql = "update webcrawling set phone = ? where id = ?";

		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, phone);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
			
			conn.close();
			pstmt.close();
			rs.close();
			
		} catch (Exception e) {
			System.out.println("phoneModification() : ȸ�������� ���� �Ͽ����ϴ�.");
			e.printStackTrace();
			
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException e){}
			if(conn!=null)try{conn.close();}catch(SQLException e){}
		}

		return false;

	}
}
