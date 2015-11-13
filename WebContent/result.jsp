<% 
out.print(request.getAttribute("userResult"));
System.out.print("userResult is: "+request.getAttribute("userResult"));
Object userResult = request.getAttribute("userResult");
out.print("Json object is: "+userResult);
%>
<script>
	/*var userResult2=JSON.stringify(userResult);
	alert("userResult is: "+userResult2);*/
</script>

<script>
/*var userResult = request.getAttribute("userResult");
alert(userResult);*/
</script>
<html>
<h2>This is result</h2>
<input type="text" name ="result"></input>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);      
      
  	/*var data2 = google.visualization.DataTable();
	data2.addColumn('string','ID');
	data2.addColumn('string','Purpose');
	data2.addColumn('string','Presence');
	data2.addColumn('string','roleStyle');
	data2.addRow(results[1]);*/
      
      function drawChart() {		
		var jsAtt = '${userResult}';
		jsAtt =jsAtt.slice(1, jsAtt.length-1);
	      var result = jsAtt.split(", ");	      
	      
	    //var str = "['"+ result[0] +"',"+result[1] +"," +result[2] +",'" +result[3]  +"']";
	    var str = result[0] +","+result[1] +"," +result[2] +"," +result[3];
	    
	    var arr1 = [];
	    arr1[0] = str;
	    alert("arr1[0] is: "+ arr1[0]);
	    //$('result').value = "test";
	      
	      var results = []; 
	      results.push(['ID', 'Purpose', 'Presence',{ role: 'style' }]);
	      results.push(['Chetan Saraf', 80, 166,'color: #FFFFFF']);
	      results.push(result);
	      //results.push("["+arr1[0]+"]");
	      //results.push(str);
	      
	      alert("results[1] is: "+results[1]);
	      
	      //results.push(result[0]);
 
	      //alert(results[1]);
    	  //var data2 = google.visualization.DataTable();
    	  //alert(data2);
    	  
        /*var data = google.visualization.arrayToDataTable([
          ['ID', 'Purpose', 'Presence',{ role: 'style' }],
          ['Chetan',   80,  167,'color: #99FFCC']
        ]);*/
        
        var data = google.visualization.arrayToDataTable(results);
        
        var arr = ['ID', 'Purpose', 'Presence',{ role: 'style' }];
        /*data = google.visualization.arrayToDataTable([
          ['ID', 'Purpose', 'Presence',{ role: 'style' }],
          ['Chetan',   80,  167,'color: #99FFCC']
        ]);*/

        
        //var data = google.visualization.arrayToDataTable(results);
        //fullName,X,Y,color
        /*var parsed = JSON.parse(userResult);
        var arr = [];
        for(var x in parsed){
        	if(x=="fullName") {
        		alert("fullName found");
        	}else {
        		alert("No fullname: " +x);
        	}
          arr.push(parsed[x]);
        }*/
        
        //var data = google.visualization.arrayToDataTable(parsed);

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