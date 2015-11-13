<%@page import="org.json.JSONObject"%>
<% 
out.print("Test print");
out.print(request.getAttribute("userResult"));
System.out.print("userResult is: "+request.getAttribute("userResult"));
Object userResult = request.getAttribute("userResult");
out.print("Json object is: "+userResult);
%>
<script>
var userResult=JSON.stringify(<%=userResult%>);
//alert("userResult is: "+userResult);
</script>

<script>
var userResult = request.getAttribute("userResult");
//alert(userResult);
</script>
<html>
<h2>This is result</h2>


<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        /*var data = google.visualization.arrayToDataTable([
          ['ID', 'Purpose', 'Presence',{ role: 'style' }],
          ['',   79,  136,'color: #76A7FA'],
          ['',   78,  184,'color: #76A7FA'],
          ['',   72,  278,'color: #76A7FA'],
          ['',   81,  200,'color: #76A7FA'],
          ['',   72,  170,'color: #76A7FA'],
          ['',   68,  477,'color: #76A7FA'],
          ['Chetan',   80,  167,'color: #99FFCC']
        ]);*/
        
        //fullName,X,Y,color
        var parsed = JSON.parse(userResult);
        var arr = [];
        for(var x in parsed){
        	if(x=="fullName") {
        		alert("fullName found");
        	}else {
        		alert("No fullname: " +x);
        	}
          arr.push(parsed[x]);
        }
        
        
        
        var data = google.visualization.arrayToDataTable(parsed);

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
<form action="/WayOfBeingResults" method="post">

</form>

  <input type="Submit" value="Submit" />
</html>