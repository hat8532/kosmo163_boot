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
					<h1 class="h3 mb-4 text-gray-800">교수 목록 Page</h1>

					<!-- 테이블 DIV 시작 -->
					<div class="row">
						<div class="col-6">
							<table class="table">
								<thead class="thead-dark">
									<tr>
										<th>교수번호</th>
										<th>교수명</th>
										<th>학과번호</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list}" var="p">
										<tr>
											<td>${p.professorNo}</td>
											<td><a href="./detail?professorNo=${p.professorNo}">${p.professorName}</a></td>
											<td>${p.departmentNo}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
					</div>
					<!-- 테이블 DIV 끝 -->

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