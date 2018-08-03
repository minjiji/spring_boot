package com.spring.config;

import org.springframework.boot.autoconfigure.web.ServerProperties;
import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.ErrorPage;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;

@Configuration
public class ErrorConfig extends ServerProperties {
  public void customize(ConfigurableEmbeddedServletContainer container) { 
    super.customize(container);
    container.addErrorPages(new ErrorPage(HttpStatus.BAD_REQUEST, "/error/param")); 
    container.addErrorPages(new ErrorPage(HttpStatus.NOT_FOUND, "/error/404")); 
    container.addErrorPages(new ErrorPage("/error/default")); 
  } 
}
