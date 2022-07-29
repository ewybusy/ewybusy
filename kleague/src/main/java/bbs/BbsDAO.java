package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BbsDAO { 
//	Connection conn = null;
//	ResultSet rs = null;

	private Connection conn;
	private ResultSet rs;

	// ���� mysql�� �α��� �ϰ� ����
	public BbsDAO() {
		String dbURL = "jdbc:mysql://localhost:3306/bbs";
		String dbID = "root";
		String dbPassword = "root";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// �ۼ����� �޼���
	public String getDate() { //  ������ �ð� ��������
		String SQl = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQl);
			rs = pstmt.executeQuery(); 
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; // DB ����
	}

	// �Խñ� ��ȣ �ο�
	public int getNext() {
		String SQl = "SELECT * FROM BBS ORDER BY bbsID DESC;"; // ���� �ҽ� String SQl = "SELECT bbsID FROM BBS ORDER BY bbsID DESC";  
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQl);
			rs = pstmt.executeQuery(); 
			if(rs.next()) {
				return rs.getInt(1) +1;
			}
			return 1; // ù��° �Խù��� ���
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // DB ����
	}
	
	// �۾��� �޼���
	public int write(String bbsTitle, String userID, String bbsContect) {
		String SQL = "INSERT INTO BBS VALUES (?, ?, ?, ?, ?, ?)"; 
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, bbsContect);
			pstmt.setInt(6, 1);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return -1; // DB ����
	}
	
	// �Խñ� ����Ʈ �޼���
	public ArrayList<Bbs> getList(int pageNumber){
		String SQL = "SELECT * FROM BBS WHERE bbsID < ? AND bbaAvaliable = 1 ORDER BY bbsID DESC LIMIT10;";
		ArrayList<Bbs> list = new ArrayList<Bbs>();
				try {
					PreparedStatement pstmt = conn.prepareStatement(SQL);
					pstmt.setInt(1, getNext() - (pageNumber-1)*10);
					rs = pstmt.executeQuery();
					while(rs.next()) {
						Bbs bbs = new Bbs();
						bbs.setBbsID(rs.getInt(1));
						bbs.setBbsTitle(rs.getString(2));
						bbs.setUserID(rs.getString(3));
						bbs.setBbsDate(rs.getString(4));
						bbs.setBbsContent(rs.getString(5));
						bbs.setBbsAvaliable(rs.getInt(6));
						list.add(bbs);
					}
					
				} catch (Exception e) {
					e.printStackTrace();
				}
		return list;
	}
	
	// ����¡ ó�� �޼���
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvaliable = 1";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  getNext() - (pageNumber-1)*10);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	

} 