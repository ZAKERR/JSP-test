<%@page contentType = "text/html;charset=UTF-8"%>
<html >
 <head>
  <title>Document</title>
  <jsp:include page = "head.txt" />
 </head>
 <body>
     <% 
	   String hw = request.getParameter("num");
	   hw = "100";
	   int num = Integer.parseInt(hw);  
	 %>
	 <p> This is error </p>
    <img src="error.jpg" width="<%= num%>" height="<%= num%>" border="0" alt="">
 </body>
</html>
