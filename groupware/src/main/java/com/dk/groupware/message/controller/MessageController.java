package com.dk.groupware.message.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dk.groupware.common.DuplicateFile;
import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.member.model.Member;
import com.dk.groupware.message.model.Message;

@Controller
public class MessageController {
	private ServiceInterface messageListService, messageViewService, messageWriteProcessService, messageUpdateService,
			messageUpdateProcessService, messageDeleteProcessService, messageSendListService, messageSendViewService,
			messageSendDeleteProcessService, messageCountService;

	// setter
	public void setMessageListService(ServiceInterface messageListService) {
		this.messageListService = messageListService;
	}

	public void setMessageViewService(ServiceInterface messageViewService) {
		this.messageViewService = messageViewService;
	}

	public void setMessageWriteProcessService(ServiceInterface messageWriteProcessService) {
		this.messageWriteProcessService = messageWriteProcessService;
	}

	public void setMessageUpdateService(ServiceInterface messageUpdateService) {
		this.messageUpdateService = messageUpdateService;
	}

	public void setMessageUpdateProcessService(ServiceInterface messageUpdateProcessService) {
		this.messageUpdateProcessService = messageUpdateProcessService;
	}

	public void setMessageDeleteProcessService(ServiceInterface messageDeleteProcessService) {
		this.messageDeleteProcessService = messageDeleteProcessService;
	}

	public void setMessageSendListService(ServiceInterface messageSendListService) {
		this.messageSendListService = messageSendListService;
	}

	public void setMessageSendViewService(ServiceInterface messageSendViewService) {
		this.messageSendViewService = messageSendViewService;
	}

	public void setMessageSendDeleteProcessService(ServiceInterface messageSendDeleteProcessService) {
		this.messageSendDeleteProcessService = messageSendDeleteProcessService;
	}

	public void setMessageCountService(ServiceInterface messageCountService) {
		this.messageCountService = messageCountService;
	}

	// 페이지 처리 쪽지 리스트
	@RequestMapping("/message/list.do")
	public String list(@RequestParam(value = "page", required = false, defaultValue = "1") int page, HttpSession session, Model model)
			throws Exception {
		System.out.println("MessageController.list(page)");
		// 값 확인
		Member member = (Member) session.getAttribute("login");
		model.addAttribute("list", messageListService.service(member.getId()));
		return "message/list";
	}

	// 쪽지 보기 : view
	@RequestMapping("/message/view.do")
	public String view(Message message, HttpSession session, Model model) throws Exception {
		System.out.println("MessageController.view(no)");
		message.setSession(session);
		model.addAttribute("message", messageViewService.service(message));
		return "message/view";
	}

	// 쪽지 보내기 : write
	@RequestMapping(value = "/message/write.do", method = RequestMethod.GET)
	public String write() {
		System.out.println("MessageController.write():GET");
		return "message/write";
	}

	// 쪽지 보내기 처리
	@RequestMapping(value = "/message/write.do", method = RequestMethod.POST)
	// 파라미터 값에 어떤 파일을 올릴 것인지 작성한다.
	// MultipartFile을 파라미터 값으로 넣는다면 모델에서 굳이 필요치 않다.
	// 받은 파일을 다시 jsp로 넘기기 위해 Model이 필요하다.
	public String write(MultipartFile file1, Message message, Model model, HttpServletRequest request)
			throws IOException {
		System.out.println("MessageController.write(message):POST");
		String realPath = request.getServletContext().getRealPath("/upload/message");
		// 비어있지 않으면
		if (!file1.isEmpty()) {
			String fileName = file1.getOriginalFilename();
			// 중복되지 않는 파일을 받아올 수 있다.
			File file = DuplicateFile.getFile(realPath, file1);
			file1.transferTo(file);
			// 이름만 지정해두면 DB에 저장할 수 있다.
			message.setFileName(file.getName());
		}
		// 출력해보자
		System.out.println(realPath);
		messageWriteProcessService.service(message);
		return "redirect:list.do";
	}

	// 쪽지 삭제 : delete
	@RequestMapping("/message/delete.do")
	public String delete(int no) throws Exception {
		System.out.println("MessageController.delete(no)");
		messageDeleteProcessService.service(no);
		return "redirect:list.do";
	}

	// send

	// 보낸 쪽지 리스트 : list
	@RequestMapping("/message/send/list.do")
	public String sendList(@RequestParam(value = "page", required = false, defaultValue = "1") int page, HttpSession session, Model model)
			throws Exception {
		System.out.println("MessageController.sendList(page)");
		// ** 어트리뷰트에 담을 때 sendList 말고 list로 **
		Member member = (Member) session.getAttribute("login");
		model.addAttribute("list", messageSendListService.service(member.getId()));
		return "message/send/list";
	}

	// 보낸 쪽지 보기 : view
	@RequestMapping("/message/send/view.do")
	public String sendView(int no, Model model) throws Exception {
		System.out.println("MessageControeller.sendView(no)");
		model.addAttribute("message", messageSendViewService.service(no));
		// ** 리턴값 sendView 아니고 send/view **
		return "message/send/view";
	}

	// 쪽지 삭제 : delete
	@RequestMapping("/message/send/delete.do")
	public String sendDelete(int no) throws Exception {
		System.out.println("MessageController.sendDelete(no)");
		messageSendDeleteProcessService.service(no);
		return "redirect:list.do";
	}
	
	// 안읽은 쪽지 카운트
	@RequestMapping("/message/count.do")
	public void count(HttpSession session, HttpServletResponse response, Model model) throws Exception {
		System.out.println("MessageController.count()");
		Member member = (Member) session.getAttribute("login");
		PrintWriter out = response.getWriter();
		
		int count = (Integer) messageCountService.service(member.getId());
		
		if(count != 0)
			out.print("(" + count + ")");
	}

}
