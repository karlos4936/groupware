package com.dk.groupware.anonymous.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dk.groupware.anonymous.model.Anonymous;
import com.dk.groupware.anonymous.model.AnonymousReply;
import com.dk.groupware.common.ServiceInterface;

@Controller
public class AnonymousController {
	private ServiceInterface anonymousListService;
	private ServiceInterface anonymousViewService;
	private ServiceInterface anonymousWriteProcessService;
	private ServiceInterface anonymousUpdateService;
	private ServiceInterface anonymousUpdateProcessService;
	private ServiceInterface anonymousDeleteProcessService;

	private ServiceInterface anonymousReplyWriteProcessService;
	private ServiceInterface anonymousReplyDeleteProcessService;

	public void setAnonymousListService(ServiceInterface anonymousListService) {
		this.anonymousListService = anonymousListService;
	}

	public void setAnonymousViewService(ServiceInterface anonymousViewService) {
		this.anonymousViewService = anonymousViewService;
	}

	public void setAnonymousWriteProcessService(ServiceInterface anonymousWriteProcessService) {
		this.anonymousWriteProcessService = anonymousWriteProcessService;
	}

	public void setAnonymousUpdateService(ServiceInterface anonymousUpdateService) {
		this.anonymousUpdateService = anonymousUpdateService;
	}

	public void setAnonymousUpdateProcessService(ServiceInterface anonymousUpdateProcessService) {
		this.anonymousUpdateProcessService = anonymousUpdateProcessService;
	}

	public void setAnonymousDeleteProcessService(ServiceInterface anonymousDeleteProcessService) {
		this.anonymousDeleteProcessService = anonymousDeleteProcessService;
	}

	public void setAnonymousReplyWriteProcessService(ServiceInterface anonymousReplyWriteProcessService) {
		this.anonymousReplyWriteProcessService = anonymousReplyWriteProcessService;
	}

	public void setAnonymousReplyDeleteProcessService(ServiceInterface anonymousReplyDeleteProcessService) {
		this.anonymousReplyDeleteProcessService = anonymousReplyDeleteProcessService;
	}

	@RequestMapping("/anonymous/list.do")
	public String list(@RequestParam(value = "page", required = false, defaultValue = "1") int page, Model model)
			throws Exception {
		System.out.println("AnonymousController.list()");
		model.addAttribute("list", anonymousListService.service(page));
		return "anonymous/list";
	}

	@RequestMapping("/anonymous/view.do")
	public String view(int no, Model model) throws Exception {
		System.out.println("AnonymousController.view()");
		model.addAttribute("anonymous", anonymousViewService.service(no));
		return "anonymous/view";
	}

	@RequestMapping(value = "/anonymous/write.do", method = RequestMethod.GET)
	public String write() throws Exception {
		System.out.println("AnonymousController.write():GET");
		return "anonymous/write";
	}

	@RequestMapping(value = "/anonymous/write.do", method = RequestMethod.POST)
	public String write(Anonymous anonymous) throws Exception {
		System.out.println("AnonymousController.write():POST");
		anonymousWriteProcessService.service(anonymous);
		return "redirect:list.do";
	}

	@RequestMapping(value = "/anonymous/update.do", method = RequestMethod.GET)
	public String update(@RequestParam(value = "no", required = false) int no, Model model) throws Exception {
		System.out.println("AnonymousController.update():GET");
		model.addAttribute("anonymous", anonymousUpdateService.service(no));
		return "anonymous/update";
	}

	@RequestMapping(value = "/anonymous/update.do", method = RequestMethod.POST)
	public String update(Anonymous anonymous) throws Exception {
		System.out.println("AnonymousController.update():POST");
		anonymousUpdateProcessService.service(anonymous);
		return "redirect:view.do?no=" + anonymous.getNo();
	}

	@RequestMapping("/anonymous/delete.do")
	public String delete(int no) throws Exception {
		System.out.println("AnonymousController.delete()");
		anonymousDeleteProcessService.service(no);
		return "redirect:list.do";
	}

	@RequestMapping(value = "/anonymous/reply/write.do", method = RequestMethod.POST)
	public String reply(AnonymousReply anonymousReply) throws Exception {
		System.out.println("AnonymousController.reply():POST");
		anonymousReplyWriteProcessService.service(anonymousReply);
		return "redirect:../view.do?no=" + anonymousReply.getNo();
	}
}
