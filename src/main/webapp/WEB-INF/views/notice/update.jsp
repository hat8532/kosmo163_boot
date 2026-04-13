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
                    <h1 class="h3 mb-4 text-gray-800">Blank Page</h1>
                    <form action="./update" method="post">
							<div class="form-group">
								<label for="noticeNo">공지번호</label> <input type="number"
									class="form-control" readonly="readonly" value="${n.noticeNo}" id="noticeNo" name="noticeNo">

								<label for="noticeTitle">공지제목</label> <input type="text"
									class="form-control" id="noticeTitle" name="noticeTitle" value="${n.noticeTitle}">

								<label for="noticeContent">공지내용</label> <input type="text"
									class="form-control" id="noticeContent" name="noticeContent" value="${n.noticeContent}">
							</div>
							<button type="submit" class="btn btn-primary">만들기</button>
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