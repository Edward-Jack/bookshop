<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>   
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>图书详情页面</title>
</head>
	<link rel="stylesheet" type="text/css" href="css/bookstore_style.css"/>
  <body>
   <div id="templatemo_container">
	<div id="templatemo_menu">
    	<ul>
           	<li><a href="index.jsp" class="current">&quot;Home</a></li>
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
        	
            <h1><span>书名：<s:property value="bname"/> </span></h1>
            <div class="image_panel"><img src="<c:url value='${sessionScope.bookdetail.bookPhoto }'/>" alt="图片" width="100" height="150" /></div>
          <h2>Read the lessons - Watch the videos - Do the exercises</h2>
            <form id="myform" action="<c:url value=''/>" method="post">
            <input type="hidden" id="bookid" name="bookid" value="${sessionScope.bookdetail.bookid }"/>
            <ul>
	            <li>作者： <s:property value="auther"/> </li>
            	<li>出版时间：<s:property value="time"/> </li>
                <li>单价：<s:property value="bprice"/> 元</li>
                <li>数量：<input type="number" name="num" min="1" max="10" value="1"/></li>
                <li><a href="<c:url value='pay/pay.jsp'/>">立即购买</a></li>
                <li>
                	<input type="submit" value="添加购物车">
                	<%-- <a href="<c:url value='/BookServlet?method=add&bookid=${sessionScope.bookdetail.bookid }&num'/>">添加购物车</a> --%>
                </li>
            </ul>
            </form>
            
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec dui. Donec nec neque ut quam sodales feugiat. Nam sodales, pede vel dapibus lobortis, ipsum diam molestie risus, a vulputate risus nisl pulvinar lacus.</p>

			<p>Donec at arcu. Nunc aliquam, dolor vitae sollicitudin lacinia, nibh orci sagittis diam, dignissim sodales dui erat nec eros. Fusce quis enim. Aenean eleifend, neque hendrerit elementum sodales, odio erat sagittis quam, sed tempor orci magna vitae tellus. Proin dui mauris, tempor eget, pulvinar sed, pretium sit amet, dui. Proin vulputate justo et quam.</p>

			<p>In fermentum, eros ac tincidunt aliquam, elit velit semper nunc, a tincidunt orci lectus a arcu. Nullam commodo, arcu non facilisis imperdiet, felis lectus tempus felis, vitae volutpat augue ante quis leo. Aliquam tristique dolor ac odio. Sed consectetur, lacus et dictum tristique, odio neque elementum ante, nec eleifend leo dolor vel tortor.</p>
            
             <div class="cleaner_with_height">&nbsp;</div>
            
            <a href="index.jsp"><img src="images/templatemo_ads.jpg" alt="css template ad" /></a>
            
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