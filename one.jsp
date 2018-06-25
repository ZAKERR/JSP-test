<%@page contentType = "text/html;charset=UTF-8"%>
<html >
 <head>
  <title>Document</title>
    <jsp:include page = "head.txt" />
 </head>
 <body>

     <% String num = request.getParameter("num");

       if(num == null) num = 0;
		else{
		   int hw = Integer.parseInt(num);
		   if(hw <= 50 && hw >= 1) {
	    %>
	        <jsp:forward page = "two.jsp" >
			   <jsp:param name = "num" value = "<%=hw%>"/>
			</jsp:forward >
	     <%
		   }
	        else if(hw > 50 && hw <= 100){
		  %>
			<jsp:forward page = "three.jsp">
			   <jsp:param name = "num" value = "<%=hw%>"/>
			</jsp:forward>
		  <%
			}
		    else {
		   %>
		     <jsp:forward page = "error.jsp"/>
         <%
		  }	
		}
	  %>
   


    <form method="get" action="">
        请输入1-100之间的整数<input type="text" name="num">
	   <input type="submit" value="提交">
    </form>
 </body>
</html>
