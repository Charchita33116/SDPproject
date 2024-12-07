package com.klu.jfsd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.klu.jfsd.service.SendEmailService;

@RestController

public class EmailController {
	@Autowired
	private SendEmailService sendEmailService;
	
	@GetMapping("sendEmail")
	public String sendEmail() {
		sendEmailService.sendEmail("charchu18@gmail.com","Test Body","Test Subject");
		return "Sent Successfully";
	}
	
	

}
