package com.tj.app.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.app.page.Page;

@Service
public class NoticeService {
	
	@Autowired
	private NoticeMapper noticeMapper; // 인터페이스 객체 생성 불가 데이터타입으로 사용가능
	
	
public List<NoticeDTO> list(Page page)throws Exception{
		
		page.makePageNumber(noticeMapper.getCount(page));
		return noticeMapper.list(page);
	}
	
	public NoticeDTO detail(NoticeDTO noticeDTO) throws Exception {
		return noticeMapper.detail(noticeDTO);
	}
	
	public int create(NoticeDTO noticeDTO) throws Exception {
		return noticeMapper.create(noticeDTO);
	}
	
	public int update(NoticeDTO noticeDTO) throws Exception {
		return noticeMapper.update(noticeDTO);
	}
	
	public int delete(NoticeDTO noticeDTO) throws Exception {
		return noticeMapper.delete(noticeDTO);
	}
}
