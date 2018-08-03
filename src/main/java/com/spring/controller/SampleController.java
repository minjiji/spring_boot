package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SampleController {

	
  @RequestMapping(value = "/main")
  public String main(Model model, @RequestParam(value="name", required=false) String name) {
    model.addAttribute("name", name);
    return "pages/main";
  }
  
  
  @RequestMapping(value = "/main2")
  public String main2(Model model, @RequestParam(value="name", required=true) String name) {
    model.addAttribute("paramName", name);
    model.addAttribute("javaName", "java " + name);
    return "pages/main2";
  }
}
