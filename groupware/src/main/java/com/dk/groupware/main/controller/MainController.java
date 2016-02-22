package com.dk.groupware.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dk.groupware.common.ServiceInterface;

@Controller
public class MainController {
	private ServiceInterface mainService;

	public void setMainService(ServiceInterface mainService) {
		this.mainService = mainService;
	}

	@RequestMapping("/main.do")
	public String list(Model model) throws Exception {
		System.out.println("MainController.list()");
		mainService.service(model);
		return "main";
	}

}
