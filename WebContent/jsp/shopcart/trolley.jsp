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
<title>购物车页面</title>
<style type="text/css">
	#buy {
		background: url(<c:url value='/images/all.png'/>) no-repeat;
		display: inline-block;
		
		background-position: 0 -902px;
		margin-left: 30px;
		height: 36px;
		width: 146px;
	}
	#buy:HOVER {
		background: url(<c:url value='/images/all.png'/>) no-repeat;
		display: inline-block;
		
		background-position: 0 -938px;
		margin-left: 30px;
		height: 36px;
		width: 146px;
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
        	
            <h1>我的购物车 </h1>
				<table border="1" width="100%" align="center">
					<tr>
						<th>图片</th>
						<th>书名</th>
						<th>类别</th>
						<th>单价</th>
						<th>数量</th>
						<th>小计</th>
						<th>操作</th>
					</tr>
					<%--for(Trolleys : trolley) --%>
	 				<c:forEach items="${sessionScope.trolley }" var="trolley">
						<tr>
							<td><a href="<c:url value='/BookServlet?&method=findByBookId&bookid=${trolley.book.bookid }'/>"><img src="<c:url value='${trolley.book.bookPhoto }'/>" border="0"/></a></td>
							<td>${trolley.book.bookName }</td>
							<td>${trolley.book.bookType }</td>
							<td>${trolley.book.bookPrice }</td>
							<td>
								<input type="number" name="num" min="1" max="10" value="${trolley.num }"/>
							</td>
							<td>${trolley.totalPrice }</td>
							<td>
								<a href="<c:url value='/BookServlet?method=delete&bid=${trolley.book.bookid }'/>">删除</a>
							</td>
						</tr>
		 			</c:forEach>

					<tr>
						<td colspan="7" align="right" style="font-size: 15pt; font-weight: 900">合计：${sessionScope.total }元</td>
					</tr>
					<tr>
						<td colspan="7" align="right" style="font-size: 15pt; font-weight: 900">
							<a id="buy" href="<c:url value='/pay.jsp'/>"></a>
						</td>
					</tr>
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