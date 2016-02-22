package com.dk.groupware.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.member.model.Member;

@Controller
public class MemberController {

	// xml에서 property를 줬으니까 private
	private ServiceInterface memberListService, memberViewService, memberUpdateService,
	memberUpdateProcessService,memberWriteProcessService,
	memberDeleteProcessService, myPageViewService, loginProcessService;
	
	// setters
	public void setMemberListService(ServiceInterface memberListService){
		this.memberListService=memberListService;
	}
	
	public void setMemberViewService(ServiceInterface memberViewService){
		this.memberViewService=memberViewService;
	}
	
	public void setMemberUpdateService(ServiceInterface memberUpdateService) {
		this.memberUpdateService = memberUpdateService;
	}

	public void setMemberUpdateProcessService(ServiceInterface memberUpdateProcessService) {
		this.memberUpdateProcessService = memberUpdateProcessService;
	}

	public void setMemberWriteProcessService(ServiceInterface memberWriteProcessService) {
		this.memberWriteProcessService = memberWriteProcessService;
	}

	public void setMemberDeleteProcessService(ServiceInterface memberDeleteProcessService) {
		this.memberDeleteProcessService = memberDeleteProcessService;
	}
	
	public void setMyPageViewService(ServiceInterface myPageViewService){
		this.myPageViewService=myPageViewService;
	}

	public void setLoginProcessService(ServiceInterface loginProcessService) {
		this.loginProcessService = loginProcessService;
	}

	// 사원 리스트
	@RequestMapping("/member/list.do")
	public String list(@RequestParam(value="page", required=false, defaultValue="1")
	int page, Model model) throws Exception{
		System.out.println("MemberController.list()");
		model.addAttribute("list", memberListService.service(page));
		return "member/list";
	}
	
	// 사원 정보 보기
	@RequestMapping("member/view.do")
	public String view(int id, Model model) throws Exception{
		System.out.println("MemberController.view(id)");
		model.addAttribute("member", memberViewService.service(id));
		return "member/view";
	}
	
	// 사원 정보 수정 폼
	@RequestMapping(value="/member/update.do", method=RequestMethod.GET)
	public String update(@RequestParam(value="id", required=false) 
	int id, Model model) throws Exception{
		System.out.println("MemberController.update():get");
		model.addAttribute("member", memberUpdateService.service(id));
		return "member/update";
	}
	
	// 사원 정보 수정 처리
	@RequestMapping(value="/member/update.do", method=RequestMethod.POST)
	public String update(Member member) throws Exception{
		System.out.println("MemberController.update():post");
		memberUpdateProcessService.service(member);
		return "redirect:view.do?id=" + member.getId();
	}
	
	// 사원 등록 폼: get
	@RequestMapping(value="/member/write.do", method=RequestMethod.GET)
	public String write(){
		System.out.println("MemberController.write():get");
		return "member/write";
	}
	
	// 사원 등록 처리: post
	@RequestMapping(value="/member/write.do", method=RequestMethod.POST)
	public String write(Member member) throws Exception{
		System.out.println("MemberController.write():post");
		memberWriteProcessService.service(member);
		return "redirect:list.do";
	}
	
	// 사원 퇴사 처리(탈퇴)
	@RequestMapping("/member/delete.do")
	public String delete(int id) throws Exception{
		System.out.println("MemberController.delete()");
		memberDeleteProcessService.service(id);
		return "redirect:list.do";
	}
	
	// 내정보 보기
	@RequestMapping("/mypage/view.do")
	public String mview(int id, Model model) throws Exception{
		System.out.println("MemberController.mview()");
		model.addAttribute("member", myPageViewService.service(id));
		return "member/mView";
	}
	
	// 로그인 폼: get
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	public String login(){
		System.out.println("MemberController.login():get");
		return "index";
	}
	
	// 로그인 처리: post
	@RequestMapping(value="/index.do", method=RequestMethod.POST)
	public String login(HttpSession session, Member member) throws Exception{
		System.out.println("MemberController.login():post");
		session.setAttribute("login", loginProcessService.service(member));
		return "redirect:/data/list.do";
	}
	
	// 로그아웃 처리
	@RequestMapping("/index.do")
	public String logout(HttpSession session, Member member)throws Exception{
		session.setAttribute("login", null);
		return "redirect:index.do";
	}
	
}
