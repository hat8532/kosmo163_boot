package com.tj.app.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeService {
	
	@Autowired
	private NoticeMapper noticeMapper; // 인터페이스 객체 생성 불가 데이터타입으로 사용가능
	
	
	public List<NoticeDTO> list() throws Exception {
		return noticeMapper.list();
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
