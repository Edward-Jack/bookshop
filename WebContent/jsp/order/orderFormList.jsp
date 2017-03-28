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
<title>订单列表</title>
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
            <a href="subpage.jsp" style="margin-left: 50px;">Read more...</a>
        </div>
    </div> <!-- end of header -->
    
    <div id="templatemo_content">
    	
        <div id="templatemo_content_left">
        	<div class="templatemo_content_left_section">
            	<h1>全部分类</h1>
                <ul>
                    <li><a href="book/list.jsp">动物世界</a></li>
                    <li><a href="book/list.jsp">认识宇宙</a></li>
                    <li><a href="book/list.jsp">植物园</a></li>
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
        	
            <h1>我的订单 </h1>
				<table border="1" width="100%" cellspacing="0" background="black">
					
					<tr bordercolor="gray" bordercolor="gray" align="center">
						<td>订单编号：</td>
						<td>图片：</td>
						<td>书名：</td>
						<td>单价：元</td>
						<td>数量：</td>
						<td>小计：元</td>
					</tr>
					
					<c:forEach items="${pageBean.beanList }" var="orderList">
					<tr bgcolor="gray" bordercolor="gray">
						<td colspan="6">订单编号：${orderList.oid } 成交时间：${orderList.orderTime }  金额：<font
							color="red"><b>100</b>
						</font> <a href="<c:url value='#.jsp'/>">付款</a> 等待发货 <a
							href="javascript:alert('已确认收货！');">确认收货</a> 订单结束</td>
					</tr>
					
					
					<tr bordercolor="gray" align="center">
						<td>${orderList.oid }</td>
						<td width="15%">
							<div><img src="<c:url value='' />" height="75" /></div>
						</td>
						<td>###</td>
						<td>30元</td>
						<td>2</td>
						<td>100元</td>
					</tr>
					</c:forEach>
				</table>
					
			</div> <!-- end of content right -->
    
    	<div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->
    
    <div id="templatemo_footer">
    
	       <a href="index.jsp">Home</a> | <a href="shopcart/trolley.jsp">购物车</a> | <a href="order/orderForm.jsp">我的订单</a> | <a href="#">星火书店</a> | <a href="#">常见问题</a> | <a href="#">联系我们</a><br />
        Copyright © 2016 <a href="#"><strong>Chinasofti</strong></a> | from 	何仁杰，吴峰，袁帅杰，高超
    </div> 
    <!-- end of footer -->
</div> <!-- end of container -->
</body>
</html>