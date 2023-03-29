package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;

public class UserInfoDao {

	Connection conn = null;
	Statement stmt = null;
	ResultSet rset = null;

	private static final String URL = "jdbc:postgresql://localhost:5432/hr";
	private static final String USER = "postgres";
	private static final String PASSWORD = "postgres";

	/**
	 * お客様情報新規
	 */

	public void createUser(String email, String userId, String password, String userName, String nameKana) {

		try {
			//データベースを初期化する
			Class.forName("org.postgresql.Driver");
			
			
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			stmt = conn.createStatement();

			LocalDateTime createDateTime = LocalDateTime.now();

			LocalDateTime updateDateTime = createDateTime.plusYears(1);

			String sql = "INSERT "
					+ "INTO user_info_tbl( "
					+ "    email "
					+ "    , user_id "
					+ "    , password "
					+ "    , name "
					+ "    , name_kana "
					+ "    , del_flag "
					+ "    , create_date "
					+ "    , update_date "
					+ ") "
					+ "VALUES ( "
					+ "    '" + email + "' "
					+ "    , '" + userId + "' "
					+ "    , '" + password + "' "
					+ "    , '" + userName + "' "
					+ "    , '" + nameKana + "' "
					+ "    ,'" + 0 + "' "
					+ "    ,'" + createDateTime + "' "
					+ "    ,'" + updateDateTime + "'); ";

			//jar
			System.out.println(sql);
			stmt.executeUpdate(sql);
			stmt.close();
			conn.close();

		} catch (SQLException | ClassNotFoundException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

	}
}
