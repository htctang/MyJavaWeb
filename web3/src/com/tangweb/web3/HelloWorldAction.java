package com.tangweb.web3;

import javax.persistence.Entity;
import javax.swing.plaf.synth.SynthOptionPaneUI;

import com.opensymphony.xwork2.ActionSupport;

@Entity
public class HelloWorldAction extends ActionSupport{

	@Override
	public String execute() throws Exception {
		System.out.println("Ö´ÐÐAction");
		return SUCCESS;
	}
	
}
