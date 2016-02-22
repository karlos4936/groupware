
package com.dk.groupware.data.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.data.model.Data;

@Controller
public class DataController {

	// property니까 private로.
	private ServiceInterface dataListService, dataViewService, dataUpdateService, dataUpdateProcessService,
			dataWriteProcessService, dataDeleteProcessService;

	public void setDataListService(ServiceInterface dataListService) {
		this.dataListService = dataListService;
	}

	public void setDataViewService(ServiceInterface dataViewService) {
		this.dataViewService = dataViewService;
	}

	public void setDataUpdateService(ServiceInterface dataUpdateService) {
		this.dataUpdateService = dataUpdateService;
	}

	public void setDataUpdateProcessService(ServiceInterface dataUpdateProcessService) {
		this.dataUpdateProcessService = dataUpdateProcessService;
	}

	public void setDataWriteProcessService(ServiceInterface dataWriteProcessService) {
		this.dataWriteProcessService = dataWriteProcessService;
	}

	public void setDataDeleteProcessService(ServiceInterface dataDeleteProcessService) {
		this.dataDeleteProcessService = dataDeleteProcessService;
	}

	// 자료게시판 글리스트
	@RequestMapping("/data/list.do")
	public String list(@RequestParam(value = "page", required = false, defaultValue = "1") int page, Model model)
			throws Exception {
		System.out.println("DataController.list()");
		model.addAttribute("list", dataListService.service(page));
		return "data/list";
	}

	// 자료게시판 글보기
	@RequestMapping("/data/view.do")
	public String view(int no, Model model) throws Exception {
		System.out.println("DataController.view(no)");
		model.addAttribute("data", dataViewService.service(no));
		return "data/view";
	}

	// 글쓰기폼 - get
	@RequestMapping(value = "/data/write.do", method = RequestMethod.GET)
	public String write() {
		System.out.println("DataController.write():get");
		return "data/write";
	}

	// 파일 첨부가 된 글쓰기 완료 후의 처리 - post
	@RequestMapping(value = "/data/write.do", method = RequestMethod.POST)
	public String write(@RequestParam("file") MultipartFile multipartFile, 
			@RequestParam("title") String title, Model model, HttpServletRequest request) throws IOException{
		System.out.println("DataController.write():post");
		// 서버에 올라갈 실제 폴더 찾기
		String realPath = request.getServletContext().getRealPath("/upload/data");
		
		if(!multipartFile.isEmpty()){
			String fileName=multipartFile.getOriginalFilename();
			File file = new File(realPath, fileName);
			multipartFile.transferTo(file);
			model.addAttribute("title",title);
			model.addAttribute("imgFile", fileName);
			return "data/view";
		}
		System.out.println(realPath);
		return "data/noUploaded";
	}

	// 글수정 폼
	@RequestMapping(value = "/data/update.do", method = RequestMethod.GET)
	public String update(@RequestParam(value = "no", required = false) int no, Model model) throws Exception {
		System.out.println("DataController.update():get");
		model.addAttribute("data", dataUpdateService.service(no));
		return "data/update";
	}

	// 글수정 처리
	@RequestMapping(value = "/data/update.do", method = RequestMethod.POST)
	public String update(Data data) throws Exception {
		System.out.println("BoardController.update():post");
		dataUpdateProcessService.service(data);
		return "redirect:view.do?no=" + data.getNo();
	}

	// 글삭제 처리
	@RequestMapping("/data/delete.do")
	public String delete(int no) throws Exception {
		System.out.println("DataController.delete()");
		dataDeleteProcessService.service(no);
		return "redirect:list.do";
	}
}