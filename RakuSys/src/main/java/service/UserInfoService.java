package service;

import java.util.ArrayList;
import java.util.List;

import dao.UserInfoDao;
import dto.UserInfoDto;
import entity.UserInfoEntity;

public class UserInfoService {

	UserInfoDao userInfoDao = new UserInfoDao();
	UserInfoEntity userInfoEntity = new UserInfoEntity();

	/**
	 * ユーザ新規作成
	 * @param userInfoDto
	 */
	public void createUser(UserInfoDto userInfoDto) {

		System.out.println(userInfoDto.getEmail());
		System.out.println(userInfoDto.getUserId());
		System.out.println(userInfoDto.getPassword());
		System.out.println(userInfoDto.getUserName());
		System.out.println(userInfoDto.getNameKana());

		userInfoEntity.setEmail(userInfoDto.getEmail());
		userInfoEntity.setUserId(userInfoDto.getUserId());
		userInfoEntity.setPassword(userInfoDto.getPassword());
		userInfoEntity.setUserName(userInfoDto.getUserName());
		userInfoEntity.setNameKana(userInfoDto.getNameKana());

		userInfoDao.createUser(userInfoEntity);

	}

	/**
	 * 全件検索
	 * @return
	 */
	public List<UserInfoDto> selectAll() {

		List<UserInfoEntity> list = userInfoDao.selectAll();

		List<UserInfoDto> userList = new ArrayList<>();

		for (UserInfoEntity userInfoEntity : list) {

			UserInfoDto userInfoDto = new UserInfoDto();

			userInfoDto.setEmail(userInfoEntity.getEmail());
			userInfoDto.setUserId(userInfoEntity.getUserId());
			userInfoDto.setPassword(userInfoEntity.getPassword());
			userInfoDto.setUserName(userInfoEntity.getUserName());
			userInfoDto.setNameKana(userInfoEntity.getNameKana());

			userList.add(userInfoDto);
		}

		return userList;

	}

	/**
	 * ユーザ変更
	 * 
	 * @param userInfoDto
	 */
	public void changeUserInfo(UserInfoDto userInfoDto) {

		System.out.println(userInfoDto.getEmail());
		System.out.println(userInfoDto.getUserId());
		System.out.println(userInfoDto.getPassword());
		System.out.println(userInfoDto.getUserName());
		System.out.println(userInfoDto.getNameKana());

		userInfoEntity.setEmail(userInfoDto.getEmail());
		userInfoEntity.setUserId(userInfoDto.getUserId());
		userInfoEntity.setPassword(userInfoDto.getPassword());
		userInfoEntity.setUserName(userInfoDto.getUserName());
		userInfoEntity.setNameKana(userInfoDto.getNameKana());

		userInfoDao.changeUserInfo(userInfoEntity);

	}

	/**
	 * ユーザ消除
	 * @param userInfoDto
	 */
	public void deleteUserInfo(UserInfoDto userInfoDto) {

		System.out.println(userInfoDto.getEmail());
		System.out.println(userInfoDto.getUserId());
		System.out.println(userInfoDto.getPassword());
		System.out.println(userInfoDto.getUserName());
		System.out.println(userInfoDto.getNameKana());

		userInfoEntity.setEmail(userInfoDto.getEmail());
		userInfoEntity.setUserId(userInfoDto.getUserId());
		userInfoEntity.setPassword(userInfoDto.getPassword());
		userInfoEntity.setUserName(userInfoDto.getUserName());
		userInfoEntity.setNameKana(userInfoDto.getNameKana());

		userInfoDao.deleteUserInfo(userInfoEntity);

	}

	/*
	 * ログイン
	 */
	public void login(UserInfoDto userInfoDto) {

		System.out.println(userInfoDto.getUserId());
		System.out.println(userInfoDto.getPassword());

		UserInfoEntity userInfoEntity = new UserInfoEntity();
		userInfoEntity.setUserId(userInfoDto.getUserId());
		userInfoEntity.setPassword(userInfoDto.getPassword());
		
		if (userInfoDto.getUserId().equals(userInfoEntity.getUserId())
				&& userInfoDto.getPassword().equals(userInfoEntity.getPassword())) {
			System.out.println("ログイン出来ました");
		}
		userInfoDao.login(userInfoEntity);
	}
	/*
	 * 個人情報ページ
	 */
	public void userInfo(UserInfoDto userInfoDto) {
		System.out.println(userInfoDto.getEmail());
		System.out.println(userInfoDto.getUserId());
		System.out.println(userInfoDto.getPassword());
		System.out.println(userInfoDto.getUserName());
		System.out.println(userInfoDto.getNameKana());

		userInfoEntity.setEmail(userInfoDto.getEmail());
		userInfoEntity.setUserId(userInfoDto.getUserId());
		userInfoEntity.setPassword(userInfoDto.getPassword());
		userInfoEntity.setUserName(userInfoDto.getUserName());
		userInfoEntity.setNameKana(userInfoDto.getNameKana());

		userInfoDao.UserInfo(userInfoEntity);

	}
}