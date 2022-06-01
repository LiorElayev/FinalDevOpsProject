<html>
	<body>
		<form action="second.jsp" method="POST">
Name: <input type="text" name="n">
				<br/>
				<br/>
Password: <input type="text" name="pass"/>
				<br/>
				<br/>
				<input type="submit" value="Submit"/>
			</form>
		</body>
	</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
				<script type="text/javascript">
function sample()
{
for(var i=0; i < document.f.shirt.length; i++) { if(!document.f.shirt[i].checked) { alert("Please Select Your favorite tshirts size"); return false; } else { alert("Click OK to display your choice"); return true; } } }
				</script>
				<title>Demo</title>
			</head>
			<body>
				<form name="f" onsubmit="sample()">
					<h3>Select your favorite T-Shirts Size</h3>
					<p>
						<input type="checkbox" name="shirt" value="XXXL"/>XXXL</p>
					<p>
						<input type="checkbox" name="shirt" value="Cotton"/>Cotton</p>
					<p>
						<input type="checkbox" name="shirt" value="Fabric"/>Fabric</p>
					<p>
						<input type="checkbox" name="shirt" value="Milange"/>Milange</p>
					<p>
						<input type="checkbox" name="shirt" value="Yarn"/>Yarn</p>
					<p>
						<input type="submit" value="submit"/>
					</form>
<%
String s[]= request.getParameterValues("shirt");
if(s != null)
{
%>
					<h4>My Favorite t-shirt size</h4>
					<ul>
<%
for(int i=0; i<s.length; i++)
{
%>
						<li><%=s[i]%>
						</li>
<%
}
%>
					</ul>
<%
}
%>
				</body>
			</html>