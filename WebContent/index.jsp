<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/bookstore_style.css"/>
	<script type="text/javascript" src="jQuery/jquery-1.8.3.min.js"></script>
  </head>
<%--    	<script type="text/javascript">
  		//页面加载完成调用方法
  		$(function(){
  			$.ajax({
  				url:"${pageContext.request.contextPath}/book_findAll.action",
  				type:"GET",
  				data: null,
  				success: function(data){
  					alert(data);
  				}
  			});
  		});
  	</script> --%>
  
  <body>
   <div id="templatemo_container">
	<div id="templatemo_menu">
    	<ul>
           	<li><a href="index.jsp" class="current">Home</a></li>
           	<li><a href="shopcart/trolley.jsp">购物车</a></li>
            <li><a href='<c:url value='/order_findList.action'></c:url>'>我的订单</a></li>            
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
                    <li><a href="<c:url value="/book_findAllByPart?bpartId=1"></c:url>">小说</a></li>
                    <li><a href="<c:url value="/book_findAllByPart?bpartId=2"></c:url>">文艺</a></li>
                    <li><a href="<c:url value="/book_findAllByPart?bpartId=3"></c:url>">童书</a></li>
                    <li><a href="<c:url value="/book_findAllByPart?bpartId=4"></c:url>">生活</a></li>
                    <li><a href="<c:url value="/book_findAllByPart?bpartId=5"></c:url>">科技</a></li>
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
        
        <%-- <s:iterator value="pageBean.beanList" var="book">
			<div class="templatemo_product_box">
            	<h1><s:property value="#book.bname"/></h1>
   	      		<img src="images/templatemo_image_09.jpg" alt="image" />
                <div class="product_info">
                    <h3>￥<s:property value="#book.bprice"/></h3>
                    	<div class="buy_now_button"><a href="
                    	<s:url action='/book_findBook'>
                    		<s:param name="book.bid" value="#book.bid"></s:param>
                    	</s:url>
                    	">Buy</a></div>
	                </div>
	                <div class="cleaner">&nbsp;</div>
            	</div>
        </s:iterator> --%>
			
			<div class="cleaner_with_height">&nbsp;</div>
			
      <center>
		第${pageBean.currentPage }页/共${pageBean.totalPage }页
		
		<a href="${pageBean.url }&currentPage=1">首页</a>
		<c:if test="${pageBean.currentPage > 1 }">
			<a href="${pageBean.url }&currentPage=${pageBean.currentPage - 1 }">上一页</a>
		</c:if>
		
		<%--计算begin和end的值 --%>
		<c:choose>
			<%--总页数不大于10的情况 --%>
			<c:when test="${pageBean.totalPage <= 10 }">
					<c:set var="begin" value="1"></c:set>
					<c:set var="end" value="${pageBean.totalPage }"></c:set>
			</c:when>
			<%--总页数大于10的情况 --%>
			<c:otherwise>
				<c:set var="begin" value="${pageBean.currentPage - 5 }"></c:set>
				<c:set var="end" value="${pageBean.currentPage + 4 }"></c:set>
				<%--头溢出 --%>
				<c:if test="${begin < 1 }">
					<c:set var="begin" value="1"></c:set>
					<c:set var="end" value="10"></c:set>
				</c:if>
				<%--尾溢出 --%>
				<c:if test="${end > pageBean.totalPage }">
					<c:set var="begin" value="${pageBean.totalPage - 9 }"></c:set>
					<c:set var="end" value="${pageBean.totalPage }"></c:set>
				</c:if>
			</c:otherwise>
		</c:choose>
		
		<%--显示页码列表 --%>
		<!-- for(int i = begin;i < end;i++) -->
		<c:forEach var="i" begin="${begin }" end="${end }">
			<c:choose>
				<c:when test="${i eq pageBean.currentPage }">
					<b>[${i }]</b>
				</c:when>
				<c:otherwise>
					<a href="${pageBean.url }&currentPage=${i }">[${i }]</a>
				</c:otherwise>
			</c:choose>
			
		</c:forEach>
		
		<c:if test="${pageBean.currentPage < pageBean.totalPage }">
			<a href="${pageBean.url }&currentPage=${pageBean.currentPage + 1 }">下一页</a>
		</c:if>
		<a href="${pageBean.url }&currentPage=${pageBean.totalPage }">尾页</a>
	</center>
        </div> <!-- end of content right -->
		  
    	<div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->
    
    <div id="templatemo_footer">
    
	       <a href="index.jsp">Home</a> | <a href="shopcart/trolley.jsp">购物车</a> | <a href="order/orderForm.jsp">我的订单</a> | <a href="#">星火书店</a> | <a href="#">常见问题</a> | <a href="#">联系我们</a><br />
        Copyright © NewBee <a href="#"><strong>Chinasofti</strong></a> | from 	何仁杰
    </div> 
    <!-- end of footer -->
</div> <!-- end of container -->
</body>
</html>
