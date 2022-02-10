package com.pjs.blog.user.service;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.pjs.blog.user.model.UserVO;
import com.pjs.blog.user.repository.IUserMapper;

@Service
public class UserService implements IUserService {

	@Autowired
	private IUserMapper mapper;
	
	@Override
	public void register(UserVO user) {
		
		//회원 비밀번호를 암호화 인코딩
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		System.out.println("암호화 전: " + user.getPassword());
		
		//비밀번호를 암호화하여 다시 user객체에 저장.
		String securePw = encoder.encode(user.getPassword());
		user.setPassword(securePw);
		System.out.println("암호화 후: " + securePw);
		
		mapper.register(user);
	}
	
	@Override
	public Integer checkId(String account) {
		return mapper.checkId(account);
	}
	
	@Override
	public void delete(String account) {
		mapper.delete(account);
	}
	
	@Override
	public UserVO selectOne(String account) {
		return mapper.selectOne(account);
	}
	
	@Override
	public List<UserVO> selectAll() {
		return mapper.selectAll();
	}
	
	@Override
	public void keepLogin(String sessionId, Date limitDate, String account) {
		
		Map<String, Object> datas = new HashMap<>();
		datas.put("sessionId", sessionId);
		datas.put("limitDate", limitDate);
		datas.put("account", account);
		
		mapper.keepLogin(datas);		
	}
	
	@Override
	public UserVO getUserWithSessionId(String sessionId) {
		return mapper.getUserWithSessionId(sessionId);
	}

	@Override
	public boolean changePwOk(String oldpassword,String newpassword,HttpServletRequest request){
		System.out.println("service 진입");
		HttpSession session=request.getSession();
		UserVO user=(UserVO)session.getAttribute("login");
		BCryptPasswordEncoder encoder= new BCryptPasswordEncoder();
		if(encoder.matches(oldpassword,user.getPassword())){
			String password=encoder.encode(newpassword);
			Map<String,Object> datas= new HashMap<>();
			datas.put("password", password);
			datas.put("account", user.getAccount());
			mapper.changePwOk(datas);
			return true;
		}else {
			return false;
		}
	}

	@Override
	public boolean changeUserOk(UserVO user) {
		
		mapper.changeUserOk(user);
		return true;
		
	}

}










