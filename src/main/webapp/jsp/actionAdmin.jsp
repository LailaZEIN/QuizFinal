<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=request.getScheme() + "://"
		+ request.getServerName() + ":"
		+ request.getServerPort()
		+ request.getContextPath() + "/"
		%>" />
<meta charset="ISO-8859-1">
<title>Cr�ation et modification des quiz</title>
</head>
<body>
	<form method="post" action="/new">
		<fieldset>
			<legend>Cr�er ou modifier un quiz</legend>
			<label> <input type="submit" value="Cr�er un quiz"	name="creerQuiz" />
			</label><br><br> 
			<label> 
				<input type="submit" value="Modifier un quiz" name="modifierQuiz" />
			</label><br>
			<label>
				<input type="submit" value="Ajouter une question" name="ajouterQuestion">
			</label>
			
			
		</fieldset>
	</form>

</body>
</html>