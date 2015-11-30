<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);      
      
      function drawChart() {
		var jsAtt = '${userResult}';
		jsAtt =jsAtt.slice(1, jsAtt.length-1);
	      var result = jsAtt.split(", ");
	      
	      var results = []; 
	      results.push(['ID', 'Purpose', 'Presence']);
          results.push(['',   0,  0]);
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
    <form>
    <h2>DESCRIPTION OF WAYS OF BEING</h2><br>
    The chart above illustrates four Ways of Being. Depending upon your score, you are plotted into one of four categories: Yearning, Habituating, Transforming, and Transcending. Below is a description of possible implications for each of these ways of being, including strengths, weaknesses, blind spots, and things that organizations can do to support your development.
    <br><br>
    <b>Yearning:</b>Those whose way of being is characterized as Yearning may find themselves preoccupied with their larger purpose in life. They may experience a deep desire to develop a greater sense of purpose at work and are likely to be interested in practicing ways to determine what that is. Of course, yearning can also sometimes distract individuals from the day-to-day operations at work, or leave them feeling dissatisfied on a deeper level.  As leaders they may be able to espouse what it means to be part of something bigger but at a subconscious level they experience a sense of needing this higher calling for themselves; perhaps something that is sensed but also just out of reach. This is a very admirable desire, though at the same time (as there are tradeoffs with every way of being) they must be careful not to make unintentional mistakes and miss practical opportunities. Organizations can do more to help these individuals find the sense of greater purpose they seek at work by incorporating training in authentic leadership and facilitating mindfulness practice to improve levels of awareness. In order to cultivate your sense of presence and purpose, you might try listening to these free guided mindfulness practice recordings online:
<br>
Intro to Mindfulness Practice: <a href="https://www.youtube.com/watch?v=8in2mXksJhc">https://www.youtube.com/watch?v=8in2mXksJhc</a><br>
Breathing Practice: <a href="https://www.youtube.com/watch?v=T67UC1vMJo0">https://www.youtube.com/watch?v=T67UC1vMJo0</a><br> 
Loving Kindness: <a href="https://www.youtube.com/watch?v=bdGholb46xE">https://www.youtube.com/watch?v=bdGholb46xE</a><br> 
Bodyscan: <a href="https://www.youtube.com/watch?v=dEtFOlOa8vQ">https://www.youtube.com/watch?v=dEtFOlOa8vQ</a> 
     
    <br><br>
<b>Habituating:</b>    Those whose way of being is characterized as Habituating may find themselves automatically privileging everyday tasks and aspects of organizational life (emails and office politics for example). They may also find it easy and preferable to define and focus on tangible problems, rather than investigating the deeper premises that frame these problems. As leaders, they may demonstrate a preoccupation with fixing what is broken and maintaining what is not broken in line with the status quo; this is an important feature of leadership in many organizations, though at the same time (as there are tradeoffs with every way of being), they may be unaware of the paradigm from which they operate. In doing so, they may be prone to automating strategies, goals, tasks, and measurement of ‘real world’ success. Organizations can do more to help these individuals pause, reflect on their assumptions, engage in reflective discourse with colleagues, and explore new strategies. In order to cultivate your sense of presence and purpose, you might try listening to these free guided mindfulness practice recordings online:
<br>
Intro to Mindfulness Practice: <a href="https://www.youtube.com/watch?v=8in2mXksJhc">https://www.youtube.com/watch?v=8in2mXksJhc</a><br>
Breathing Practice: <a href="https://www.youtube.com/watch?v=T67UC1vMJo0">https://www.youtube.com/watch?v=T67UC1vMJo0</a><br> 
Loving Kindness: <a href="https://www.youtube.com/watch?v=bdGholb46xE">https://www.youtube.com/watch?v=bdGholb46xE</a><br> 
Bodyscan: <a href="https://www.youtube.com/watch?v=dEtFOlOa8vQ">https://www.youtube.com/watch?v=dEtFOlOa8vQ</a> 
	<br><br>
<b>Transforming:</b>Those whose way of being is characterized as Transcending tend to be substantially aware of their greater sense of purpose in life and work. They are also likely better at recognizing and understanding the ways of being portrayed by their colleagues in the organization as they maintain a bird's eye view of organizational culture. These individuals may be said to view the 'self' as an ocean of consciousness that in all situations can show up as one's best self. They may also tend to view the organization as a process in motion. In this way they are able to recognize paradoxes and lead others to embrace polarities. These are excellent characteristics for a good leader, however (just as there are tradeoffs with every way of being) same time, they are likely to be misunderstood by others to be wishy-washy, or contradicting themselves, when they are actually able to see both sides of the same argument as valid. Leaders who tend toward this way of being are also likely more interested in the questions than the answers, thereby exemplifying the notion of beginners mind. In both purpose-driven and everyday discussions with others they might draw attention to instances where individuals and teams get ahead of themselves, become trapped in the past, or get stifled by attachments that cause distress. Organizations can do more to help those who fall into this category better understand the implications for the discussions and language they use when talking to colleagues who have a different way of being. In order to cultivate your sense of presence and purpose, you might try listening to these free guided mindfulness practice recordings online:
<br>
Intro to Mindfulness Practice: <a href="https://www.youtube.com/watch?v=8in2mXksJhc">https://www.youtube.com/watch?v=8in2mXksJhc</a><br>
Breathing Practice: <a href="https://www.youtube.com/watch?v=T67UC1vMJo0">https://www.youtube.com/watch?v=T67UC1vMJo0</a><br> 
Loving Kindness: <a href="https://www.youtube.com/watch?v=bdGholb46xE">https://www.youtube.com/watch?v=bdGholb46xE</a><br> 
Bodyscan: <a href="https://www.youtube.com/watch?v=dEtFOlOa8vQ">https://www.youtube.com/watch?v=dEtFOlOa8vQ</a><br>
Advanced Breathing Practice:<a href="https://www.youtube.com/watch?v=2Z_gKqnBTXM">https://www.youtube.com/watch?v=2Z_gKqnBTXM </a>
	<br><br>
<b>Transcending:</b>Those whose way of being is characterized as Transcending tend to be substantially aware of their greater sense of purpose in life and work. They are also likely better at recognizing and understanding the ways of being portrayed by their colleagues in the organization as they maintain a bird’s eye view of organizational culture. These individuals may be said to view the ‘self’ as an ocean of consciousness that in all situations can show up as one’s best self. They may also tend to view the organization as a process in motion. In this way they are able to recognize paradoxes and lead others to embrace polarities. These are excellent characteristics for a good leader, however (just as there are tradeoffs with every way of being) same time, they are likely to be misunderstood by others to be wishy-washy, or contradicting themselves, when they are actually able to see both sides of the same argument as valid. Leaders who tend toward this way of being are also likely more interested in the questions than the answers, thereby exemplifying the notion of beginners mind. In both purpose-driven and everyday discussions with others they might draw attention to instances where individuals and teams get ahead of themselves, become trapped in the past, or get stifled by attachments that cause distress. Organizations can do more to help those who fall into this category better understand the implications for the discussions and language they use when talking to colleagues who have a different way of being. In order to cultivate your sense of presence and purpose, you might try listening to these free guided mindfulness practice recordings online:
<br>
Intro to Mindfulness Practice: <a href="https://www.youtube.com/watch?v=8in2mXksJhc">https://www.youtube.com/watch?v=8in2mXksJhc</a><br>
Breathing Practice: <a href="https://www.youtube.com/watch?v=T67UC1vMJo0">https://www.youtube.com/watch?v=T67UC1vMJo0</a><br>
Loving Kindness: <a href="https://www.youtube.com/watch?v=bdGholb46xE">https://www.youtube.com/watch?v=bdGholb46xE</a><br>
Bodyscan: <a href="https://www.youtube.com/watch?v=dEtFOlOa8vQ">https://www.youtube.com/watch?v=dEtFOlOa8vQ</a><br>
Advanced Breathing Practice:<a href="https://www.youtube.com/watch?v=2Z_gKqnBTXM">https://www.youtube.com/watch?v=2Z_gKqnBTXM</a><br>
Choiceless Awareness:<a href="https://www.youtube.com/watch?v=RTBbKJXKbhs">https://www.youtube.com/watch?v=RTBbKJXKbhs</a>
	<br><br>
    </form>
    </body>
</html>