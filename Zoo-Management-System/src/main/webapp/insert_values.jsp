<%@page import="java.util.Iterator"%>
<%@page import="com.crud.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="com.crud.Read_Values"%>
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



<center>
<div class="container">
 <h1 class="pt-5">Ticket Pricing </h1>
 <h6>Adult = Rs 200 </h6>
 <h6>Children = Rs 150 </h6>
 <h6>Foreigner = Rs 500 </h6>
    
    
     <form action="controller/insert_controller.jsp" class="pt-5 mb-5">
                <div class="form-group">
                  <label for="exampleInputEmail1">Symbol number</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="eg 1,2,100" name="sl_no">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputPassword1">Name</label>
                  <input type="text" class="form-control" id="exampleInputPassword1" aria-describedby="emailHelp" placeholder="Enter Name" name="user_name">
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Contact number</label>
                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="eg 9844782345" name="mobile">
                  </div>
                  
                  <div class="form-group">
                    <label for="exampleInputPassword1">Email</label>
                    <input type="email" class="form-control" id="exampleInputPassword1" aria-describedby="emailHelp" placeholder="eg jesus@gmail.com"  name="email">
                  </div>
                
              
                <button type="submit" class="btn btn-success">Submit</button>
              </form>
              
              
              <h1>Details</h1>

<%
Read_Values obj_Read_Values=new Read_Values();
List<User_Bean> list=obj_Read_Values.get_values();
Iterator<User_Bean> it_list=list.iterator();
%>

  <table class="table pt-5">
  
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Name</th>
          <th scope="col">Contact number</th>
          <th scope="col">Email id</th>
        </tr>
      </thead>
      
      <%
while(it_list.hasNext()){
User_Bean obj_User_Bean=new User_Bean();
obj_User_Bean=it_list.next();
%>
                <tbody>
                  <tr>
                    <th scope="row"><%=obj_User_Bean.getSl_no() %></th>
                    <td><%=obj_User_Bean.getUser_name() %></td>
                    <td><%=obj_User_Bean.getMobile() %></td>
                    <td><%=obj_User_Bean.getEmail() %></td>
                    <td>
                        <a href="edit.jsp?sl_no=<%=obj_User_Bean.getSl_no()%>" class="btn btn-warning">Edit</a>
                        <a href="controller/delete_controller.jsp?sl_no=<%=obj_User_Bean.getSl_no()%>" class="btn btn-danger">Delete</a>
                    </td>
                  
                  </tr>
                </tbody>
            <%
}
%>
            </table>
              
              
              
</div>



</body>
</html>


