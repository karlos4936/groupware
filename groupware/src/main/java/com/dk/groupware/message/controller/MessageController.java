package com.dk.groupware.message.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.message.model.Message;

@Controller
public class MessageController {
	private ServiceInterface messageListService, messageViewService, messageWriteProcessService, messageUpdateService,
			messageUpdateProcessService, messageDeleteProcessService, messageSendListService, messageSendViewService,
			messageSendDeleteProcessService;

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

	// 쪽지 리스트 : list
	@RequestMapping("/message/list.do")
	public String list(@RequestParam(value="page", required=false, defaultValue="1")int page, Model model)throws Exception{
		System.out.println("MessageController.list(page)");
		model.addAttribute("list", messageListService.service(page));
		return null;
	}
	// 쪽지 보기 : view
	@RequestMapping("/message/view.do")
	public String view(int no, Model model)throws Exception{
		System.out.println("MessageController.view(no)");
		model.addAttribute("message", messageViewService.service(no));
//		model.addAttribute("message", messageUpdateService.service(no));
		return "message/view";
	}
	// 쪽지 보내기 : write
	@RequestMapping(value="/message/write.do", method=RequestMethod.GET)
	public String write(){
		System.out.println("MessageController.write():GET");
		return "message/write";
	}
	@RequestMapping(value="/message/write.do", method=RequestMethod.POST)
	public String write(Message message)throws Exception{
		System.out.println("MessageController.write(message):POST");
		messageWriteProcessService.service(message);
		return "redirect:list.do";
	}
	// 보기 후  - 쪽지 읽음 처리 : update
	@RequestMapping(value="/message/update.do", method=RequestMethod.GET)
	public String update(@RequestParam(value="no", required=false)int no, Model model)throws Exception{
		System.out.println("MessageController.update(no):GET");
		model.addAttribute("message", messageUpdateService.service(no));
		return "message/update";
	}
	@RequestMapping(value="/message/update.do", method=RequestMethod.POST)
	public String update(Message message)throws Exception{
		System.out.println("MessageController.update(message):POST");
		messageUpdateProcessService.service(message);
		return "redirect:view.do?no="+message.getNo();
	}
	// 쪽지 삭제 : delete
	@RequestMapping("/message/delete.do")
	public String delete(int no)throws Exception{
		System.out.println("MessageController.delete(no)");
		messageDeleteProcessService.service(no);
		return "redirect:list.do";
	}

	
	// send
	
	// 쪽지 리스트 : list
	@RequestMapping("/message/send/list.do")
	public String sendList(@RequestParam(value="page", required=false, defaultValue="1")int page, Model model)throws Exception{
		System.out.println("MessageController.sendList(page)");
//		** 어트리뷰트에 담을 때 sendList 말고 list로 **
		model.addAttribute("list", messageSendListService.service(page));
		System.out.println("보낸쪽지함");
		return null;
	}
	// 쪽지 보기 : view
	@RequestMapping("/message/send/view.do")
	public String sendView(int no, Model model)throws Exception{
		System.out.println("MessageController.sendView(no)");
		model.addAttribute("message", messageSendViewService.service(no));
//		** 리턴값 sendView 아니고 그냥 view **
		return "message/send/view";
	}
	// 쪽지 삭제 : delete
	@RequestMapping("/message/send/delete.do")
	public String sendDelete(int no)throws Exception{
		System.out.println("MessageController.sendDelete(no)");
		messageSendDeleteProcessService.service(no);
		return "redirect:list.do";
	}
	
}
