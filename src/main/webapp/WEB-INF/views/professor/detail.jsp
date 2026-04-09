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
					<h1 class="h3 mb-4 text-gray-800">Blank Page</h1>
					<div>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">교수번호</th>
									<th scope="col">교수이름</th>
									<th scope="col">주민번호</th>
									<th scope="col">주소</th>
									<th scope="col">학과번호</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${p.professorNo}</td>
									<td>${p.professorName}</td>
									<td>${p.professorSsn}</td>
									<td>${p.professorAddress}</td>
									<td>${p.departmentNo}</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div>
					<a class="btn btn-outline-primary" href="./update?professorNo=${p.professorNo}">교수 수정</a>
					<form action="./delete" method="post">
					<input type="hidden" name="professorNo" value="${p.professorNo}">
					<button class="btn btn-outline-primary">DELETE</button>
					</form>
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