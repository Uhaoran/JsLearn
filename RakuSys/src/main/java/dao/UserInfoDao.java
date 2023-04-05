package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import entity.UserInfoEntity;

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

	public void createUser(UserInfoEntity userInfoEntity) {

		try {
			//データベースを初期化する
			Class.forName("org.postgresql.Driver");

			//データベース接続
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
					+ "    '" + userInfoEntity.getEmail() + "' "
					+ "    , '" + userInfoEntity.getUserId() + "' "
					+ "    , '" + userInfoEntity.getPassword() + "' "
					+ "    , '" + userInfoEntity.getUserName() + "' "
					+ "    , '" + userInfoEntity.getNameKana() + "' "
					+ "    ,'" + 0 + "' "
					+ "    ,'" + createDateTime + "' "
					+ "    ,'" + updateDateTime + "'); ";

			//jar
			System.out.println(sql);
			stmt.executeUpdate(sql);
			stmt.close();
			conn.close();

		} catch (ClassNotFoundException ex) {
			Logger.getLogger(UserInfoDao.class.getName()).log(Level.SEVERE, null, ex);
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

	}

	/*
	 * 全件検索
	 */
	public List<UserInfoEntity> selectAll() {

		List<UserInfoEntity> userList = new ArrayList<>();

		try {

			Class.forName("org.postgresql.Driver");

			conn = DriverManager.getConnection(URL, USER, PASSWORD);

			stmt = conn.createStatement();

			String sql = "SELECT * FROM user_info_tbl where del_flag='0';";
			rset = stmt.executeQuery(sql);

			if (rset != null) {

				while (rset.next()) {

					UserInfoEntity userInfoEntity = new UserInfoEntity();

					userInfoEntity.setEmail(rset.getString("email"));
					userInfoEntity.setUserId(rset.getString("user_id"));
					userInfoEntity.setPassword(rset.getString("password"));
					userInfoEntity.setUserName(rset.getString("name"));
					userInfoEntity.setNameKana(rset.getString("name_kana"));

					userList.add(userInfoEntity);
				}

			}

			rset.close();
			stmt.close();
			conn.close();

		} catch (ClassNotFoundException ex) {
			Logger.getLogger(UserInfoDao.class.getName()).log(Level.SEVERE, null, ex);
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		return userList;

	}

	/*
	 * ユーザ情報変更
	 */
	public void changeUserInfo(UserInfoEntity userInfoEntity) {
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			stmt = conn.createStatement();

			String sql = "UPDATE user_info_tbl\n"
					+ "SET email='" + userInfoEntity.getEmail() + "',\n"
					+ "user_id='" + userInfoEntity.getUserId() + "',\n"
					+ "password='" + userInfoEntity.getPassword() + "',\n"
					+ "user_name='" + userInfoEntity.getUserName() + "',\n"
					+ "name_kana='" + userInfoEntity.getNameKana() + "',\n";

			stmt.executeUpdate(sql);

			stmt.close();
			conn.close();

		} catch (SQLException ex) {
			Logger.getLogger(UserInfoDao.class
					.getName()).log(Level.SEVERE, null, ex);
		}
	}

	/**
	 * ユーザ消除
	 * @param userInfoEntity
	 */
	public void deleteUserInfo(UserInfoEntity userInfoEntity) {
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			stmt = conn.createStatement();

			String sql = "UPDATE user_info_tbl\n"
					+ "SET del_flag='" + 1 + "';";

			stmt.executeUpdate(sql);

			stmt.close();
			conn.close();

		} catch (SQLException ex) {
			Logger.getLogger(UserInfoDao.class
					.getName()).log(Level.SEVERE, null, ex);
		}
	}

	/**
	 * ログイン
	 */
	public void login(UserInfoEntity userInfoEntity) {
		List<UserInfoEntity> loginList = new ArrayList<>();
		try {
			Class.forName("org.postgresql.Driver");
			conn = DriverManager.getConnection(URL, USER, PASSWORD);

			stmt = conn.createStatement();

			String sql = "SELECT *FROM user_info_tbl WHERE user_id ='" + userInfoEntity.getUserId()
					+ "' AND password='" + userInfoEntity.getPassword() + "' ";
			rset = stmt.executeQuery(sql);
			if (rset != null) {
				while (rset.next()) {

					userInfoEntity.setEmail(rset.getString("email"));
					userInfoEntity.setUserId(rset.getString("user_id"));
					userInfoEntity.setPassword(rset.getString("password"));
					userInfoEntity.setUserName(rset.getString("name"));
					userInfoEntity.setNameKana(rset.getString("name_kana"));

					loginList.add(userInfoEntity);
				}
			}

			rset.close();
			stmt.close();
			conn.close();

		} catch (Exception ex) {
			Logger.getLogger(UserInfoDao.class
					.getName()).log(Level.SEVERE, null, ex);
		}

	}

	/*
	 * 個人情報ページ
	 */
	public void UserInfo(UserInfoEntity userInfoEntity) {


		try {

			Class.forName("org.postgresql.Driver");

			conn = DriverManager.getConnection(URL, USER, PASSWORD);

			stmt = conn.createStatement();

			String sql = "SELECT(email,user_id,password,name,name_kana) FROM user_info_tbl where user_id='"
					+ userInfoEntity.getUserId() + "' "
					+ "AND password='" + userInfoEntity.getPassword() + "' ";
			rset = stmt.executeQuery(sql);

			userInfoEntity.setEmail(rset.getString("email"));
			userInfoEntity.setUserId(rset.getString("user_id"));
			userInfoEntity.setPassword(rset.getString("password"));
			userInfoEntity.setUserName(rset.getString("name"));
			userInfoEntity.setNameKana(rset.getString("name_kana"));

			rset.close();
			stmt.close();
			conn.close();

		} catch (ClassNotFoundException ex) {
			Logger.getLogger(UserInfoDao.class.getName()).log(Level.SEVERE, null, ex);
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();

		}
	}
}