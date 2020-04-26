<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

tr {
	font-family: arial, sans-serif;
	text-align: center;

}
td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
  background-color: green;
}

input {
  text-align:center;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
<table id="listaus">
	<thead>	

	<tr>	
	<th>Hakusana</th>
	<th><form action="MyServlet" method="post">
	<input type="text" name="fname" placeholder="type first name" /></th>
	<th><input type="submit" value="Submit" /></th>
	</form>
	<th></th>
	<th></th>
	</tr>	
	
		
		<tr>
			<th>ID</th>
			<th>Etunimi</th>
			<th>Sukunimi</th>
			<th>Puhelin</th>	
			<th>Sähköposti</th>						
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
<script>
$(document).ready(function(){
	$.ajax({url:"asiakkaat", type:"GET", dataType:"json", success:function(result){//Funktio palauttaa tiedot json-objektina		
		$.each(result.asiakkaat, function(i, field){  
        	var htmlStr;
        	htmlStr+="<tr>";
        	htmlStr+="<td>"+field.id+"</td>";
        	htmlStr+="<td>"+field.etunimi+"</td>";
        	htmlStr+="<td>"+field.sukunimi+"</td>";
        	htmlStr+="<td>"+field.puhelin+"</td>";  
        	htmlStr+="<td>"+field.sposti+"</td>";  
        	htmlStr+="</tr>";
        	$("#listaus tbody").append(htmlStr);
        });	
    }});
});	

</script>
</body>
</html>
