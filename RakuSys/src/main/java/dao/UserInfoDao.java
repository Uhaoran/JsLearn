package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;

public class UserInfoDao {

	Connection conn = null;
	Statement stmt = null;
	ResultSet rset = null;

	final String url = "jdbc:postgresql://localhost:5432/hr";
	final String user = "postgres";
	final String password = "postgres";

	/**
	 * お客様情報新規
	 */

	public void createUser(String email, String userId, String password, String name, String nameKana) {
		
	

		try {

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
					+ "    , '" + name+ "' "
					+ "    , '" + nameKana + "' "
					+ "    ,'" + 0 + "' "
					+ "    ,'" + createDateTime + "' "
					+ "    ,'" + updateDateTime + "'); ";

			//jar
			System.out.println(sql);
			stmt.executeUpdate(sql);
			stmt.close();
			conn.close();

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

	}
}
