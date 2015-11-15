package com.tangweb.web3;

import com.opensymphony.xwork2.ActionSupport;
import javax.persistence.Entity;

@Entity
public class TangchuanTestAction extends ActionSupport {

	private String test;
	public String getTest() {
		return test;
	}
	public void setTest(String test) {
		this.test = test;
	}

	public String execute() throws Exception {
		System.out.println("TestAction÷¥––");
		return SUCCESS;
	}

}
