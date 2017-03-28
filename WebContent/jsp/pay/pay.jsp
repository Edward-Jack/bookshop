<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户支付页面</title>
<style type="text/css">
* {
	
}

#pay {
	background: url(<c:url value='/images/all.png'/>) no-repeat;
	display: inline-block;
	background-position: 0 -412px;
	margin-left: 30px;
	height: 36px;
	width: 150px;
}

#pay:HOVER {
	background: url(<c:url value='/images/all.png'/>) no-repeat;
	display: inline-block;
	background-position: 0 -448px;
	margin-left: 30px;
	height: 36px;
	width: 150px;
}
</style>

</head>
	<link rel="stylesheet" type="text/css" href="css/bookstore_style.css"/>
  <body>
   <div id="templatemo_container">
	<div id="templatemo_menu">
    	<ul>
           	<li><a href="index.jsp" class="current">Home</a></li>
           	<li><a href="shopcart/trolley.jsp">购物车</a></li>
            <li><a href="order/orderForm.jsp">我的订单</a></li>            
           	<li><a href="#">退出</a></li>  
           	<li>买家：${cname }###</li>  
    	</ul>
    </div> <!-- end of menu -->
    
    <div id="templatemo_header">
    	<div id="templatemo_special_offers">
        	<p>
                	<span>活动</span> 本店购书满<span>100</span>元者<br/>
        			       赠送10元购书券
        	</p>
			<a href="#.jsp" style="margin-left: 50px;">Read more...</a>
        </div>
        
        
        <div id="templatemo_new_books">
        	<ul>
                <li>达尔文进化论</li>
                <li>宇宙大爆炸</li>
                <li>物种起源</li>
            </ul>
            <a href="#.jsp" style="margin-left: 50px;">Read more...</a>
        </div>
    </div> <!-- end of header -->
    
    <div id="templatemo_content">
    	
        <div id="templatemo_content_left">
        	<div class="templatemo_content_left_section">
            	<h1>全部分类</h1>
                <ul>
                    <li><a href="/book/list.jsp">动物世界</a></li>
                    <li><a href="/book/list.jsp">认识宇宙</a></li>
                    <li><a href="/book/list.jsp">植物园</a></li>
                    <li><a href="#">城市旅游</a></li>
                    <li><a href="#">美食广场</a></li>
                    <li><a href="#">。。。</a></li>
                    <li><a href="#">。。。</a></li>
                    <li><a href="#">。。。</a></li>
                    <li><a href="#">。。。</a></li>
            	</ul>
            </div>
			<div class="templatemo_content_left_section">
            	<h1>畅销书</h1>
                <ul>
                    <li><a href="#">。。。</a></li>
                    <li><a href="#">。。。</a></li>
                    <li><a href="#">。。。</a></li>
                    <li><a href="#">。。。</a></li>
                    <li><a href="#">。。。</a></li>
                    <li><a href="#">。。。</a></li>
                    <li><a href="#" target="_parent">。。。</a></li>
                    <li><a href="#" target="_parent">。。。</a></li>
                    <li><a href="#" target="_parent">。。。</a></li>
                    <li><a href="#" target="_parent">。。。</a></li>
            	</ul>
            </div>
            
            <div class="templatemo_content_left_section">                
                <a href="#"><img style="border:0;width:88px;height:31px" src="" alt="店名:星火书店" width="88" height="31" vspace="8" border="0" /></a>
				<a href="#"><img style="border:0;width:88px;height:31px"  src="" alt="管理员:小何" vspace="8" border="0" /></a>
			</div>
        </div> <!-- end of content left -->
        
<div id="templatemo_content_right">

				<h1>当前订单</h1>
				
					<table border="1" width="100%" cellspacing="0" background="black">
					<tr bgcolor="gray" bordercolor="gray">
						<td colspan="6">订单编号：### 成交时间：2016-11-21 10:30 金额：<font color="red"><b>${sessionScope.total }元</b>
						</font></td>
					</tr>				
					<tr bordercolor="gray" align="center">
						<td>订单编号：</td>
						<td>图片</td>
						<td>书名：</td>
						<td>单价：元</td>
						<td>数量：</td>
						<td>小计：元</td>
					</tr>
					<c:forEach items="${sessionScope.trolley }" var="trolley">
					<tr bordercolor="gray" align="center">
						<td>${trolley.tid }</td>
						<td width="15%">
							<div><img src="<c:url value='${trolley.book.bookPhoto }'/>" height="75" /></div>
						</td>
						<td>${trolley.book.bookName }</td>
						<td>${trolley.book.bookPrice }元</td>
						<td>${trolley.num }</td>
						<td>${trolley.totalPrice }元</td>
					</tr>
					</c:forEach>
				</table>
				<br />
				<form method="post" action="<c:url value=''/>" id="form">
					<c:forEach items="${sessionScope.trolley }" var="trolley">
					<%  %>
					<input type="hidden" name="orderid" id='orderid' value="${trolley.tid }"/>
					</c:forEach>
					收货地址：<input type="text" name="address" size="50" value="中软国际收" /><br />

					选择银行：<br /> 
					<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" />工商银行 <img src="<c:url value='/images/bank_img/icbc.bmp'/>" align="middle" />&nbsp;&nbsp;
					<input type="radio" name="pd_FrpId" value="BOC-NET-B2C" />中国银行 <img src="<c:url value='/images/bank_img/bc.bmp'/>" align="middle" />
					<br /><br /> 
					<input type="radio" name="pd_FrpId" value="ABC-NET-B2C" />农业银行<img src="<c:url value='/images/bank_img/abc.bmp'/>" align="middle" />&nbsp;&nbsp; 
					<input type="radio" name="pd_FrpId" value="CCB-NET-B2C" checked="checked" />建设银行 <img src="<c:url value='/images/bank_img/ccb.bmp'/>" align="middle" />
					<br /><br/>
					<input type="radio" name="pd_FrpId" value="BOCO-NET-B2C" />交通银行<img src="<c:url value='/images/bank_img/bcc.bmp'/>" align="middle" />&nbsp;&nbsp;					
					<input type="radio" name="pd_FrpId" value="CMBCHINA-NET-B2C"/>招商银行<img src="<c:url value='/images/bank_img/cmb.bmp'/>" align="middle"/>
					<br/><br/>
					<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C "/>工商银行<img src="<c:url value='/images/bank_img/icbc.bmp'/>" align="middle"/>&nbsp;&nbsp;
					<input type="radio" name="pd_FrpId" value="BCCB-NET-B2C"/>北京银行<img src="<c:url value='/images/bank_img/bj.bmp'/>" align="middle"/>
					<br/><br/>
					<input type="radio" name="pd_FrpId" value="CIB-NET-B2C "/>兴业银行<img src="<c:url value='/images/bank_img/cib.bmp'/>" align="middle"/>&nbsp;&nbsp;
					<input type="radio" name="pd_FrpId" value="NJCB-NET-B2C  "/>南京银行<img src="<c:url value='/images/bank_img/nanjing.bmp'/>" align="middle"/>
					<br/><br/>
					<input type="radio" name="pd_FrpId" value="CZ-NET-B2C   "/>浙商银行<img src="<c:url value='images/bank_img/zheshang.bmp'/>" align="middle"/>&nbsp;&nbsp;
					<input type="radio" name="pd_FrpId" value="NBCB-NET-B2C  "/>宁波银行<img src="<c:url value='/images/bank_img/ningbo.bmp'/>" align="middle"/>
					<br/><br/>
					<input type="radio" name="pd_FrpId" value="POST-NET-B2C   "/>中国邮政<img src="<c:url value='/images/bank_img/post.bmp'/>" align="middle"/>&nbsp;&nbsp;
					<input type="radio" name="pd_FrpId" value="SHB-NET-B2C  "/>上海银行<img src="<c:url value='/images/bank_img/sh.bmp'/>" align="middle"/>
					<br/><br/>
									
					<input id="pay" type="submit" />
				</form>
				<br/><br/>
				${msg }
    <form action="<c:url value=''/>" method="post">
    	<input type="hidden" name="method" value="payMoney"/>
    	支付金额:<input type="text" name="money" value="0.01"/><br/>
    	<input type="submit" />
    </form>
				<!-- <a id="pay" href="javascript:document.getElementById('form').submit();"></a> -->

			</div> <!-- end of content right -->
    
    	<div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->
    
    <div id="templatemo_footer">
    
	       <a href="index.jsp">Home</a> | <a href="trolley.jsp">购物车</a> | <a href="orderForm.jsp">我的订单</a> | <a href="#">星火书店</a> | <a href="#">常见问题</a> | <a href="#">联系我们</a><br />
        Copyright © 2016 <a href="#"><strong>Chinasofti</strong></a> | from 	何仁杰，吴峰，袁帅杰，高超
    </div> 
    <!-- end of footer -->
</div> <!-- end of container -->
</body>
</html>