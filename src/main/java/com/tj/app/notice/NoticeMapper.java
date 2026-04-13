package com.tj.app.notice;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.tj.app.page.Page;

@Mapper
public interface NoticeMapper {
	
public Long getCount(Page page)throws Exception;
	
	//list
	public List<NoticeDTO> list(Page page)throws Exception;
	
	//detail
	public NoticeDTO detail(NoticeDTO noticeDTO)throws Exception;
	
	//create
	public int create(NoticeDTO noticeDTO)throws Exception;
	
	//update
	public int update(NoticeDTO noticeDTO)throws Exception;
	
	//delete
	public int delete(NoticeDTO noticeDTO)throws Exception;
}