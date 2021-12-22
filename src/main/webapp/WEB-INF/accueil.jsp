<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
</head>

<body>


<c:choose>
 
 <c:when test="${not empty sessionScope.nom && not empty sessionScope.type}">
	Bonjour <c:out value="${sessionScope.nom}"/> <br>
	Votre personnage <c:out value="${sessionScope.type }"/> est le suivant : <br>
	<c:out value="${sessionScope.perso.getNom() }"/>  <br>
	Vie : <c:out value="${sessionScope.perso.getVie() }"/>  <br>
	Mana : <c:out value="${sessionScope.perso.getMana() }"/>  <br>
	Attaque : <c:out value="${sessionScope.perso.getAttaque() }"/>  <br>
	Defense : <c:out value="${sessionScope.perso.getDefense() }"/>  <br>
	<form  method="post">
	<input type="submit" value="Modifier">
	</form>
	<form  method="get" action="Combat">
	<input type="submit" value="Continuer">
	</form>
 </c:when>  
 
<c:otherwise>    
	Créer votre personnage    
	<form  method="post">
	<label for="name"> Votre nom: </label>
	<input type="text" name="nom" id="name">
	<select name="type">
		<option value="guerrier">Guerrier</option>
		<option value="magicien">Magicien</option>
	</select>
	<input type="submit" value="Valider">
	</form>
 </c:otherwise>  

</c:choose>



</body>
</html>