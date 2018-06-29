<%@page contentType = "text/html;charset=UTF-8"%>
<html >
 <head>
  <title>Document</title>
    <jsp:include page = "head.txt"/>
 </head>
 <body>

     <% String num = request.getParameter("num");

           if(num == null) num = "0";
		
	     try {
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
		    else if(hw > 100) {
		   %>
		     <jsp:forward page = "error.jsp"/>
         <%
		    }	
		 }
		catch(Exception e){ 
		  %>
		     <jsp:forward page = "error.jsp" >
			    <jsp:param name = "mess" value = "<%=e.toString()%>"/>
			 </jsp:forward>
       <%
		}
	  %>
   


    <form method="post" action="">
        请输入1-100之间的整数:<input type="text" name="num">
	   <input type="submit" value="提交">
    </form>
 </body>
</html>
