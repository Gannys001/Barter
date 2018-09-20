<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Testing</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<h1 id='display'>reed</h1>
</body>
	<script>
	$.ajax({
		url: 'UserInfoServlet?username=' + 'rtbarnes',
		dataType: "json",
		success: function (data) {
			console.log(data);
			$('#display').innerHTML = data.username;
		},
		type: 'POST',
	});
	</script>
</html>