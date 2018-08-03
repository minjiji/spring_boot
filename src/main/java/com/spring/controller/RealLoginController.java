package com.spring.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.models.UserVO;
import com.spring.service.LoginService;

@Controller
public class RealLoginController {
	
	@Resource
	  private LoginService loginService;
	
	@RequestMapping(value = "/joinpage")
	  public String joinpage() {
		  return "pages/joinpage";
	  }
	
	@RequestMapping(value = "/check_login", method = RequestMethod.POST)
	  public String loginCheck(Model model, @RequestParam Map<String, String> params, HttpSession session) {
	    
	    UserVO vo = new UserVO();
	    vo.setId(params.get("id"));
	    vo.setPassword(params.get("password"));
	    vo = loginService.getUser(vo);
	    
	    if (vo == null || vo.getUserName() == null || "".equals(vo.getUserName())) {
	      model.addAttribute("message", "ID 혹은 패스워드가 일치하지 않습니다.");
	      return "index";
	    }
	    
	    model.addAttribute("userInfo", vo);
	    session.setAttribute("userInfo", vo);
	    
	    
	    
	    System.out.println("결과" + vo.getType());
	    
	    //return "pages/profmain";
	    
	    int typeNum = Integer.parseInt(vo.getType());
	    
	    if (typeNum == 1){
	    	return "redirect:/manager";
	    } else {
	    	return "redirect:/student";
	    }
	    
	  }
	
	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	  public String profmain() {
	    
		return "pages/profmain";
	    
	  }
	
	@RequestMapping(value = "/edit")
	  public String edit() {
		  return "pages/mypage";
	  }
	
	@RequestMapping(value = "/logout")
	  public String logout(Model model, @RequestParam Map<String, String> params, HttpSession session) {
		  session.invalidate();
		  return "index";
	  }
	
	@RequestMapping(value = "/addsub")
	  public String addsub() {
		  return "pages/subjectAdd";
	  }

}
