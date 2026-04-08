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
					<h1 class="h3 mb-4 text-gray-800">create page</h1>
					<div>
					
						<form action="./update" method="post">
							<div class="form-group">
								<label for="departmentNo">학과번호</label> <input type="text"
									class="form-control" readonly="readonly" value="${d.departmentNo}" id="departmentNo" name="departmentNo">

								<label for="departmentName">학과이름</label> <input type="text"
									class="form-control" id="departmentName" name="departmentName">

								<label for="category">계열</label> <input type="text"
									class="form-control" id="category" name="category"> <label
									for="capacity">정원</label> <input type="number"
									class="form-control" id="capacity" name="capacity"> <label>개설
									여부</label>
								<div class="form-check">
									<input type="radio" name="openYn" ${d.openYn eq 'Y'? 'checked':''} id="openY" value="Y">
									<label for="openY">OPEN</label> <input type="radio"
										name="openYn" ${d.openYn eq 'N'?'checked':''} id="openN" value="N"> <label for="openN">CLOSE</label>
								</div>
							</div>

							<button type="submit" class="btn btn-primary">만들기</button>
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