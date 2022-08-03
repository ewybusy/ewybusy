package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

// 게시판 관련 DAO

public class BbsDAO { 
//	Connection conn = null;
//	ResultSet rs = null;

	private Connection conn;
	private ResultSet rs;

	
	// 실제 mysql에 로그인 하게 해줌
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

	// 작성일자 메서드
	public String getDate() { //  현재의 시간 가져오기
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
		return ""; // DB 오류
	}

	// 게시글 번호 부여
	public int getNext() {
		String SQl = "SELECT * FROM BBS ORDER BY bbsID DESC;"; // 원래 소스 String SQl = "SELECT bbsID FROM BBS ORDER BY bbsID DESC";  
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQl);
			rs = pstmt.executeQuery(); 
			if(rs.next()) {
				return rs.getInt(1) +1;
			}
			return 1; // 첫번째 게시물인 경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // DB 오류
	}
	
	// 글쓰기 메서드
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

		return -1; // DB 오류
	}
	
	// 게시글 리스트 메서드 총 10개의 게시글 
	public ArrayList<Bbs> getList(int pageNumber){
		String SQL = "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvaliable = 1 ORDER BY bbsID DESC LIMIT 10;";
		ArrayList<Bbs> list = new ArrayList<Bbs>();
				try {
					PreparedStatement pstmt = conn.prepareStatement(SQL);
					pstmt.setInt(1, getNext() - (pageNumber-1)*10);
					rs = pstmt.executeQuery();
					while(rs.next()) {
						Bbs bbs = new Bbs();
						bbs.setbbsID(rs.getInt(1));
						bbs.setbbsTitle(rs.getString(2));
						bbs.setuserID(rs.getString(3));
						bbs.setbbsDate(rs.getString(4));
						bbs.setbbsContent(rs.getString(5));
						bbs.setbbsAvaliable(rs.getInt(6));
						list.add(bbs);
					}		
				} catch (Exception e) {
					e.printStackTrace();
				}
		return list;
	}
	
	// 페이징 처리 메서드
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
	
	public Bbs getbbs(int bbsID) {
		String SQL = "SELECT * FROM BBS WHERE bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setbbsID(rs.getInt(1));
				bbs.setbbsTitle(rs.getString(2));
				bbs.setuserID(rs.getString(3));
				bbs.setbbsDate(rs.getString(4));
				bbs.setbbsContent(rs.getString(5));
				bbs.setbbsAvaliable(rs.getInt(6));
				return bbs;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null; // 게시글이 없을때 null 반환
	}

	public int update(int bbsID, String bbsTitle, String bbsContent) {
		String SQL = "UPDATE BBS SET bbsTitle = ?, bbsContent = ? WHERE bbsID = ?"; 
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bbsTitle);
			pstmt.setString(2, bbsContent);
			pstmt.setInt(3, bbsID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // DB 오류
	}
	
	public int delete(int bbsID) {
		String SQL = "UPDATE BBS SET bbsAvaliable = 0 WHERE bbsID = ?"; // 글을 삭제하더라도 db에 낭믈 수 있게 0 
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // DB 오류
	}
} 