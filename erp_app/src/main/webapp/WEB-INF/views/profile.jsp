<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">

<script type="text/javascript">

	function LoadImg(value) {
		if(value.files && value.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#loadImg').attr('src', e.target.result);
			}
			reader.readAsDataURL(value.files[0]);
			
		}
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
								<label class="col-lg-2 control-label"> Avatar</label>
								<div class="col-lg-6">
									<input type="file" class="file-pos" onchange="LoadImg(this);">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Company</label>
								<div class="col-lg-6">
									<input type="text" placeholder=" " id="c-name" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Lives In</label>
								<div class="col-lg-6">
									<input type="text" placeholder=" " id="lives-in" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Country</label>
								<div class="col-lg-6">
									<input type="text" placeholder=" " id="country" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Description</label>
								<div class="col-lg-10">
									<textarea rows="10" cols="30" class="form-control" id="" name=""></textarea>
								</div>
							</div>
						</form>
					</div>
					<div class="col-lg-8 col-lg-offset-2 detailed mt">
						<h4 class="mb">Contact Information</h4>
						<form role="form" class="form-horizontal">
							<div class="form-group">
								<label class="col-lg-2 control-label">Address 1</label>
								<div class="col-lg-6">
									<input type="text" placeholder=" " id="addr1" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Address 2</label>
								<div class="col-lg-6">
									<input type="text" placeholder=" " id="addr2" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Phone</label>
								<div class="col-lg-6">
									<input type="text" placeholder=" " id="phone" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Cell</label>
								<div class="col-lg-6">
									<input type="text" placeholder=" " id="cell" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Email</label>
								<div class="col-lg-6">
									<input type="text" placeholder=" " id="email" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Skype</label>
								<div class="col-lg-6">
									<input type="text" placeholder=" " id="skype" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-offset-2 col-lg-10">
									<button class="btn btn-theme" type="submit">Save</button>
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
