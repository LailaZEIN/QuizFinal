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
<title>Ajout de questions</title>
</head>
<body>

		<form method="post" action="question/new">
			<fieldset>
				<legend>Ajout d'une question</legend>
				<input type="hidden" name="numeroQuiz" /><br>
				<label>Quel quiz ?
					<select id="titreQuiz" name="titreQuiz">
						<option>Java</option>
						<option>Géographie</option>
					</select>
				</label>
				<label>Énoncé de la question
					<input type="text" id="enonce" name="enonce" required>
				</label><br>
				<p>Enregistrement des propositions de réponses</p>
				<label>Proposition n°1
					<input type="text" required>
				</label><br>
				<label>Proposition n°2
					<input type="text" required>
				</label><br>
				<label>Proposition n°3
					<input type="text" required>
				</label><br>
				<label>Proposition n°4
					<input type="text" required>
				</label><br>
				<label>Est-ce un QCM ou une question à réponse unique ?
					<select>
						<option>QCM</option>
						<option>Une réponse unique</option>
					</select>
				</label>			
				<input type="submit" value="Ajouter la question">
				<input type="submit" value="Supprimer la question">
			</fieldset>
		</form>



</body>
</html>