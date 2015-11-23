<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);      
      
      function drawChart() {		
		var jsAtt = '${userResult}';
		jsAtt =jsAtt.slice(1, jsAtt.length-1);
	      var result = jsAtt.split(", ");	      
	      
	      
	      var results = []; 
	      results.push(['ID', 'Purpose', 'Presence',{ role: 'style' }]);
	      results.push(['', 0, 0,'']);
	      /*results.push(['Manoranjan', 55, 55,'']);
	      results.push(['John', 30, 20,'']);
	      results.push(['Alex', 45, 45,'']);
	      results.push(['Satish', 15, 50,'']);
	      results.push(['Saibal', 29, 49,'']);
	      results.push(['Andrew', 19, 49,'']);
	      results.push(['Jen', 39, 51,'']);
	      results.push(['Cloudia', 25, 39,'']);
	      results.push(['Chetan', 26, 31,'']);*/
	      results.push(result);
        
        var data = google.visualization.arrayToDataTable(results);
        
        var options = {
        		
        //backgroundColor: {fill:'#DDE3E7'},
        title: 'Way of Being',
        backgroundColor: 'none',
          //colorAxis: {colors: ['yellow', 'red']},
		  //colorAxis: {colors: []}
		  vAxis: {
			  	title: 'Presence Score',
          		ticks: [10,20,30,40,50,60,70,80,90],
		        viewWindowMode:'maximized'
		  },
		  hAxis: { 
			  	ticks: [10,20,30,40,50,60,70,80,90],
		    	title: 'Purpose Score',
		        slantedText: true,
		        slantedTextAngle: 30,
		        viewWindowMode:'maximized' 
		  },
		  bubble: {
			  textStyle: {fontSize: 11},
			  opacity:1.0
		 },
		 chartArea: {
		 	'backgroundColor': 'none'
		 }
        };

        var chart = new google.visualization.BubbleChart(document.getElementById('chart_div'));
        chart.draw(data, options);
        //var boundingBox = chart.getChartLayoutInterface().getChartAreaBoundingBox();
   	//$('#chartBackground').css('background-position', boundingBox.left + "px " + boundingBox.top + "px").css('background-size', boundingBox.width + "px " + boundingBox.height + "px");
      }
    </script>
<html>


<!-- <div id="brand_div" style="width: 1200px; height: 800px; background:url(http://placekitten.com/g/1400/900) no-repeat;">-->
<div id="brand_div" style="background:url(images/backgroundImage.jpg) no-repeat;">
    <div id="chart_div" style="width: 1200px; height: 800px;"></div>
</div>
    
<form action="/WayOfBeingResults" method="post">
</form>
  <input type="Submit" value="Submit" />

</html>