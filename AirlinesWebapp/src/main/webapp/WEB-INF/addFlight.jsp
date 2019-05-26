<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Add new Flights</title>
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
            <h5 class="card-title text-center">Add Flight</h5>
            <form:form method="POST"  action="addFlight" modelAttribute="addflight" >
              <div class="form-label-group">
              	<label for="flightNumber">Flight Number</label>
                <input type="text" name="flightNumber"  class="form-control" placeholder="flight Number" required autofocus>             
              </div>
              <div class="form-label-group">
                <label for="operatingAirlines">Operating Airlines</label>
                <input type="text" name="operatingAirlines"  class="form-control" placeholder="Operating Airlines" required autofocus>
              </div>
               <div class="form-label-group">
                <label for="departureCity">Departure City</label>
                <input type="text" name="departureCity" id="departureCity" class="form-control" placeholder="departureCity" required>
              </div>
               <div class="form-label-group">
                <label for="arrivalCity">Arrival City</label>
                <input type="text" name="arrivalCity" id="arrivalCity" class="form-control" placeholder="Arrival City" required autofocus>
              </div>
              
              <div class="form-label-group">
                <label for="dateOfDeparture">Date of Departure</label>
                <input type="date" name="dateOfDeparture" id="dateOfDeparture" class="form-control" placeholder="Date Of Departure" required>
              </div>  
              <div class="form-label-group">
                <label for="estimatedDepartureTime">Estimated departure time</label>
                <input type="text" name="estimatedDepartureTime" id="estimatedDepartureTime" class="form-control" placeholder="Estimated departure time" required>
              </div>
              <div class="form-label-group">
                <label for="price">Price</label>
                <input type="text" name="price" id="price" class="form-control" placeholder="price" required autofocus>
              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Add Flight</button>
              
            </form:form>
          </div>
        </div>
      </div>
    </div>
  </div>

</body>
</html>