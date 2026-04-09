package com.tj.app.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoticeMapper {
	//list
	List<NoticeDTO> list() throws Exception;
	
	//detail
	NoticeDTO detail(NoticeDTO noticeDTO) throws Exception;
	
	//create
	int create(NoticeDTO noticeDTO) throws Exception;
	
	//update
	int update(NoticeDTO noticeDTO) throws Exception;
	
	//delete
	int delete(NoticeDTO noticeDTO) throws Exception;
}