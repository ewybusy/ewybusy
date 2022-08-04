package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

// ȸ������ ���� DAO

public class UserDAO {
	
//	private Connection conn;
//	private PreparedStatement pstmt;
//	private ResultSet rs;
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	// ���Ŀ��� DataBaseUtil���� ���� ���� ���� �� �ֵ��� �Ѵ�.
	// AWS �α��� ���� 
	// user,bbs ���ΰ� �ƴϰ� sql �� ������Ʈ �ȿ� ���� �� �� �ֵ��� �Ѵ�.
	public UserDAO() {
		String dbURL = "jdbc:mysql://database-1.cjdkyisyys3a.ap-northeast-2.rds.amazonaws.com:3306/user";
		String dbID = "admin";
		String dbPassword = "TQ1s13P6XCa";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM user WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs  = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1; // �α��� ����
				}
				else
					return 0; // ��й�ȣ ����ġ
			}
			return -1; // ���̵� ����
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // DB ����
	}
	
	public int join(User user) {
		String SQL = "insert into user values(?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // DB ������
	}

}
