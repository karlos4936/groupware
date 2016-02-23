package com.dk.groupware.draft.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.draft.model.Draft;
import com.dk.groupware.member.model.Member;

@Controller
public class DraftController {
	private ServiceInterface draftListService;
	private ServiceInterface draftWriteProcessService;

	private ServiceInterface waitListService;
	private ServiceInterface waitViewService;
	private ServiceInterface waitUpdateService;
	private ServiceInterface waitUpdateProcessService;
	private ServiceInterface waitDeleteProcessService;

	private ServiceInterface proceedListService;
	private ServiceInterface proceedViewService;
	private ServiceInterface proceedSignProcessService;

	private ServiceInterface doneListService;
	private ServiceInterface doneViewService;

	public void setDraftListService(ServiceInterface draftListService) {
		this.draftListService = draftListService;
	}

	public void setDraftWriteProcessService(ServiceInterface draftWriteProcessService) {
		this.draftWriteProcessService = draftWriteProcessService;
	}

	public void setWaitListService(ServiceInterface waitListService) {
		this.waitListService = waitListService;
	}

	public void setWaitViewService(ServiceInterface waitViewService) {
		this.waitViewService = waitViewService;
	}

	public void setWaitUpdateService(ServiceInterface waitUpdateService) {
		this.waitUpdateService = waitUpdateService;
	}

	public void setWaitUpdateProcessService(ServiceInterface waitUpdateProcessService) {
		this.waitUpdateProcessService = waitUpdateProcessService;
	}

	public void setWaitDeleteProcessService(ServiceInterface waitDeleteProcessService) {
		this.waitDeleteProcessService = waitDeleteProcessService;
	}

	public void setProceedListService(ServiceInterface proceedListService) {
		this.proceedListService = proceedListService;
	}

	public void setProceedViewService(ServiceInterface proceedViewService) {
		this.proceedViewService = proceedViewService;
	}

	public void setProceedSignProcessService(ServiceInterface proceedSignProcessService) {
		this.proceedSignProcessService = proceedSignProcessService;
	}

	public void setDoneListService(ServiceInterface doneListService) {
		this.doneListService = doneListService;
	}

	public void setDoneViewService(ServiceInterface doneViewService) {
		this.doneViewService = doneViewService;
	}

	@RequestMapping("/draft/list.do")
	public String list(@RequestParam(value = "page", required = false, defaultValue = "1") int page, HttpSession session, Model model)
			throws Exception {
		System.out.println("DraftController.list()");
		Member member = (Member) session.getAttribute("login");
		model.addAttribute("list", draftListService.service(member.getId()));
		return "draft/list";
	}
	
	@RequestMapping(value = "/draft/write.do", method = RequestMethod.GET)
	public String write() throws Exception {
		System.out.println("DraftController.write():GET");
		return "draft/write";
	}

	@RequestMapping(value = "/draft/write.do", method = RequestMethod.POST)
	public String write(Draft draft) throws Exception {
		System.out.println("DraftController.write():POST");
		draftWriteProcessService.service(draft);
		return "redirect:list.do";
	}
	
	@RequestMapping("/draft/wait/list.do")
	public String waitList(@RequestParam(value = "page", required = false, defaultValue = "1") int page, HttpSession session, Model model)
			throws Exception {
		System.out.println("DraftController.waitList()");
		Member member = (Member) session.getAttribute("login");
		model.addAttribute("list", waitListService.service(member.getId()));
		return "draft/wait/list";
	}
	
	@RequestMapping("/draft/wait/view.do")
	public String waitView(int no, Model model) throws Exception {
		System.out.println("DraftController.waitView()");
		model.addAttribute("draft", waitViewService.service(no));
		return "draft/wait/view";
	}
	
	@RequestMapping(value = "/draft/wait/update.do", method = RequestMethod.GET)
	public String update(@RequestParam(value = "no", required = false) int no, Model model) throws Exception {
		System.out.println("DraftController.update():GET");
		model.addAttribute("draft", waitUpdateService.service(no));
		return "draft/wait/update";
	}

	@RequestMapping(value = "/draft/wait/update.do", method = RequestMethod.POST)
	public String update(Draft draft) throws Exception {
		System.out.println("DraftController.update():POST");
		waitUpdateProcessService.service(draft);
		return "redirect:view.do?no=" + draft.getNo();
	}

	@RequestMapping("/draft/wait/delete.do")
	public String delete(int no) throws Exception {
		System.out.println("DraftController.delete()");
		waitDeleteProcessService.service(no);
		return "redirect:list.do";
	}
	
	@RequestMapping("/draft/proceed/list.do")
	public String proceedList(@RequestParam(value = "page", required = false, defaultValue = "1") int page, Model model)
			throws Exception {
		System.out.println("DraftController.proceedList()");
		model.addAttribute("list", proceedListService.service(page));
		return "draft/proceed/list";
	}
	
	@RequestMapping("/draft/proceed/view.do")
	public String proceedView(int no, Model model) throws Exception {
		System.out.println("DraftController.proceedView()");
		model.addAttribute("draft", proceedViewService.service(no));
		return "draft/proceed/view";
	}
	
	@RequestMapping(value = "/draft/proceed/update.do", method = RequestMethod.POST)
	public String sign(Draft draft) throws Exception {
		System.out.println("DraftController.sign():POST");
		proceedSignProcessService.service(draft);
		return "redirect:view.do?no=" + draft.getNo();
	}
	
	@RequestMapping("/draft/done/list.do")
	public String doneList(@RequestParam(value = "page", required = false, defaultValue = "1") int page, Model model)
			throws Exception {
		System.out.println("DraftController.doneList()");
		model.addAttribute("list", doneListService.service(page));
		return "draft/done/list";
	}
	
	@RequestMapping("/draft/done/view.do")
	public String doneView(int no, Model model) throws Exception {
		System.out.println("DraftController.doneView()");
		model.addAttribute("draft", doneViewService.service(no));
		return "draft/done/view";
	}

}
