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
	      results.push(result);
        
        var data = google.visualization.arrayToDataTable(results);
        
        var options = {
        title: 'Way of Being',
        backgroundColor: 'none',
		  vAxis: {
			  	title: 'Presence Score',
			  	gridlines:{color: 'transparent'},
          		ticks: [10,20,30,40,50,60,70,80,90],
		        viewWindowMode:'maximized'
		  },
		  hAxis: { 
			  	ticks: [10,20,30,40,50,60,70,80,90],		  	
		    	title: 'Purpose Score',
		    	gridlines:{color: 'transparent'},
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
      }
    </script>
    <html>
    <head>
    <title>Way of Being results</title>
    </head>
    <body>
    <div id="chart_div" style="width: 1200px; height: 1200px;background:url(images/backgroundImage.jpg) no-repeat;"></div>
    <form>
    </form>
    </body>
    </html>

