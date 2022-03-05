
<%@page import="com.crud.Edit_values"%>
<%@page import="com.crud.User_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


  <link rel="stylesheet" 
  href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" >
</head>
<body>
<%
String sl_no=(String)request.getParameter("sl_no");
Edit_values obj_Edit_values=new Edit_values();
User_Bean obj_User_Bean=obj_Edit_values.get_value_of_user(sl_no);
%>





<div class="container">
<h1>Edit Page</h1>
	<form  class="pt-5" action="controller/edit_controller.jsp">
                <div class="form-group">
                  <label for="exampleInputEmail1">Symbol number</label>
                  <input type="text" class="form-control"  id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="eg 1,2,100" name="sl_no" value="<%=sl_no%>">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputPassword1">Name</label>
                  <input type="text" class="form-control"  id="exampleInputPassword1" aria-describedby="emailHelp" placeholder="Enter Name" name="user_name" value="<%=obj_User_Bean.getUser_name()%>">
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Contact number</label>
                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="eg 9844782345" name="mobile" value="<%=obj_User_Bean.getMobile()%>">
                  </div>
                  
                  <div class="form-group">
                    <label for="exampleInputPassword1">Email</label>
                    <input type="email" class="form-control"   id="exampleInputPassword1" aria-describedby="emailHelp" placeholder="eg jesus@gmail.com"  name="email" value="<%=obj_User_Bean.getEmail()%>">
                  </div>
                
              
                <button type="submit" class="btn btn-success">Submit</button>
</div>
   
              </form>




</body>
</html>