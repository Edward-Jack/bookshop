<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>注册界面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon"
	href="<c:url value='/customer/resources/images/favicon.ico'/>" />
<link href="<c:url value='/customer/resources/style/style.css'/>"
	rel="stylesheet" type="text/css" />

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<script type="text/javascript">
	//刷新验证码
	function _change() {
		//2. 修改src的值
		$("#img").attr("src","${pageContext.request.contextPath }/customer_createCode?a="+ new Date().getTime());	
	}

	$(function() {
		$(".login-btn").click(function() {
			var $nameEle = $("#cname").val();
			var $passEle = $("#cpassword").val();
			var $pass1Ele = $("#recpassword").val();
			var $phoneEle = $("#cphone").val();
			var $mailEle = $("#cmail").val();
			var $codeEle = $("#code").val();

			if ($.trim($nameEle) == "") {
				alert("用户账号不能为空!");
			} else if ($.trim($passEle) == "") {
				alert("用户密码不能为空！");
			} else if ($.trim($pass1Ele) == "") {
				alert("验证密码不能为空！");
			} else if ($.trim($phoneEle) == "") {
				alert("用户手机号码不能为空！");
			} else if ($.trim($mailEle) == "") {
				alert("用户邮箱不能为空！");
			} else if ($.trim($codeEle) == "") {
				alert("验证码不能为空！");
			} else if ($nameEle.length<3 || $nameEle.length>20) {
				alert("用户名长度请在3~20位之间！");
			} else if ($passEle.length<6 || $passEle.length>20) {
				alert("密码长度请在6~20位之间！");
			} else if ($pass1Ele.length<6 || $pass1Ele.length>20) {
				alert("验证密码长度请在6~20位之间！");
			} else if ($phoneEle.length<11 || $phoneEle.length>11) {
				alert("手机号长度应该为纯数字11位！");
			} else {
				$("#signupForm").submit();
			}
		});
	});
	/* $(function(){
		$("#cname").blur(function(){
		$.get("<c:url value='/CustomerServlet?method=addCustomer'/>",{cname:$("#cname").val()},
			function(data){
				if(data=="1"){
					alert("1");
				}else if(data=="2"){
					alert("1");
				}else{
					alert("0");
				}
			});
		});
	}); */
</script>
<body class="loginbody">
	<div class="dataEye">
		<div class="loginbox registbox" style="height: 70px">
			<div style="height: 70px"></div>
			<div class="login-content reg-content">
				<div class="loginbox-title">
					<h3>注册</h3>
				</div>
				<form id="signupForm" action="<c:url value="/customer_register" />" method="post">
					<div style="margin-left: 30px;">
						<font color="red">${registMsg }</font>
					</div>			
					<div class="row">
						<input type="text" value=""
							class="input-text-user noPic input-click" name="customer.cname" id="cname"
							placeholder="注册账号">
					</div>
					<div style="margin-left: 30px;">
						<font color="red">&nbsp;${registErrors.cname}</font>
					</div>

					<div class="row">
						<input type="password" value=""
							class="input-text-password noPic input-click" name="customer.cpassword"
							id="cpassword" placeholder="密码">
					</div>
					<div style="margin-left: 30px;">
						<font color="red">&nbsp;${registErrors.cpassword}</font>
					</div>

					<div class="row">
						<input type="password" value=""
							class="input-text-password noPic input-click" name="recpassword"
							id="recpassword" placeholder="确认密码">
					</div>
					<font color="red">&nbsp;${registErrors.cpassword1}</font>

					<div class="row">
						<input type="text" value=""
							class="input-text-user noPic input-click" name="customer.cphone"
							id="cphone" placeholder="手机号码">
					</div>
					<div style="margin-left: 30px;">
						<font color="red">&nbsp;${registErrors.cphone}</font>
					</div>

					<div class="row">
						<input type="text" value=""
							class="input-text-user noPic input-click" name="customer.cmail" id="cmail"
							placeholder="邮箱">
					</div>
					<div style="margin-left: 30px;">
						<font color="red">&nbsp;${registErrors.cmail}</font>
					</div>

					<div class="row">
						<input type="text" value=""
							class="input-text-user noPic input-click" name="code" id="code"
							placeholder="验证码" style="width:150px;height:34px;">&nbsp;&nbsp;&nbsp;
						<img src="<c:url value="/customer_createCode"/>"
							id="img">&nbsp;&nbsp;&nbsp; <a href="javascript:_change();">换一张</a><br>
					</div>
					<div style="margin-left: 30px;">
						<font color="red">&nbsp;${registErrors.code}</font>
					</div>

					<div class="row btnArea">
						<input type="button" value="注册" class="login-btn"
							onclick="_ok2();" />
					</div>
				</form>
			</div>
			<div class="go-regist">
				已有帐号,请<a href="<c:url value='/customer/login.jsp'/>"
					class="link">登录</a>
			</div>
		</div>
	</div>
</body>


</html>
