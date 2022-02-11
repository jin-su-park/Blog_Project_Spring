package com.pjs.blog.user.controller;

import java.io.IOException;
import java.util.Date;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.pjs.blog.user.model.UserVO;
import com.pjs.blog.user.service.IUserService;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	private IUserService service;
	

	@PostMapping("/")
	public String register(@RequestBody UserVO user) {
		System.out.println("param: " + user);
		
		service.register(user);
		return "joinSuccess";
	}
	
	@PostMapping("/checkId") 
	public String checkId(@RequestBody String account) {
		
		System.out.println("parameter: " + account);
		String result = null;
		
		Integer checkNum = service.checkId(account);
		if(checkNum == 1) {
			result = "NO";
		} else {
			result = "OK";
		}
		
		return result;
	}
	
	@PostMapping("/loginCheck")
	public String loginCheck(@RequestBody UserVO inputData, 
							HttpSession session,
							HttpServletResponse response) {
		
	
		
		String result = null;
		

				
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		UserVO dbData = service.selectOne(inputData.getAccount());
		
		if(dbData != null) {
			if(encoder.matches(inputData.getPassword(), dbData.getPassword())) {
				session.setAttribute("login", dbData);
				result = "loginSuccess";
				
				long limitTime = 60 * 60 * 24 * 90;
				
				if(inputData.isAutoLogin()) {
					Cookie loginCookie = new Cookie("loginCookie", session.getId());
					loginCookie.setPath("/");
					loginCookie.setMaxAge((int)limitTime);
					
					response.addCookie(loginCookie);
					
					long expiredDate = System.currentTimeMillis() + (limitTime * 1000);
					Date limitDate = new Date(expiredDate);
					
					service.keepLogin(session.getId(), limitDate, inputData.getAccount());
				}
				
			} else {
				result = "pwFail";
			}
		} else {
			result = "idFail";
		}
		
		return result;
	}
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session,
							HttpServletRequest request,
							HttpServletResponse response) {
		
		UserVO user = (UserVO)session.getAttribute("login");
		
		if(user != null) {
			session.removeAttribute("login");
			session.invalidate();

			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if(loginCookie != null) {
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin("none", new Date(), user.getAccount());
			}
			
		}
		
		return new ModelAndView("redirect:/");
	}	
	
	public UserVO selectOne(String account) {
		
		return service.selectOne(account);
	}
	
	@GetMapping("/change_pw")
	public ModelAndView mypage_pw(HttpSession session) {
		return new ModelAndView("/users/mypage_change_pw");
	}
	
	@PostMapping("/change_pw_ok")
	public ModelAndView change_pw_ok(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
		boolean flag=service.changePwOk(request.getParameter("oldPw"),request.getParameter("newPw"),request);
		ModelAndView mv= new ModelAndView();
		String msg="";
		if(flag) {
			msg="change_success";
		}else {
			msg="change_fail";
		}
		mv.setViewName("/users/mypage_change_pw");
		mv.addObject("msg", msg);
		return mv;
		
	}
	
	@GetMapping("/user_update")
	public ModelAndView mypage_update(HttpSession session) {
		UserVO member=(UserVO)session.getAttribute("login");
		UserVO user=service.selectOne(member.getAccount());
		ModelAndView mv= new ModelAndView();
		mv.addObject("user", user);
		mv.setViewName("/users/mypage_user_update");
		return mv;
	}
	
	@PostMapping("/user_update_ok")
	public ModelAndView user_update_ok(UserVO member,HttpSession session) {
		boolean flag=service.changeUserOk(member);
		ModelAndView mv= new ModelAndView();
		String msg="";
		if(flag) {
		UserVO user=(UserVO)session.getAttribute("login");
		user.setName(member.getName());
		session.setAttribute("login", user);
		mv.setViewName("/users/mypage_user_update");
		msg="changeSuccess";
		mv.addObject("msg", msg);
		mv.addObject("user", member);
		}
		return mv;
	}
	
	@GetMapping("/delete_check")
	public ModelAndView mypage_delete_check() {
		return new ModelAndView("/users/mypage_delete_check");
	}
	
	@PostMapping("/user_delete_ok")
	public ModelAndView delete_ok(HttpServletRequest request,String chkPw) {
		HttpSession session=request.getSession();
		UserVO user=(UserVO)session.getAttribute("login");
		BCryptPasswordEncoder encoder= new BCryptPasswordEncoder();
		ModelAndView mv = new ModelAndView();
		if(encoder.matches(chkPw, user.getPassword())) {
			service.delete(user.getAccount());
			session.invalidate();
			mv.addObject("msg", "delSuccess");
		}else {
			mv.addObject("msg", "delSuccessFail");
		}
		mv.setViewName("/users/mypage_delete_check");
		return mv;
	}
}






