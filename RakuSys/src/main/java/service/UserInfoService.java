package service;

import dao.UserInfoDao;

public class UserInfoService {

	public void createUser(String email, String userId, String password, String userName, String nameKana) {

		UserInfoDao userInfoDao = new UserInfoDao();
		userInfoDao.createUser(email, userId, password, userName, nameKana);

	}

}