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
<title>Page de connexion administrateur</title>
</head>
<body>

	<form method="post" action="">
		<fieldset>
			<legend>Bienvenue sur votre page de connexion administrateur</legend>
			<label for=email>E-mail</label> 
			<input type="text" name="email"	id="email" required="required" autofocus><br> 
				<label for="mdp">Mot de passe</label> 
				<input type="password" name="mdp" id="mdp" required="required"><br><br>
			 <input type="submit" value="Se connecter">
		</fieldset>
	</form>

</body>
</html>