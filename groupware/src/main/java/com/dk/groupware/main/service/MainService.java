package com.dk.groupware.main.service;

import org.springframework.ui.Model;

import com.dk.groupware.common.ServiceInterface;
import com.dk.groupware.draft.dao.DraftDao;
import com.dk.groupware.message.dao.MessageDao;
import com.dk.groupware.notice.dao.NoticeDao;
import com.dk.groupware.schedule.dao.ScheduleDao;

public class MainService implements ServiceInterface {
	private NoticeDao noticeDao;
	private ScheduleDao scheduleDao;
	private DraftDao draftDao;
	private MessageDao messageDao;

	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}

	public void setScheduleDao(ScheduleDao scheduleDao) {
		this.scheduleDao = scheduleDao;
	}

	public void setDraftDao(DraftDao draftDao) {
		this.draftDao = draftDao;
	}

	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}

	public Object service(Object obj) {
		Model model = (Model) obj;
		model.addAttribute("noticeList", noticeDao.list());
		model.addAttribute("scheduleList", scheduleDao.list());
		model.addAttribute("draftList", draftDao.proceedList());
		model.addAttribute("messageList", messageDao.list());
		return null;
	}
}
