<%@ page import="com.Payment"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/main.js"></script>
</head>
<body>
	<div class = "container">
		<div class = "row">
				<div class = "col-6">
					<h1>Payment Management</h1>
	
	<form id="formItem" name="formItem" method="post" action="payment.jsp">
		 Account No:
		 <input id="accountno" name="accountno" type="text"
 						class="form-control form-control-sm">
 						
		<br><div class="input-group input-group-sm mb-3">
             <div class="input-group-prepend">
             <span class="input-group-text" id="lblName">Payment Type: </span>
             </div>
              &nbsp;&nbsp;Card
             <input type="radio" id="rdoCard" name="paymenttype" value="Card">
              &nbsp;&nbsp;Digital Wallet
              <input type="radio" id="rdoWallet" name="paymenttype" value="Digital Wallet">
              </div>

 						
		<br> <div class="input-group input-group-sm mb-3">
             <div class="input-group-prepend">
             <span class="input-group-text" id="lblName">Card Type: </span>
             </div>
              &nbsp;&nbsp;Credit
             <input type="radio" id="rdoCredit" name="cardtype" value="Credit">
              &nbsp;&nbsp;Debit
              <input type="radio" id="rdoDebit" name="cardtype" value="Debit">
              </div>
 						
 						
		<br> Amount:
		<input id="amount" name="amount" type="text"
						 class="form-control form-control-sm">
						 
		<br>
		<input id="btnSave" name="btnSave" type="button" value="Save"
						 class="btn btn-primary">
						 
		<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
	</form>
	
	<br/>
	<!-- Show output -->

	<div id= "alertSuccess" class="alert alert-success"></div>
 	<div id = "alertError" class="alert alert-danger"></div>
	
	<br>
	<div id="divItemsGrid">
 <%
   Payment payObj = new Payment();
  out.print(payObj.readPayments());
 %>
</div>



   </div> 
  </div>
  </div>
  


</body>
</html> 