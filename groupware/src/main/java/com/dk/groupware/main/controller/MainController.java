package com.dk.groupware.main.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.member.model.Member;

@Controller
public class MainController {
	private ServiceInterface noticeListService;
	private ServiceInterface scheduleListService;
	private ServiceInterface proceedListService;
	private ServiceInterface messageListService;

	public void setNoticeListService(ServiceInterface noticeListService) {
		this.noticeListService = noticeListService;
	}

	public void setScheduleListService(ServiceInterface scheduleListService) {
		this.scheduleListService = scheduleListService;
	}

	public void setProceedListService(ServiceInterface proceedListService) {
		this.proceedListService = proceedListService;
	}

	public void setMessageListService(ServiceInterface messageListService) {
		this.messageListService = messageListService;
	}

	@RequestMapping("/main.do")
	public String list(HttpSession session, Model model) throws Exception {
		System.out.println("MainController.list()");
		Member member = (Member) session.getAttribute("login");
		model.addAttribute("noticeList", noticeListService.service(null));
		model.addAttribute("scheduleList", scheduleListService.service(null));
		model.addAttribute("draftList", proceedListService.service(member.getId()));
		model.addAttribute("messageList", messageListService.service(member.getId()));
		return "main";
	}

}
