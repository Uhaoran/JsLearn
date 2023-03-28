package service;

import dao.UserInfoDao;

public class UserInfoService {

	public void createUser(String email, String userId, String password, String name, String nameKana) {

		UserInfoDao userInfoDao = new UserInfoDao();
		userInfoDao.createUser(email, userId, password, name, nameKana);

	}

}