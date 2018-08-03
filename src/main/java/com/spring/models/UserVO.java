package com.spring.models;

import java.io.Serializable;

@SuppressWarnings("serial")
public class UserVO implements Serializable {

  private String id;

  private String password;

	private String userName;
  
	private String mailAddress;
  
	private String phone;
  
	private String loginTime;
	
	private String type;

  /**
   * @return the id
   */
  public String getId() {
    return id;
  }

  /**
   * @param id the id to set
   */
  public void setId(String id) {
    this.id = id;
  }

  /**
   * @return the userName
   */
  public String getUserName() {
    return userName;
  }

  /**
   * @param userName the userName to set
   */
  public void setUserName(String userName) {
    this.userName = userName;
  }

  /**
   * @return the mailAddress
   */
  public String getMailAddress() {
    return mailAddress;
  }

  /**
   * @param mailAddress the mailAddress to set
   */
  public void setMailAddress(String mailAddress) {
    this.mailAddress = mailAddress;
  }

/**
 * @return the phone
 */
  public String getPhone() {
		return phone;
	}
  /**
   * 
   * @param phone the phone to set
   */

	public void setPhone(String phone) {
		this.phone = phone;
	}

  /**
   * @return the loginTime
   */
  public String getLoginTime() {
    return loginTime;
  }

  /**
   * @param loginTime the loginTime to set
   */
  public void setLoginTime(String loginTime) {
    this.loginTime = loginTime;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }
  
  public String getType() {
	  return type;
  }
  
  public void setType (String type) {
	  this.type = type;
  }

}
