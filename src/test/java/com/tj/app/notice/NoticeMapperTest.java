//package com.tj.app.notice;
//
//import static org.assertj.core.api.Assertions.not;
//import static org.junit.jupiter.api.Assertions.*;
//
//import java.util.List;
//
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//
//import com.tj.app.page.Page;
//
//@SpringBootTest
//class NoticeMapperTest {
//
//	@Autowired
//	private NoticeMapper noticeMapper;
//
//	@Test
//	void listTest() throws Exception {
//		List<NoticeDTO> ar = noticeMapper.list(Page page);
//
//		assertNotEquals(0, ar.size());
//	}
//
//	@Test
//	void detailTest() throws Exception {
//		NoticeDTO noticeDTO = new NoticeDTO();
//		noticeDTO.setNoticeNo(1L);
//		NoticeDTO result = noticeMapper.detail(noticeDTO);
//
//		assertNotNull(result);
//	}
//
//	@Test
//	void createTest() throws Exception {
//		int idx = 1;
//		for (int i = 0; i < 110; i++) {
//			NoticeDTO noticeDTO = new NoticeDTO();
//			noticeDTO.setNoticeTitle("title"+i);
//			noticeDTO.setNoticeContent("contents"+i);
//			noticeDTO.setProfessorNo("P00"+idx);
//			int result = noticeMapper.create(noticeDTO);
//			idx++;
//			
//			if(idx>9) {
//				idx=1;
//			}
//			
//			if(i%10==0) {
//				Thread.sleep(1000);
//			}
//		}
//		
//		System.out.println("finsh");
//	}
//
//}
