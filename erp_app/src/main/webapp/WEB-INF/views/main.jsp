<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">

<body>
	<!--header start-->
	<jsp:include page="header.jsp"></jsp:include>
	<!--header end-->

	<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
		
            <div class="row mt">

              <!-- DIRECT MESSAGE PANEL -->
              <div class="col-md-12 mb">
                <div class="message-p pn">
                  <div class="message-header">
                    <h5>SEARCH</h5>
                  </div>
	             <div class="row">
	               <div class="col-lg-6 col-lg-offset-3 p404 centered">     
	                      <h2>빠르게 여행을 계획해보세요.</h2>             
	                   <div class="col-md-8 col-md-offset-2">
	                     <input type="text" class="form-control" id="form1Name" name="form1Name" placeholder="국가명으로 검색">
	                     <button class="btn btn-theme mt">Search</button>
	                   </div>
	                 </div>                             
	              </div>
                </div>
                <!-- /Message Panel-->
              </div>
              <!-- /col-md-8  -->
            </div>
            
            
			<div class="row">
              <!-- WEATHER PANEL -->
              <div class="col-md-4 mb">
              
                <div class="grey-panel pn donut-chart">
                  <div class="grey-header">
                    <h5>HOT BLOG</h5>
                  </div>
                  <canvas id="serverstatus01" height="120" width="120"></canvas>
                </div>
                <!-- /grey-panel -->
              </div>
              <!-- /col-md-4-->
              <!-- DIRECT MESSAGE PANEL -->
              <div class="col-md-8 mb">
                <div class="message-p pn">
                  <div class="message-header">
                    <h5>HOT PLACE</h5>
                  </div>
                  <div class="row">
                    <div class="col-md-9">
                    </div>
                  </div>
                </div>
                <!-- /Message Panel-->
              </div>
              <!-- /col-md-8  -->
            </div>
            
		    <div class="row">
              <!-- SERVER STATUS PANELS -->
              <div class="col-md-4 col-sm-4 mb">
                <div class="grey-panel pn donut-chart">
                  <div class="grey-header">
                    <h5>NOTICE</h5>
                  </div>
                  <canvas id="serverstatus01" height="120" width="120"></canvas>
                </div>
                <!-- /grey-panel -->
              </div>
              <!-- /col-md-4-->
              <div class="col-md-4 col-sm-4 mb">
                <div class="darkblue-panel pn">
                  <div class="darkblue-header">
                    <h5>QNA</h5>
                  </div>
                  <canvas id="serverstatus02" height="120" width="120"></canvas>
                  
                </div>
                <!--  /darkblue panel -->
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 col-sm-4 mb">
                <!-- REVENUE PANEL -->
                <div class="green-panel pn">
                  <div class="green-header">
                    <h5>COMMUNITY</h5>
                  </div>
                  <p class="mt"><b>$ 17,980</b><br/>Month Income</p>
                </div>
              </div>
              <!-- /col-md-4 -->
            </div>
		</section>
		
	</section>
	<!--main content end-->
	
	<!--footer start-->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--footer end-->
</body>

</html>
