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
<title>Page d'inscription utilisateur</title>
</head>
<body>

		<form method="post" action="">
			<fieldset>
				<legend>Inscription à SuperQuiz</legend>
				<h3>Veuillez renseigner les champs suivants pour créer votre profil</h3>
				<label>E-mail
					<input type="text" autofocus required>
				</label><br>
				<label>Mot de passe
					<input type="text" required>
				</label><br>
				<label>Code postal
					<input type="number" required>
				</label><br>
				<label>Date de naissance
					<input type="date">
				</label><br>
				
				<input type="submit" value="Valider votre inscription">
			</fieldset>
		</form>

</body>
</html>