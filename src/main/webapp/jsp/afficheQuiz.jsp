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
<title>Quiz ${ titreQuiz }</title>
</head>
<body>
<h1>Un SuperQuiz en ${ titreQuiz }</h1>

<p>Question n°${ numeroQuestion }</p><br>
<p>Énoncé : ${ enonceQuestion }</p><br>
<p>Trouvez la bonne réponse</p>
${ afficheQuestion }
// ${ afficheScore }

</body>
</html>