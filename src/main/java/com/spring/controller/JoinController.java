package com.spring.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.models.JoinVO;
import com.spring.models.UserVO;
import com.spring.service.JoinService;

@Controller
public class JoinController {
	
	@Resource
	private JoinService mJoinService;

	
	//회원가입 정보 입력 후 
	@RequestMapping(value="/joined")
	public String addMember(JoinVO join, Model model){
		//아이디 있는지 확인
		JoinVO checkvo = new JoinVO();
		//입력받은 id를 checkvo에 넣어줌.
		checkvo.setId(join.getId());
		
		System.out.println(join);
		
		checkvo=mJoinService.checkId(checkvo);
		
		if(checkvo!=null){
			model.addAttribute("message","이미 사용중인 ID입니다.");
			return "pages/joinpage";
		}
			//Service에 정보 전달
			mJoinService.addMember(join);
			//login페이지로
			return "index";
		
	}
	
	//MyPage를 눌렀을 때 
	@RequestMapping(value="/mypage")
	public String checkUser(Model model,HttpSession session){
		JoinVO joinvo = new JoinVO();
		UserVO uservo = new UserVO();
		uservo = (UserVO)session.getAttribute("userInfo");
		//세션에서 id를 받아온다.
		String id = uservo.getId();
		joinvo.setId(id);		
		joinvo = mJoinService.getUser(joinvo);
		
		model.addAttribute("userinfo",joinvo);
		
		return "pages/mypage";
	}
	
	//MyPage에서 정보를 수정했을 때
	@RequestMapping(value="/change")
	public String changUserInfo(@RequestParam Map<String, String> params,HttpSession session){
		JoinVO joinvo = new JoinVO();
		UserVO uservo = new UserVO();
		uservo = (UserVO)session.getAttribute("userInfo");
		//세션에서 id를 받아온다.
		String id = uservo.getId();
		joinvo.setId(id);
		joinvo.setMailAddress(params.get("mailAddress"));
		joinvo.setPhone(params.get("phone"));
		
		mJoinService.changeUserInfo(joinvo);
		
	    int typeNum = Integer.parseInt(uservo.getType());
	    
	    if (typeNum == 1){
	    	return "pages/profmain";
	    } else {
	    	return "redirect:/student";
	    }

	}
	
	
}
