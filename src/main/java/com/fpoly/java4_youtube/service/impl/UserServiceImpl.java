package com.fpoly.java4_youtube.service.impl;

import com.fpoly.java4_youtube.dao.UserDao;
import com.fpoly.java4_youtube.dao.impl.UserDaoImpl;
import com.fpoly.java4_youtube.entity.User;
import com.fpoly.java4_youtube.service.UserService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserServiceImpl implements UserService {
    private UserDao dao;

    public UserServiceImpl() {
        dao = new UserDaoImpl();
    }

    @Override
    public User findById(Integer id) {
        return dao.findById(id);
    }

    @Override
    public User findByEmail(String email) {
        return dao.findByEmail(email);
    }

    @Override
    public User findByUserName(String username) {
        return null;
    }

    @Override
    public User login(String username, String password) {
        return dao.findByUsernameAndPassword(username, password);
    }

    @Override
    public User resetPassword(String email) {
        User existUser = findByEmail(email);
        if (existUser != null) {
            String newPass = String.valueOf((int) (Math.random() * ((9999 - 1000) + 1)) + 1000);
            existUser.setPassword(newPass);
            return dao.update(existUser);
        }
        return null;
    }

    @Override
    public List<User> findAll() {
        return dao.findAll();
    }

    @Override
    public List<User> findAll(int pageNumber, int pageSize) {
        return dao.findAll(pageNumber, pageSize);
    }

    @Override
    public User create(String username, String password, String email) {
        User newUser = new User();
        newUser.setUsername(username);
        newUser.setPassword(password); //bcrypt md5
        newUser.setEmail(email);
        newUser.setIsAdmin(Boolean.FALSE);
        newUser.setIsActive(Boolean.TRUE);
        return dao.create(newUser);
    }

    @Override
    public User update(User entity) {
        return dao.update(entity);
    }

    @Override
    public User delete(String username) {
        User user = dao.findByUserName(username);
        user.setIsActive(Boolean.FALSE);
        return dao.update(user);
    }

    @Override
    public List<User> findUsersLikedVideoByVideoHref(String href) {
        Map<String, Object> params = new HashMap<>();
        params.put("videoHref", href);
        return dao.findUsersLikedVideoByVideoHref(params);
    }
}
