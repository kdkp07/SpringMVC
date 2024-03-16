package springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.dao.userDao;
import springmvc.model.User;

@Service
public class userService {

	@Autowired
	private userDao dao;

	public int createUser(User user) {
		return this.dao.saveUser(user);
	}
}
