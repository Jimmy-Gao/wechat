package org.linuxkernel.wechat.service;

import java.util.List;

import org.linuxkernel.wechat.bean.User;
import org.linuxkernel.wechat.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
public class UserService {

	@Autowired(required = true)
	private UserDao userDao;

	@Transactional
	public void addUser(User user) {
		this.userDao.create(user);
	}

	@Transactional
	public void updateUser(User user) {
		this.userDao.update(user);
	}

	@Transactional
	public List<User> listUsers() {
		return this.userDao.findAll();
	}

	@Transactional
	public User getUserById(int id) {
		return this.userDao.findById(id);
	}

	@Transactional
	public void removeUser(User user) {
		this.userDao.delete(user);
	}

	@Transactional
	public void subscribe(User user) {
		if (null == this.userDao.queryByHQL(" as u where u.name=?",
				new Object[] { user.getName() })) {
			this.userDao.create(user);
		} else {
			this.userDao.updateByHQL(
					"as u set u.state=?,u.date=? where u.name=?", new Object[] {
							user.getState(), user.getDate(), user.getName() });
		}
	}

	@Transactional
	public void unsubscribe(User user) {
		if (null == this.userDao.queryByHQL(" as u where u.name=?",
				new Object[] { user.getName() })) {
			this.userDao.create(user);
		} else {
			this.userDao.updateByHQL(
					"as u set u.state=?,u.date=? where u.name=?", new Object[] {
							user.getState(), user.getDate(), user.getName() });
		}
	}

}
