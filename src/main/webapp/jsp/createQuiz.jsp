<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=request.getScheme() + "://"
		+ request.getServerName() + ":"
		+ request.getServerPort()
		+ request.getContextPath() + "/"
		%>" />
<meta charset="ISO-8859-1">
<title>Création d'un quiz</title>
</head>
<body>
	<form method="post" action="quiz/new">
		
			<legend>Création d'un quiz</legend>
			
			<input type="hidden" name="numeroQuiz" /><br>
			<label>Titre du quiz : 
			<input type="text" name="titreQuiz" />
			</label><br>
			<label>Nombre de questions
			<input type="number" name="nbQuestions" />
			</label><br>
			<input type="submit" value="Valider"><br>
			<input type="submit" value="Supprimer le quiz">
			
			
			<table>
				<h2>Liste des quiz</h2>
				<tr>
					<th>N° du quiz</th>
					<th>Titre du quiz</th>
					<th>Nombre de questions</th>
				</tr>
				<core:forEach var="quiz" items="${ListeQuiz}">
				<tr>
					<td>${quiz.numeroQuiz}</td>
					<td>${quiz.titreQuiz}</td>
					<td>${quiz.nbQuestions}</td>
				</tr>	
				</core:forEach>
			</table>
			
			<h3 style="color : green;" >${msg}</h3>
			
			
		
	</form>


</body>
</html>