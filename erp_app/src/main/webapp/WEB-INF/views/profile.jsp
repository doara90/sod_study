<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>Sod Tour : 로그인</title>

<!-- Favicons -->
<link href="resources/img/favicon.png" rel="icon">
<link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--external css-->
<link href="resources/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/style-responsive.css" rel="stylesheet">


<!-- js placed at the end of the document so the pages load faster -->
<script src="resources/lib/jquery/jquery.min.js"></script>
<script src="resources/lib/bootstrap/js/bootstrap.min.js"></script>
<!--BACKSTRETCH-->
<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
<script type="text/javascript" src="resources/lib/jquery.backstretch.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){ 

		$.ajax({
			url : "selectProfile",
			type : "post",
			async : false,
			data : {
				"Id" : "${sessionScope.LoginInfo.id}",
			},
			dataType : "json",
			success : function(data) {
			},
			error : function() {
				alert("error");
			}

		});
	});
	
	
	function LoadImg(value) {
		if(value.files && value.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#loadImg').attr('src', e.target.result);
				
				imgResult = e.target.result; // byte 형식
			}
			reader.readAsDataURL(value.files[0]);
			
		}
	}
	
	function updateProfile() {

		$.ajax({
			url : "updateProfile",
			type : "post",
			async : false,
			data : {
				"Id" : "${sessionScope.LoginInfo.id}",
				"FilePath" : $('#fileUpload').val(),
			},
			dataType : "json",
			success : function(data) {
				
			},
			error : function() {
				alert("error");
			}

		});

	}
	
</script>

<body>
	<!--header start-->

	<jsp:include page="header.jsp"></jsp:include>
	<!--header end-->

	<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->

	<section id="main-content">
		<section class="wrapper site-min-height">
			<div class="profile-pic" align="center">
				<p>
					<img src="img/ui-sam.jpg" class="img-circle" id="loadImg">
				</p>
				<h3>${sessionScope.LoginInfo.name}</h3>
			</div>

			<div id="edit" class="tab-pane">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 detailed">
						<h4 class="mb">Personal Information</h4>
						<form role="form" class="form-horizontal">
							<div class="form-group">
								<label class="col-lg-2 control-label"> 프로필 이미지</label>
								<div class="col-lg-6">
									<input type="file" id="fileUpload" class="file-pos" onchange="LoadImg(this);">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">비밀번호</label>
								<div class="col-lg-6">
									<input type="password" placeholder="현재 비밀번호" id="c-name" class="form-control">
									<input type="password" placeholder="새 비밀번호" id="c-name" class="form-control">
									<input type="password" placeholder="새 비밀번호 확인" id="c-name" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">성별</label>
									<label class="col-lg-2 control-label">여자</label>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">이메일</label>
								<div class="col-lg-6">
									<input type="text" placeholder=" " id="country" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">휴대전화번호</label>
								<div class="col-lg-10">
									<textarea rows="10" cols="30" class="form-control" id="" name=""></textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">생년월일</label>
								<div class="col-lg-10">
									<textarea rows="10" cols="30" class="form-control" id="" name=""></textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">주소</label>
								<div class="col-lg-10">
									<textarea rows="10" cols="30" class="form-control" id="" name=""></textarea>
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-lg-offset-2 col-lg-10">
									<button class="btn btn-theme" onclick="updateProfile();">Save</button>
									<button class="btn btn-theme04" type="button">Cancel</button>
								</div>
							</div>
						</form>
					</div>
					<!-- /col-lg-8 -->
				</div>
				<!-- /row -->
			</div>
		</section>
	</section>

	<!--footer start-->
	<jsp:include page="footer.jsp"></jsp:include>

	<!--footer end-->
</body>

</html>
