<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="favicon.ico">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <center>
    <table>
        <td><a href="register">REGISTER---</a></td>
        <td><a href="all">VIEW-ALL</a></td>
      </tr>
    </table>
    </center>
    <hr/>
  <div class="container">
      <h4 style="color:purple;">WELCOME TO USER DATA PAGE</h4>
    <table class="table table-hover" border="1">
       <thead>
         <tr>
         <th>ID</th>
         <th>PAN-NUMBER</th>
         <th>AADHAR-NUMBER</th>
         <th>PASPORT-NUMBER</th>
         <th>BANK-ACC-NUMBER</th>
         <th>INSURENCE-NUMBER</th>
         <th colspan="2">OPTION</th>
         </tr>
       </thead>
       <tbody>
         <c:forEach items="${list}" var="ob">
         <tr> 
           <td>${ob.id}</td>
           <td>${ob.panNo}</td>
           <td>${ob.aAdharNo}</td>
           <td>${ob.pasPoNo}</td>
           <td>${ob.bankANo}</td>
           <td>${ob.INo}</td>
           <td><a href="delete?id=${ob.id}" onclick="return confirm('Are you sure?')">DELETE</a></td>
           <td><a href="edit?id=${ob.id}">EDIT</a>
         </tr>
         </c:forEach>
       </tbody>
    </table>
  </div>
</body>
</html>