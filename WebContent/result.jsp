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
        		
        backgroundColor: {fill:'#DDE3E7'},
          //colorAxis: {colors: ['yellow', 'red']},
		  //colorAxis: {colors: []}
		  vAxis: {
			  	title: 'Presence Score',
          		ticks: [10,20,30,40,50,60],
		        viewWindowMode:'maximized'
		  },
		  hAxis: { 
			  	ticks: [10,20,30,40,50,60],
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
		    'backgroundColor': {
		        'fill': '#F4F4F4'
		     }
		 }
        };

        var chart = new google.visualization.BubbleChart(document.getElementById('chart_div'));
        chart.draw(data, options);
        //var boundingBox = chart.getChartLayoutInterface().getChartAreaBoundingBox();
   	//$('#chartBackground').css('background-position', boundingBox.left + "px " + boundingBox.top + "px").css('background-size', boundingBox.width + "px " + boundingBox.height + "px");
      }
    </script>




    <div id="chart_div" style="width: 1100px; height: 750px; background-image:url("pic_mountain.jpg")></div>
<form action="/WayOfBeingResults" method="post">

</form>

  <input type="Submit" value="Submit" />
</html>