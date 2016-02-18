package com.dk.groupware.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.notice.model.Notice;

@Controller
public class NoticeController {

	private ServiceInterface noticeListService,  noticeViewService,  
	noticeWriteProcessService,  noticeUpdateService,  noticeUpdateProcessService,  
	noticeDeleteProcessService;

	// setters
	public void setNoticeListService(ServiceInterface noticeListService) {
		this.noticeListService = noticeListService;
	}
	public void setNoticeViewService(ServiceInterface noticeViewService) {
		this.noticeViewService = noticeViewService;
	}
	public void setNoticeWriteProcessService(ServiceInterface noticeWriteProcessService) {
		this.noticeWriteProcessService = noticeWriteProcessService;
	}
	public void setNoticeUpdateService(ServiceInterface noticeUpdateService) {
		this.noticeUpdateService = noticeUpdateService;
	}
	public void setNoticeUpdateProcessService(ServiceInterface noticeUpdateProcessService) {
		this.noticeUpdateProcessService = noticeUpdateProcessService;
	}
	public void setNoticeDeleteProcessService(ServiceInterface noticeDeleteProcessService) {
		this.noticeDeleteProcessService = noticeDeleteProcessService;
	}
	

	// 공지사항 리스트 - Model을 추가
	@RequestMapping("/notice/list.do")
	public String list(@RequestParam(value="page", required=false, defaultValue="1")
	int page, Model model)throws Exception{
		System.out.println("NoticeController.list(page)");
		model.addAttribute("list", noticeListService.service(page));
		return "notice/list";
	}
	// 공지사항 글보기
	@RequestMapping("/notice/view.do")
	public String view(int no, Model model) throws Exception{
		System.out.println("NoticeController.view(no)");
		model.addAttribute("notice", noticeViewService.service(no));
		return "notice/view";
	}
	// 글쓰기폼(get상수) 폼과 처리는 파라미터 값이 달라 따로 사용가능
	@RequestMapping(value="/notice/write.do", method=RequestMethod.GET)
	public String write(){
		System.out.println("NoticeController.write():GET");
		return "notice/write";
	}
	// 공지사항 글쓰기처리 (post상수)
	@RequestMapping(value="/notice/write.do", method=RequestMethod.POST)
	public String write(Notice notice){
		System.out.println("NoticeController.write(notice):POST");
		noticeWriteProcessService.service(notice);
		return "redirect:list.do";
	}
	// 공지사항 글수정폼 - Model 추가 : view.jsp에서 no를 꼭! 넘기자
	@RequestMapping(value="/notice/update.do", method=RequestMethod.GET)
	public String update(@RequestParam(value="no", required=false)int no, Model model)
	throws Exception{
		System.out.println("NoticeController.update(no):GET");
		model.addAttribute("notice", noticeUpdateService.service(no));
		return "notice/update";
	}
	// 공지사항 글수정처리
	@RequestMapping(value="/notice/update.do", method=RequestMethod.POST)
	public String update(Notice notice)throws Exception{
		// 세부적인 작성은 '?'를 더 붙인 후 작성하면 됨
		System.out.println("NoticeController.update(notice):POST");
		noticeUpdateProcessService.service(notice);
		return "redirect:view.do?no="+notice.getNo();
	}
	// 공지사항 글삭제처리
	@RequestMapping("/notice/delete.do")
	public String delete(int no)throws Exception{
		System.out.println("NoticeController.delete(no)");
		noticeDeleteProcessService.service(no);
		return "redirect:list.do";
	}
}
