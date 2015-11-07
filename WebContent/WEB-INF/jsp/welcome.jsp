<html>
    <head>
<form action="test.jsp">
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

<title>Way of Being! </title>
<style>
</style>
</head>
    <div id="chart_div" style="width: 900px; height: 500px; background-image:url("pic_mountain.jpg")></div>
    
<table>
  <tr>
    <td>I make basic mistakes because of carelessness, not paying attention, or thinking of something else.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
    <tr>
    <td>I value getting things done over finding deeper purpose (i.e. meaning) in what I am doing.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I find it difficult to stay focused on the present moment during meetings.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I get so busy that I forget to stop and appreciate life.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I find myself listening to a coworker with one ear, and doing something else at the same time.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I ask myself "How many tasks can I accomplish before the day is through?"</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I rush through activities without being paying close attention to them.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I get consumed by worries that I won't get everything done.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I fail to notice how I am feeling when speaking with a coworker.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I put job responsibilities above caring for myself and others.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I complete tasks automatically, without being aware of what I'm doing.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I forget that we only have one life to live.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I find myself preoccupied with the future or the past.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I judge my days by how much work I finish.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I find my mind wandering as if "by itself" when working.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I find myself preoccupied with making sure others complete their work rather than helping them <br> finds deeper meaning in their work.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I commute to and from work on "auto-pilot" without remembering what most of the trip was like.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
  
      <tr>
    <td>I go through my day as if I will live forever.</td>
	    <td><input type="radio" name="choice1" value="AmostAlways">Almost Always 
	    <input type="radio" name="choice1" value="VeryFrequently">Very Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Somewhat Frequently
	    <input type="radio" name="choice1" value="VeryFrequently">Very Infrequently
	    <input type="radio" name="choice1" value="VeryFrequently">Almost Never
	</td>
  </tr>
</table>
    
    <br><br><br>
  <input type="button" value="Submit" onclick=drawChart() />
</form>
</html>