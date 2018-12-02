<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: white;
}

* {
    box-sizing: border-box;
}

/* Add padding to containers */
.container {
    padding: 16px;
    background-color: white;
}

.addr {
    width: 50%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline;
    border: none;
    background: #f1f1f1;
}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    background-color: #4ecdc4;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}


</style>
  <script src="resources/lib/jquery/jquery.min.js"></script>

  <script>
    function join() {
    	if($("#password").val() != $("#password-repeat").val()){
        	alert("두 개의 비밀번호가  다릅니다");
        	return;
    	}
    	
		$.ajax({
			url : "RegisterMember",
			type : "post",
			async : false,
			data : {
				"id" : $("#id").val(),
				"password" : $("#password").val(),
				"email" : $("#email").val(),
				"name" : $("#name").val(),
			},
			dataType : "json",
			success : function(data){
				if(!data.status){
	                return;
	            }
				
				window.frm.submit();
			},
			error : function(){
				alert("error");
			}

		});
    }
    

  </script>
</head>
<body>

<form name="frm" onsubmit="return false;" method="post" action="/" >
  <div class="container">
    <h1>회원가입</h1>
    <hr>
    
    <label for="id"><b>아이디</b></label>
    <input type="text" placeholder="Enter id" id="id" required>
    
    <label for="name"><b>이름</b></label>
    <input type="text" placeholder="Enter name" id="name" required>
    
    <label for="email"><b>이메일</b></label>
    <input type="text" placeholder="Enter Email" id="email" required>

    <label for="psw"><b>비밀번호</b></label>
    <input type="password" placeholder="Enter Password" id="password" required>

    <label for="psw-repeat"><b>비밀번호 확인</b></label>
    <input type="password" placeholder="Repeat Password" id="password-repeat" required>
    
    
    <label for="address"><b>주소</b></label>
    <input type="text" class ="addr" id="sample6_postcode" placeholder="우편번호" required>
	<input type="button" class ="addrBtn" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" required><br>
	<input type="text" class ="addr" id="sample6_address" placeholder="주소" required>
	<input type="text" class ="addr" id="sample6_address2" placeholder="상세주소" required>
    <hr>
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button class="registerbtn" type="submit" onclick="join();" >Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="/">Sign in</a>.</p>
  </div>
</form>

</body>
</html>
