<html>
<head><base href="<%=request.getScheme() + "://"
		+ request.getServerName() + ":"
		+ request.getServerPort()
		+ request.getContextPath() + "/"
		%>" />
</head>


<body>

<form method="post" action="">
			<fieldset>
				<legend>Authentification</legend>
				<label>Identifiant
					<input type="text" name="numeroUser" required>
				</label>
				<label>Mot de passe
					<input type="password" name="password" required>
				</label>
				
				<input type="submit" value="Se connecter">
			</fieldset>
		</form>

<!-- cr�atin d'un dao sp�cifique � l'authentification � partir de l'email(sql : where email); 
1. une personne se connecte
2. � l'envoi de la requete � la table Personne, 
on d�tecte si cette personne est user(attribut estAdmin = false) ou admin(estAdmin=true)  --> 

</body>
</html>
