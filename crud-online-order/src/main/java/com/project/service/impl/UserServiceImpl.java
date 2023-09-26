package com.project.service.impl;

import java.util.List;

import com.project.dao.UserDao;
import com.project.dao.impl.UserDaoImpl;
import com.project.dto.UserDTO;
import com.project.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDao userDao = new UserDaoImpl();

	@Override
	public boolean saveUser(UserDTO user) {
		boolean isUserSaved = userDao.saveUser(user);
		if (isUserSaved) {
			return true;
		}
		return false;
	}

	@Override
	public boolean updateUser(UserDTO user) {
		boolean isUserUpdated = userDao.updateUser(user);
		if (isUserUpdated) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteUser(String email) {
//		boolean isUserDeleted = userDao.deleteUser(email);
//		if (isUserDeleted) {
//			return isUserDeleted;
//		}
//		return false;
		return userDao.deleteUser(email);
	}

	@Override
	public UserDTO searchUser(String email) {
		UserDTO user = userDao.searchUser(email);
		if (user != null) {
			return user;
		}
		return null;
	}

	@Override
	public List<UserDTO> showUsers() {
		// TODO Auto-generated method stub
		return userDao.showUsers();
	}

}
