<html>
<form method="post" action="welcome.jsp">
<head>
<title>Way of Being!!! </title>
<style>
h1 { 
    display: block;
    font-size: 2em;
    margin-top: 0.67em;
    margin-bottom: 0.67em;
    margin-left: 100;
    margin-right: 100;
    color:blue;
    font-weight: bold;
}
</style>
</head>
<body bgcolor="#E6E6FA">
	<br>
	
	
	
	<br>
	<div style="text-align:left">
		<h2 >
			Welcome to the survey of Way of Being...<br> <br>
		</h2>
<h1>
	Please enter information here...		
</h1>

<table>
<tr>
<td><label>Firt Name: </label></td><td><input type="text" name="fname" required/></td>
</tr>
<tr>
<td><label>Last Name: </label></td><td><input type="text" name="lname" required/></td>
</tr>
<tr>
<td><label>Email: </label></td><td><input type="email" name="email" required/></td>
</tr>
<tr>
<td><label>Organization ID: </label></td><td><input type="text" name="orgId" required/></td>
<tr>
<td><label>Age Group (Years range):</label></td><td>
<select required>
	<option value=""></option>
   <option value="1525">15-25</option>
   <option value="2635">26-35</option>
   <option value="3645">26-45</option>
   <option value="4655">46-45</option>
   <option value="5665">56-65</option>
   <option value="65+">65+</option>
</select></td>
</tr>
<tr>
<td><label>Number of years worked <br>for organization: </label></td><td><input type="text" name="yearsInOrg" required/></td>
<tr>
<tr>
<td><label>Gender:</label></td><td>
	<input type="radio" name="sex" value="Male">Male
	<input type="radio" name="sex" value="Female">Female
	</td>
<tr>

</table>
		<br>
		<br>
		<h3>			
			<input type="submit" value="Start Survey"/>
		</h3>
	</div>
</body>
</html>