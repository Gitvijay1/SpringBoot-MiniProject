<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  <form action="#" method="post">
  <div class="container">
   <h4 style="color:blue;">WELCOME TO UPDATION PAGE</h4>
    <div class="row">
       <div class="form-group">
         <input type="text" name="id" value="${ob.id}" class="form-control" readonly="readonly"></br>
       </div>
     </div>
     <div class="row">
       <div class="form-group">
         <input type="text" name="panNo" value="${ob.panNo}" class="form-control"></br>
       </div>
     </div>
     <div class="row">
       <div class="form-group">
         <input type="text" name="aAdharNo" value="${ob.aAdharNo}" class="form-control"></br>
       </div>
     </div>
     <div class="row">
       <div class="form-group">
         <input type="text" name="pasPoNo" value="${ob.pasPoNo}" class="form-control"></br>
       </div>
     </div>
     <div class="row">
       <div class="form-group">
         <input type="text" name="bankANo" value="${ob.bankANo}" class="form-control"></br>
       </div>
     </div>
     <div class="row">
       <div class="form-group">
         <input type="text" name="INo" value="${ob.INo}" class="form-control"></br>
       </div>
     </div>
  <button class="btn btn-primary" onclick="return confirm('Are you sure?')">Edit</button>
  </div>
  </form>
</body>
</html>