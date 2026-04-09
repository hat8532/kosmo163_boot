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
					<h1 class="h3 mb-4 text-gray-800">update page</h1>
					<div>
					
						<form action="./update" method="post">
							<div class="form-group">
								<label for="professorNo">교수번호</label> <input type="text"
									class="form-control" readonly="readonly" value="${p.professorNo}" id="professorNo" name="professorNo">

								<label for="professorName">교수이름</label> <input type="text"
									class="form-control" value="${p.professorName}" id="professorName" name="professorName">

								<label for="professorSsn">주민번호</label> <input type="text"
									class="form-control" value="${p.professorSsn}" id="professorSsn" name="professorSsn"> 
									
									<label for="professorAddress">주소</label> <input type="text"
									 class="form-control" value="${p.professorAddress}" id="professorAddress" name="professorAddress"> 
									
									<label for="departmentNo">학과번호</label> <input type="text"
									class="form-control" value="${p.departmentNo}" id="departmentNo" name="departmentNo"> 
							</div>

							<button type="submit" class="btn btn-primary">수정하기</button>
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