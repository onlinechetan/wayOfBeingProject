<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);      
      
      function drawChart() {
	    var results = [];
	    results.push(['ID', 'Purpose', 'Presence']);
        results.push(['',   0,  0]);

		var jsAtt = '${userResult}';
    	var report = jsAtt.replace(/\[/g , "");
		report = report.replace(/\]/g , "");
		report = report.split(", ");
		
		var surveyCounter=0;
		var survey = [];
		for(i=0; i<report.length; i++) {
			surveyCounter++;
			survey.push(report[i]);
			if(surveyCounter == 3) {
				results.push(survey);
				surveyCounter = 0;
				survey = [];
			}
		}
        
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
			  opacity:0.6
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
    </body>
</html>