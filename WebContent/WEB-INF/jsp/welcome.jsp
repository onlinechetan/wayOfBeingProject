<html>
    <head>
    	<title>Way of Being! </title>
    	<style>
table {
    border:2px solid #CCC;
    border-collapse:collapse;
}

td {
    border:2px solid #CCC;
    padding: 5px;
    font-weight: bold;
    text-align: center;
    vertical-align: bottom;
}
th {
    border:2px solid #CCC;
    color: #FFFFFF;
    background: #333333;
    padding: 5px;
    font-weight: bold;
    text-align: center;
    vertical-align: bottom;
}
</style>
    </head>
<form action="result.jsp">
${message}
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      //google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['ID', 'Purpose', 'Presence',{ role: 'style' }],          
          ['',   79,  136,'color: #76A7FA'],
          ['',   78,  184,'color: #76A7FA'],
          ['',   72,  278,'color: #76A7FA'],
          ['',   81,  200,'color: #76A7FA'],
          ['',   72,  170,'color: #76A7FA'],
          ['',   68,  477,'color: #76A7FA'],
          ['Chetan',   80,  167,'color: #99FFCC']
        ]);

        var options = {
          //colorAxis: {colors: ['yellow', 'red']},
		  //colorAxis: {colors: []}
		  vAxis: {title: 'Presence Score'},		  
		    hAxis: { 
		    	title: 'Purpose Score',
		        direction: -1, 
		        slantedText: true,
		        slantedTextAngle: 90
		    },
		  bubble: {
			  textStyle: {fontSize: 11},
			  plotBackgroundImage:"http://www.w3schools.com/html/pic_mountain.jpg"}
        };

        var chart = new google.visualization.BubbleChart(document.getElementById('chart_div'));
        chart.draw(data, options);
        //var boundingBox = chart.getChartLayoutInterface().getChartAreaBoundingBox(); 
   	//$('#chartBackground').css('background-position', boundingBox.left + "px " + boundingBox.top + "px").css('background-size', boundingBox.width + "px " + boundingBox.height + "px");
      }
    </script>




    <div id="chart_div" style="width: 900px; height: 500px; background-image:url("pic_mountain.jpg")></div>
    
<table>
<tr>
<th></th>
    <th>Survey Question</th>
	    <th>Almost Always</th>
	    <th>Very Frequently</th>
	    <th>Somewhat Infrequently</th>
	    <th>Somewhat Frequently</th>
	    <th>Very Infrequently</th>
	    <th>Almost Never</th>
</tr>
  <tr>
  <td>1</td>
    <td>I make basic mistakes because of carelessness, not paying attention, or thinking of something else.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways"></td>
	    <td><input type="radio" name="choice1" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice1" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice1" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice1" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice1" value="AlmostNever"></td>
  </tr>
  
    <tr>
    <td>2</td>
    <td>I value getting things done over finding deeper purpose (i.e. meaning) in what I am doing.</td>
	    <td><input type="radio" name="choice2" value="AmostAlways"></td>
	    <td><input type="radio" name="choice2" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice2" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice2" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice2" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice2" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>3</td>
    <td>I find it difficult to stay focused on the present moment during meetings.</td>
	    <td><input type="radio" name="choice3" value="AmostAlways"></td>
	    <td><input type="radio" name="choice3" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice3" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice3" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice3" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice3" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>4</td>
    <td>I get so busy that I forget to stop and appreciate life.</td>
	    <td><input type="radio" name="choice4" value="AmostAlways"></td>
	    <td><input type="radio" name="choice4" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice4" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice4" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice4" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice4" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>5</td>
    <td>I find myself listening to a coworker with one ear, and doing something else at the same time.</td>
	    <td><input type="radio" name="choice5" value="AmostAlways"></td>
	    <td><input type="radio" name="choice5" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice5" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice5" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice5" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice5" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>6</td>
    <td>I ask myself "How many tasks can I accomplish before the day is through?"</td>
	    <td><input type="radio" name="choice6" value="AmostAlways"></td>
	    <td><input type="radio" name="choice6" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice6" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice6" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice6" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice6" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>7</td>
    <td>I rush through activities without being paying close attention to them.</td>
	    <td><input type="radio" name="choice7" value="AmostAlways"></td>
	    <td><input type="radio" name="choice7" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice7" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice7" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice7" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice7" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>8</td>
    <td>I get consumed by worries that I won't get everything done.</td>
	    <td><input type="radio" name="choice8" value="AmostAlways"></td>
	    <td><input type="radio" name="choice8" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice8" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice8" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice8" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice8" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>9</td>
    <td>I fail to notice how I am feeling when speaking with a coworker.</td>
	    <td><input type="radio" name="choice9" value="AmostAlways"></td>
	    <td><input type="radio" name="choice9" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice9" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice9" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice9" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice9" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>10</td>
    <td>I put job responsibilities above caring for myself and others.</td>
	    <td><input type="radio" name="choice10" value="AmostAlways"></td>
	    <td><input type="radio" name="choice10" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice10" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice10" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice10" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice10" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>11</td>
    <td>I complete tasks automatically, without being aware of what I'm doing.</td>
	    <td><input type="radio" name="choice11" value="AmostAlways"></td>
	    <td><input type="radio" name="choice11" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice11" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice11" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice11" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice11" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>12</td>
    <td>I forget that we only have one life to live.</td>
	    <td><input type="radio" name="choice12" value="AmostAlways"></td>
	    <td><input type="radio" name="choice12" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice12" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice12" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice12" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice12" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>13</td>
    <td>I find myself preoccupied with the future or the past.</td>
	    <td><input type="radio" name="choice13" value="AmostAlways"></td>
	    <td><input type="radio" name="choice13" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice13" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice13" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice13" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice13" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>14</td>
    <td>I judge my days by how much work I finish.</td>
	    <td><input type="radio" name="choice14" value="AmostAlways"></td>
	    <td><input type="radio" name="choice14" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice14" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice14" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice14" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice14" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>15</td>
    <td>I find my mind wandering as if "by itself" when working.</td>
	    <td><input type="radio" name="choice15" value="AmostAlways"></td>
	    <td><input type="radio" name="choice15" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice15" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice15" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice15" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice15" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>16</td>
    <td>I find myself preoccupied with making sure others complete their work rather than helping them <br> finds deeper meaning in their work.</td>
	    <td><input type="radio" name="choice16" value="AmostAlways"></td>
	    <td><input type="radio" name="choice16" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice16" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice16" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice16" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice16" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>17</td>
    <td>I commute to and from work on "auto-pilot" without remembering what most of the trip was like.</td>
	    <td><input type="radio" name="choice17" value="AmostAlways"></td>
	    <td><input type="radio" name="choice17" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice17" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice17" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice17" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice17" value="AlmostNever"></td>
  </tr>
  
      <tr>
      <td>18</td>
    <td>I go through my day as if I will live forever.</td>
	    <td><input type="radio" name="choice18" value="AmostAlways"></td>
	    <td><input type="radio" name="choice18" value="VeryFrequently"></td>
	    <td><input type="radio" name="choice18" value="SomewhatInfrequently"></td>
	    <td><input type="radio" name="choice18" value="SomewhatFrequently"></td>
	    <td><input type="radio" name="choice18" value="VeryInfrequently"></td>
	    <td><input type="radio" name="choice18" value="AlmostNever"></td>
  </tr>
</table>
    
    <br><br><br>
    <!-- <input type="button" value="Submit" onclick=drawChart() />-->
  <input type="submit" value="Submit" onclick=drawChart() />
</form>
</html>