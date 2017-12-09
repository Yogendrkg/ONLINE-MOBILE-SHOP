<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Log in</title>
<style type="text/css">
/* Style inputs with type="text", select elements and textareas */
textarea[type=text], select, textarea {
    width: 20%; /* Full width */
    padding: 12px; /* Some padding */ 
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 16px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}

/* Style the submit button with a specific background color etc */
button[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: 2px;
    border-radius: 4px;
    cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
button[type=submit]:hover {
    background-color: #45a049;
}

.right {	text-align: right;
}
</style>
<link href="italics.css" rel="stylesheet" type="text/css" />
</head>

<body background="SplitShire_Blur_Background_XVI-1800x1200.jpg">
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>

<center> 
  <table width="1100" height="102" border="0">
    <tr>
      <td width="400" height="96"><img src="head.png" width="400" height="88" alt="Logo" /></td>
      <td width="726" class="right">24X7 Customer Support -  <a href="home.jsp">Home</a> | 
        <% if(session.getAttribute("uname")!=null) { out.print(session.getAttribute("uname"));
			%> 
               <a href="logout.jsp">Logout</a>   
        <%} else{
			%><jsp:forward page="login1.jsp" />
		<%}%></td>
    </tr>
  </table>
  <hr color="blue"/>
 <table>
<br>

<center><h4><font color="red">Address Not Be Empty!</font></center>
<form action="UpdateAddress.jsp">
 <center><h3>New Address<h3></center><br>
 <center><textarea type="text" name="address"></textarea></center><br>

<center><button type="submit">Update Address</button></center><br>
</form>