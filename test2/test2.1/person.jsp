<%@page contentType = "text/html;charset=UTF-8"%>
<html >
 <head>
  <title>Document</title>
 </head>
 <body>
     <%!
	 StringBuffer personList;
	 int count = 0;
		 public void judge(){
		     if(count == 0)    personList = new StringBuffer();
		 }

		 public void addPerson(String p){
		     if(count == 0) personList.append(p);
			 else personList.append(","+p);
			 count++;
		 }
	 %>

	 <%
	    String name = request.getParameter("username");
		if(name == null || name.length() > 10 ){
	  %>
	     <jsp:forward page = "input.jsp" />
		<%
		  }
		judge();
		addPerson(name);
	 %>

  <p> 目前共有  <%= count %> 人 </p>
  <p> 他们分别是 <%= personList %> </p>
 </body>
</html>
