package com.tj.app.page;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Page {
	private String kind;
	
	private String search;

	// 페이지 번호
	private Long page;

	// 시작 ROWNUM
	private Long first;

	// 끝 ROWNUM
	private Long last;

	// 한페이지에 출력할 글의 갯수
	private Long perPage;

	// JSP에 출력할 시작번호
	private Long start;

	// JSP에 출력할 끝번호
	private Long end;

	// 이전 블럭 유무
	private boolean pre;

	// 다음 블럭 유무
	private boolean next;
	
	public String getSearch() {
		if(search==null) {
			this.search="";
		}
		return this.search;
	}

	public Long getPerPage() {
		if (this.perPage == null || this.perPage % 5 != 0) {
			this.perPage = 10L;
		}

		return this.perPage;
	}

	public Long getPage() {
		if (this.page == null || this.page < 1) {
			this.page = 1L;
		}
		return this.page;
	}

	// ------------------
	public void makeRowNumber() throws Exception {
		this.first = (this.getPage() - 1) * this.getPerPage() + 1;
		this.last = this.getPage() * this.getPerPage();
	}

	// ------------------
	public void makePageNumber(Long totalCount) throws Exception {
	    this.getPage(); 
	    this.getSearch();

	    // 2. 총 페이지수 계산
	    Long totalPage = (long)(Math.ceil(totalCount / (double)this.getPerPage()));
	    if (totalPage == 0L) totalPage = 1L; // 데이터 없어도 1페이지는 있게!

	    if (this.getPage() > totalPage) {
	        this.page = totalPage;
	    }

	    // 3. 총 블럭 갯수
	    Long perBlock = 5L;
	    Long totalBlock = (long)(Math.ceil(totalPage / (double)perBlock));

	    // 4. 현재 블럭 번호 구하기
	    Long curBlock = (long)(Math.ceil(this.getPage() / (double)perBlock));

	    // 5. 시작번호와 끝번호 구하기
	    this.start = (curBlock - 1) * perBlock + 1;
	    this.setEnd(curBlock * perBlock);

	    // 이전/다음 블럭 유무
	    if (curBlock > 1) {
	        this.pre = true;
	    }

	    if (curBlock < totalBlock) {
	        this.next = true;
	    } else {
	        this.setEnd(totalPage); // 마지막 블럭이면 실제 totalPage로 끝번호 맞춤
	    }

	    this.makeRowNumber();
	}

}