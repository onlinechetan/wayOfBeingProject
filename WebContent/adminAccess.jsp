<html>
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
<form method="post" action="WayOfBeingReport">
	<div style="text-align:left">
		<h2 >
			<br>Way of Being report<br> <br>
		</h2>
<table>

<tr>
<td><label>Email: </label></td><td><input type="email" name="email"/></td>
</tr>
<tr>
<td><label>Organization ID: </label></td><td><input type="text" name="orgId"/></td>
</tr>
<tr>
<td><label>Number of years worked <br>for organization: </label></td><td><input type="text" name="yearsInOrg"/></td>
</tr>

<tr>
<td><label>Gender:</label></td><td>
	<input type="radio" name="sex" value="1">Male
	<input type="radio" name="sex" value="2">Female
	</td>
</tr>
<tr>
<td><label>Age Group (Years range):</label></td><td>
<select name="ageGroup">
	<option value="0"></option>
   <option value="1">15-25</option>
   <option value="2">26-35</option>
   <option value="3">36-45</option>
   <option value="4">46-45</option>
   <option value="5">56-65</option>
   <option value="6">65+</option>
</select></td>
</tr>
<tr>
<td>
<label>Highest degree of education:</label></td><td>
	<select name="education">
	<option value="0"></option>
	<option value="1">High School or Less</option>
	<option value="2">College Graduate</option>
	<option value="3">Post Graduate Degree</option>
</select>
</td>
</tr>
</table>
		<br>
		<br>
		<h3>			
			<input type="submit" value="Show Report"/>
		</h3>
	</div>
	</form>
</body>
</html>