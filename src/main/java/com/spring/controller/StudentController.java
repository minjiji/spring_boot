package com.spring.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.models.MySubjectVO;
import com.spring.models.UserVO;
import com.spring.service.StudentService;

@Controller
public class StudentController {

	@Resource
	private StudentService mStudentService;

	// 학생이 로그인 함
	@RequestMapping(value = "/student")
	public ModelAndView student(HttpSession session) {
		// 나의 수강목록
		UserVO uservo = new UserVO();
		uservo = (UserVO) session.getAttribute("userInfo");
		String id = uservo.getId();

		ModelMap mmv = new ModelMap();
		List<Map<String, Object>> myList = mStudentService.mySubjectList(id);
		mmv.addAttribute("mySubjectList", myList);

		// 강의 목록
		List<Map<String, Object>> list = mStudentService.getSubjectList();
		mmv.addAttribute("subjectList", list);

		return new ModelAndView("pages/studentpage", mmv);
	}

	// 수강취소버튼을 눌렀을 때
	@RequestMapping(value = "/cancleSubject", method = RequestMethod.GET)
	public String cancleSubject(@RequestParam Map<String, String> map, HttpSession session) {
		UserVO uservo = new UserVO();
		uservo = (UserVO) session.getAttribute("userInfo");
		String id = uservo.getId();

		String subjectode = map.get("code");

		MySubjectVO mysubject = new MySubjectVO();
		mysubject.setId(id);
		mysubject.setSubjectCode(subjectode);
		mStudentService.cancleSubject(mysubject);

		return "redirect:/student";
	}

	// 수강신청버튼을 눌렀을 때
	@RequestMapping(value = "/chooseSubject", method = RequestMethod.GET)
	public String chooseSubject(Model model,@RequestParam Map<String, String> map, HttpSession session) {
		UserVO uservo = new UserVO();
		uservo = (UserVO) session.getAttribute("userInfo");
		String id = uservo.getId();

		MySubjectVO mysubject = new MySubjectVO();
		MySubjectVO remysubject = new MySubjectVO();
		// subject_code를 받아왔다
		mysubject.setId(id);
		String subjectode = map.get("code");	
		mysubject.setSubjectCode(subjectode);
		
		
		//이미 신청한 강의인지 확인
		remysubject=mStudentService.checkSubject(mysubject);
		if(remysubject!=null)
		{
			model.addAttribute("message","이미 수강신청된 강의입니다.");
			List<Map<String, Object>> myList = mStudentService.mySubjectList(id);
			model.addAttribute("mySubjectList", myList);

			// 강의 목록
			List<Map<String, Object>> list = mStudentService.getSubjectList();
			model.addAttribute("subjectList", list);

			return "pages/studentpage";
		}
        mStudentService.chooseSubject(mysubject);
        return "redirect:/student";

	}
}
