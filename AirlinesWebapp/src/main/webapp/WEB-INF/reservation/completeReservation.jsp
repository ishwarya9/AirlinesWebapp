<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<title>Complete Reservation</title>
</head>
<body>
	<div class="jumbotron text-center">
		<h2>
			Airlines: ${flight.operatingAirlines}<br /> Departure City:
			${flight.departureCity}<br /> Arrival City: ${flight.arrivalCity}<br />
		</h2>
		<h3>Please fill in below details to complete the Reservation</h3>
	</div>
	<div class="container">
		<h2>Passenger Details:</h2>
		<form class="form-horizontal" action="completeReservation"
			method="post">
			<div class="form-group">
				<label class="control-label col-sm-2" for="passengerFirstName">First
					Name</label>
				<div class="col-sm-10">
					<input type="text" name="passengerFirstName" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="passengerLastName">Last
					Name</label>
				<div class="col-sm-10">
					<input type="text" name="passengerLastName" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="passengerEmail">Email</label>
				<div class="col-sm-10">
					<input type="text" name="passengerEmail" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="passengerPhone">Phone</label>
				<div class="col-sm-10">
					<input type="text" name="passengerPhone" class="form-control" />
				</div>
			</div>


			<h2>Card Details:</h2>
			<div class="form-group">
			<label class="control-label col-sm-2" for="nameOnTheCard">Name on the Card</label>
			<div class="col-sm-10">
				<input type="text" name="nameOnTheCard" class="form-control" />
				</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-2" for="cardNumber">Card Number</label>
				<div class="col-sm-10">
				<input type="text" name="cardNumber" class="form-control" />
				</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-2" for="expirationDate">Valid Thru</label>
			<div class="col-sm-10">
				<input type="text" name="expirationDate" class="form-control" />
				</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-2" for="securityCode">Three Digit CVV code</label>
			<div class="col-sm-10">
				<input type="text" name="securityCode" class="form-control" />
				</div>
			</div>

			<input type="hidden" name="flightId" value="${flight.id}" /> 
			<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Confirm</button>
        </div>
      </div>
			
	
	</form>
	</div>
</body>
</html>