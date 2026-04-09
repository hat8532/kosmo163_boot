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
					<h1 class="h3 mb-4 text-gray-800">공지사항 List</h1>

					<div class="row">
						<div class="col-12">
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
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
						<a href> </a>
					</div>



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