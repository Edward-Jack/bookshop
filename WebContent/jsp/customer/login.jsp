<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>前台登录界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%-- <link rel="shortcut icon" type="image/x-icon" href="<c:url value='/jsp/customer/res/homepage/favicon.ico?v=3.9'/>" /> --%>
    <link href="<c:url value='/jsp/customer/res/ui/css/screen.css?v=3.9'/>" media="screen, projection" rel="stylesheet" type="text/css" >
    <link rel="stylesheet" type="text/css" href="<c:url value='/jsp/customer/res/ui/css/base.css?v=3.9'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/jsp/customer/res/passport/css/login.css?v=3.9'/>">
	
	<script type="text/javascript" src="/jQuery/jquery-1.8.3.min.js"></script>
	<style type="text/css">
		#registercss{
			text-align:center;
			font-size:xx-large;
			letter-spacing:100px;
			padding-left:38px;
		}
	</style>
  </head>
  
   <body>
        <div style="height: 70px"></div>
        <div class="logina-main main clearfix">
        <div><p id="registercss">注册页面</p></div>
            <div class="tab-con">
                <form id="form-login" method="post" action="<c:url value='/customer_login'/>" target="_top">
                    <div id='login-error' class="error-tip"></div>
                    <table border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>                      	
                                <th>账户</th>
                                <td width="245">
                                    <input id="cname" type="text" name="customer.cname" placeholder="邮箱/用户名" autocomplete="off"></td>
								<td><font color="red">${loginErrors.cname}</font></td>
								<td><font color="red">&nbsp;${loginMsg }</font></td>
                            </tr>
                            
                            <tr>
                                <th>密码</th>
                                <td width="245">
                                    <input id="cpassword" type="password" name="customer.cpassword" placeholder="请输入密码" autocomplete="off">
                                </td>
                                <td><font color="red">${loginErrors.cpassword}</font></td>
                            </tr>
                            
                            <tr id="tr-vcode"  ><!-- style="display:none;" -->
                                <th>验证码</th>
                                <td width="245">
                                    <div class="valid">
                                        <input type="text" name="code" id="code" placeholder="请输入验证码">
                                        <%-- <a href="javascript:_change();">
                                        	<img src="<c:url value="/customer_createCode"/>" id="img">
                                        </a> --%>
                                    </div>
                                </td>
                                <td><font color="red">${loginErrors.code}</font></td>

                            </tr>
                            <tr class="find">
                                <th></th>
                                <td>
                                    <div>
                                        <label class="checkbox" for="chk11"><input style="height: auto;" id="chk11" type="checkbox" name="remember_me" >记住我</label>
                                        <a href="passport/forget-pwd">忘记密码？</a>
                                    </div>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th></th>
                                	<td width="245"><input class="confirm" type="button" value="登  录"></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                    
                </form>
            </div>
            <div class="reg">
                <p>还没有账号？<br>赶快免费注册一个吧！</p>
                <a class="reg-btn" href="<c:url value='/customer/register.jsp'/>">立即免费注册</a>
            </div>
        </div>
    </body>
    <script type="text/javascript">
    	//判断如果页面表单内内容为空的时候,弹出弹框提醒
    	$(function() {
			$(".confirm").click(function() {
				var $nameEle=$("#cname").val();
				var $passEle=$("#cpassword").val();
				var $codeEle=$("#code").val();
				if($.trim($nameEle) == ""){
	    			alert("用户账号不能为空！");
		    	}else if($.trim($passEle) == ""){
		    		alert("用户密码不能为空！");
		    	}else if($.trim($codeEle) == ""){
		    		alert("验证码不能为空！");
		    	}else if($nameEle.length<3 || $nameEle.length>20){
		    		alert("用户名长度请在3~20位之间！");
		    	}else if($passEle.length<6 || $passEle.length>20){
		    		alert("密码长度请在6~20位之间！");
		    	}else{
		    		$("#form-login").submit();
		    	}
			});
		});
    //刷新验证码
	function _change() {
		//1. 修改src的值
		$("#img").attr("src","${pageContext.request.contextPath }/customer_createCode?a="+ new Date().getTime());	
	}
    </script>
</html>
