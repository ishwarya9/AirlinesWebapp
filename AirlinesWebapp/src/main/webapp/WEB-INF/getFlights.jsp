<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<title>Find Flights</title>
</head>
<body>
<div class="container">
<h2>Find Flights:</h2>
<label class="radio-inline"><input type="radio" name="optradio" id="roundTrip" checked>Round Trip</label>
<label class="radio-inline"><input type="radio" name="optradio" id="oneWay">One Way</label>
<form class="form-inline" action="getFlights" method="post">

From:<input type="hidden" class="form-control mb-2 mr-sm-2" name="testfrom" >
<form:select path="Flight" class="form-control" name="from">
         <form:options items="${allFlights}"  itemLabel="departureCity" itemValue="departureCity" class="dropdown-item" ></form:options>
    </form:select>
    &nbsp;</br>
    <span>
To:<input type="hidden" class="form-control mb-2 mr-sm-2" name="testto"/>
<form:select path="Flight" name="to" class="form-control" >
         <form:options items="${allFlights}"  itemLabel="arrivalCity" itemValue="arrivalCity" class="dropdown-item" ></form:options>
    </form:select>
    </span>
&nbsp;
 Departure Date:<input type="text" class="form-control mb-2 mr-sm-2" name="departureDate"/>


<button class="btn btn-primary text-uppercase" type="submit">Search Flights</button>

</form>
</div>
</body>
</html>


