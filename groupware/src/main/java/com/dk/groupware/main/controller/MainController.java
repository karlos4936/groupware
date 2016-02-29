package com.dk.groupware.main.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.main.model.Main;
import com.dk.groupware.member.model.Member;

@Controller
public class MainController {
	private ServiceInterface mainService;

	public void setMainService(ServiceInterface mainService) {
		this.mainService = mainService;
	}

	@RequestMapping("/main.do")
	public String list(HttpSession session, Model model) throws Exception {
		System.out.println("MainController.list()");
		Member member = (Member) session.getAttribute("login");
		
		Main main = new Main();
		main.setId(member.getId());
		main.setModel(model);
		
		mainService.service(main);
		
		return "main";
	}

}
