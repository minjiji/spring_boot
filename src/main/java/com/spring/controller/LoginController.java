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
import com.spring.service.SampleService;

@Controller
public class LoginController {

  @Resource
  private SampleService sampleService;
  
  @RequestMapping(value = "/login2")
  public String login2() {
    return "login";
  }

  @RequestMapping(value = "/check-login", method = RequestMethod.POST)
  public String loginCheck(Model model, @RequestParam Map<String, String> params, HttpSession session) {
    
    UserVO vo = new UserVO();
    vo.setId(params.get("id"));
    vo.setPassword(params.get("password"));
    vo = sampleService.getUser(vo);
    
    if (vo == null || vo.getUserName() == null || "".equals(vo.getUserName())) {
      model.addAttribute("message", "ID 혹은 패스워드가 일치하지 않습니다.");
      return "login";
    }
    
    model.addAttribute("userInfo", vo);
    session.setAttribute("userInfo", vo);
    
    return "home";
  }
}
