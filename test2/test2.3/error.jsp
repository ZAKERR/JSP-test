<%@page contentType = "text/html;charset=UTF-8"%>
<html >
 <head>
  <title>Document</title>
 </head>
 <body>
     <% 
	   String hw = request.getParameter("num");
	   int num = Integer.parseInt(hw);  
	 %>
	 <p> This is error </p>
    <img src="error.jpg" width="<%= num%>" height="<%= num%>" border="0" alt="">
 </body>
</html>
