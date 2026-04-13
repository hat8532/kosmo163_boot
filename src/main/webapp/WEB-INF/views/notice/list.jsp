<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/head_css.jsp"></c:import>
</head>
<body id="page-top">
	<div id="wrapper">
		<c:import url="/WEB-INF/views/temp/sidebar.jsp"></c:import>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<c:import url="/WEB-INF/views/temp/topbar.jsp"></c:import>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-4 text-gray-800">공지사항</h1>

					<!-- 테이블 DIV 시작 -->
					<div class="row justify-content-center">
						<div class="col-6">
							<!-- 검색 폼 -->

							
							<div>
								<form action="./list" method="get">
									<div class="input-group mb-3">
									
									<div class="input-group-prepend">
									<select name="kind" class="custom-select">
									<option ${page.kind eq'v1'?selected:''} value="v1">제목</option>
									<option ${page.kind eq'v2'?selected:''} value="v2">내용</option>
									<option ${page.kind eq'v3'?selected:''} value="v3">작성교수</option>
									</select>
									  </div>
									  
										<input type="text" value="${page.search}" name="search" class="form-control"
											placeholder="Recipient's username"
											aria-label="Recipient's username"
											aria-describedby="button-addon2">
										<div class="input-group-append">
											<button class="btn btn-outline-secondary" id="button-addon2">검색</button>
										</div>
									</div>
								</form>
							</div>

							<table class="table">
								<thead class="thead-dark">
									<tr>
										<th>공지번호</th>
										<th>공지제목</th>
										<th>공지내용</th>
										<th>작성교수명</th>
										<th>공지날짜</th>
										<th>공지조회수</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list}" var="n">
										<tr>
											<td><a href="./detail?noticeNo=${n.noticeNo}">${n.noticeNo}</a></td>
											<td>${n.noticeTitle}</td>
											<td>${n.noticeContent}</td>
											<td>${n.professorNo}</td>
											<td>${n.noticeDate}</td>
											<td>${n.noticeView}</td>

											<%-- 		                    			<c:if test="${d.openYn ne 'Y'}">
		                    			<td>OPEN</td>
		                    			</c:if>
		                    			<c:if test="${d.openYn eq 'N'}">
		                    			<td>CLOSE</td>
		                    			</c:if> --%>

										</tr>
									</c:forEach>
								</tbody>
							</table>

							<div>
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<li class="page-item ${page.pre?'':'disabled'}"><a
											class="page-link"
											href="./list?page=${page.pre?page.start-1:page.start}&search=${page.search}&kind=${page.kind}"
											aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
										</a></li>
										<c:forEach begin="${page.start}" end="${page.end}" var="i">
											<li class="page-item"><a class="page-link"
												href="./list?page=${i}&search=${page.search}&kind=${page.kind}">${i}</a></li>
										</c:forEach>

										<li class="page-item ${page.next?'':'disabled'}"><a
											class="page-link"
											href="./list?page=${page.next?page.end+1:page.end}&search=${page.search}&kind=${page.kind}"
											aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										</a></li>
									</ul>
								</nav>


							</div>

							<div>
								<a href="./create">공지 등록</a>
							</div>

						</div>
					</div>
					<!-- 테이블 DIV 끝 -->
					a

				</div>
				<!-- End Page container-fluid -->

			</div>
			<!-- End page Content -->
			<c:import url="/WEB-INF/views/temp/footer.jsp"></c:import>
		</div>
		<!-- End Content wrapper -->
	</div>
	<!-- End Wrapper -->

	<c:import url="/WEB-INF/views/temp/footer_script.jsp"></c:import>

</body>
</html>