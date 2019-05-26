<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Register User</title>
</head>
<body>
<div class="container">
    <div class="row">
      <div class="col-lg-10 col-xl-9 mx-auto">
        <div class="card card-signin flex-row my-5">
          <div class="card-img-left d-none d-md-flex">
             <!-- Background image for card set in CSS! -->
          </div>
          <div class="card-body">
            <h5 class="card-title text-center">Register</h5>
            <form class="form-signin" action="registerUser" method="post">
              <div class="form-label-group">
              	<label for="firstName">First Name</label>
                <input type="text" name="firstName"  class="form-control" placeholder="First Name" required autofocus>             
              </div>
              <div class="form-label-group">
                <label for="lastName">Last Name</label>
                <input type="text" name="lastName"  class="form-control" placeholder="Last Name" required autofocus>
              </div>
               <div class="form-label-group">
                <label for="inputEmail">Email address</label>
                <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email address" required>
              </div>
               <div class="form-label-group">
                <label for="inputUserame">Username</label>
                <input type="text" name="userName" id="inputUserame" class="form-control" placeholder="Username" required autofocus>
              </div>
              <div class="form-label-group">
                <label for="inputPassword">Password</label>
                <input type="password" name="Password" id="inputPassword" class="form-control" placeholder="Password" required>
              </div>  
              <div class="form-label-group">
                <label for="inputConfirmPassword">Confirm password</label>
                <input type="password" name="confirmPassword" id="inputConfirmPassword" class="form-control" placeholder="Password" required>
              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Register</button>
              <a class="d-block text-center mt-2 small" href="getLogin">Sign In</a>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>


</body>
</html>