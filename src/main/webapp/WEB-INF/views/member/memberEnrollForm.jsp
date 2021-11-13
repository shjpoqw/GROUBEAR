<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
    
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">	
    <meta name="author" content="">

    <title>GROUBEAR</title>
	
    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/css/common/all.min.css" rel="stylesheet" type="text/css">
   
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<%=request.getContextPath()%>/resources/css/common/sb-admin-2.min.css" rel="stylesheet"> 
	<script src="https://kit.fontawesome.com/568d1fce8b.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<style>
		.content{
		margin-left:30px;
		margin-right:30px;
	}
	
	</style>
</head>

    	
<body id="page-top">

    
	<!-- 시작부분 -->
	
				
    <div class="content">
        <br><br>
        <div class="innerOuter">
            <h2>회원가입</h2>
            <br>

            <form id="enrollForm" action="insert.me" method="post">
                <div class="form-group">
                    <label for="empId"> 아이디 :</label>
                    <input type="text" class="form-control" id="empId" name="empId" placeholder="아이디를 입력해주세요." required>
                    <div id="checkResult" style="display:none; font-size:0.8em"></div>
                    <br>
                    
                    <label for="empPwd"> 비밀번호 :</label>
                    <input type="password" class="form-control" id="empPwd" name="empPwd" placeholder="비밀번호를 입력해주세요." required><br>
                    
                    <label for="checkPwd"> 비밀번호 확인  :</label>
                    <input type="password" class="form-control" id="checkPwd" placeholder="비밀번호를 한번 더 입력해주세요." required><br>
                    
                    <label for="empName"> 이름  :</label>
                    <input type="text" class="form-control" id="empName" name="empName" placeholder="이름을 입력해주세요" required><br>
                                        
                    <label for="dept"> 부서 :</label>
                    <select name ="deptCode">
						<c:forEach var="d" items="${dept}">
							<option  value="${d.deptCode}">${d.deptName}</option>
						</c:forEach>
					</select>
                    
                    <label for="job"> 직책 :</label>
                    <select name="jobCode">
					<c:forEach var="j" items="${job}">
						<option  value="${j.jobCode}"  >${j.jobName}</option>
					</c:forEach>
					</select>
                    <br>
                    <label for="email"> &nbsp; 이메일 :</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="이메일을 입력해주세요"><br>
                    
                    <label for="empNum"> &nbsp; 주민등록번호 :</label>
                    <input type="number" class="form-control" id="empNum" name="empNum" placeholder="주민 등록 번호를 입력해주세요"><br>
                    
                    <label for="phone"> &nbsp; 전화번호 :</label>
                    <input type="tel" class="form-control" id="phone" name="phone" placeholder="전화번호를 입력해주세요(-없이)"><br>
                    
                    <label for="address"> &nbsp; Address :</label>
                   <%--  <input type="text" class="form-control" id="address" name="address" placeholder="Please Enter Address"><br>--%>
             		<div class="form-inline">
					<label> &nbsp; 우편번호 : &nbsp;</label>
					<input type="text"  name="post" class="form-control mr-2 postcodify_postcode5"  size="6">
					<button type="button" class="btn btn-primary" id="postcodify_search_button">검색</button>
					</div>
					<br>
					<label> &nbsp; 도로명주소 : </label>
					<input type="text" name="address1" class="form-control postcodify_address" size="30">
					<br>
				    <label> &nbsp; 상세주소 : </label>
					<input type="text" name="address2" class="form-control postcodify_extra_info"  size="30">
					<br>
				
				
				
				<!-- jQuery와 Postcodify를 로딩한다. -->
				<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
				<script>
					// 검색 단추를 누르면 팝업 레이어가 열리도록 설정한다.
					$(function(){
						$("#postcodify_search_button").postcodifyPopUp();
					});
				</script>
                   
                    
                </div>
                <br>
                <div class="btns" align="center">
                    <button type="submit" id="enrollBtn" class="btn btn-primary" >회원가입</button><!-- disabled  중복처리하고나서-->
                    <button type="reset" class="btn btn-danger"> 초기화</button>
                </div>
            </form>
        </div>
        <br><br>
    </div>
   
		
	
	
	
	
	
	<!-- 끝부분 -->
	
	
	
	
	
	</div>

		</div>
    </div>
    <!-- End of Page Wrapper -->

     <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="logout.me">Logout</a>
                </div>
            </div>
        </div>
    </div>
    
    

    
	
</body>
</html>