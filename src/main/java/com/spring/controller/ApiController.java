package com.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spring.models.ApiRequestVO;
import com.spring.models.ApiResultVO;
import com.spring.service.ApiService;

@RestController
public class ApiController {

  @Autowired
  private ApiService apiService;

  @RequestMapping(path = "/api/test-db", method = RequestMethod.GET)
  public ResponseEntity<ApiResultVO> testDb(HttpServletRequest req, @ModelAttribute("apiRequestVO") ApiRequestVO apiRequestVO) {
    ApiResultVO apiResultVO = null;

    try {
      apiResultVO = apiService.testDB();
      apiResultVO.setMessage(apiResultVO.getMessage() + "    param1 : " + apiRequestVO.getParam1() + "     param2 : " + apiRequestVO.getParam2());

    } catch (Exception e) {
      return new ResponseEntity<ApiResultVO>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
    return new ResponseEntity<ApiResultVO>(apiResultVO, HttpStatus.OK);
  }

}
