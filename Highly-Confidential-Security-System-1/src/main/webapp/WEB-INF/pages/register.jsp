<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <tr> 
        <td><a href="register">REGISTER---</a></td>
        <td><a href="all">VIEW-ALL</a></td>
      </tr>
    </table>
    <hr/>
    </center>
  <form action="/save" method="post">
  <div class="container">
     <h5 style="color:red;">WELCOME TO USER REGISTER PAGE</h5>
     <div class="row">
       <div class="form-group">
         <input type="text" name="panNo" placeholder="Enter-PanNumber" class="form-control"></br>
       </div>
     </div>
     <div class="row">
       <div class="form-group">
         <input type="text" name="aAdharNo" placeholder="Enter-AadharNumber" class="form-control"></br>
       </div>
     </div>
     <div class="row">
       <div class="form-group">
         <input type="text" name="pasPoNo" placeholder="Enter-PassPortNumber" class="form-control"></br>
       </div>
     </div>
     <div class="row">
       <div class="form-group">
         <input type="text" name="bankANo" placeholder="Enter-BankAccNumber" class="form-control"></br>
       </div>
     </div>
     <div class="row">
       <div class="form-group">
         <input type="text" name="INo" placeholder="Enter-InsurenceNumber" class="form-control"></br>
       </div>
     </div>
  <button class="btn btn-primary">submit</button>
    <h4 style="color: green;">${user}</h4>
  </div>
  </form>
</body>
</html>