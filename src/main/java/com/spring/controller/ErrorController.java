package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/error")
public class ErrorController {

  @RequestMapping(value = "/param")
  public String errorBadRequest() {
    return "error/param";
  }
  
  @RequestMapping(value = "/404")
  public String error404() {
    return "error/404";
  }
}
