<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
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
                    <h1 class="h3 mb-4 text-gray-800">detail Page</h1>
					<div>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">공지번호</th>
									<th scope="col">공지제목</th>
									<th scope="col">공지내용</th>
									<th scope="col">공지날짜</th>
									<th scope="col">조회수</th>
								</tr>	
							</thead>
							<tbody>
								<tr>
									<td>${n.noticeNo}</td>
									<td>${n.noticeTitle}</td>
									<td>${n.noticeContent}</td>
									<td>${n.noticeDate}</td>
									<td>${n.noticeView}</td>
								</tr>
							</tbody>
						</table>
					</div>
<div>
					<a class="btn btn-outline-primary" href="./update?noticeNo=${n.noticeNo}">공지수정</a>
					<form action="./delete" method="post">
					<input type="hidden" name="noticeNo" value="${n.noticeNo}">
					<button class="btn btn-outline-primary">DELETE</button>
					</form>
					</div>
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