<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- Import all the necessary classes --%> 
<%@ page import="demo.hogwarts.House" %>
<%@ page import="demo.hogwarts.HouseFacade" %>
   

<%
	
	// Get parameter value from link
	// Use request.getParameter( ).  
	//It is similar practice from the Servlet.
	int houseId = Integer.parseInt(request.getParameter("id"));

	// Wrap into House
	House house = new House();
	house.setHouseId(houseId);
	
	// Get house. Use house Facade
	HouseFacade houseFacade = new HouseFacade();
	house = houseFacade.getHouse(house);
	
%>   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- The title bar should display the house name -->
<title>Details Information of </title>
</head>
<body>

<br><br><br>
<!-- The heading should display the house name -->
<h4>Details Information of </h4>

<b>Name:</b> <%= house.getName() %><br><br>
<b>Founder:</b> <%= house.getFounder() %><br><br>
<b>Color:</b> <%= house.getColor() %><br><br>
<b>Mascot:</b> <%= house.getMascot() %><br><br>

Click <a href="houses.jsp">here</a> to return to list of Hogwart's Houses
<!-- Include a footer menu -->
<jsp:include page="footerMenu.html" />

</body>
</html>