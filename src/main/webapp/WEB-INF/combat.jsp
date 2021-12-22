<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Combat</title>
</head>
<body>

<c:choose>

<c:when test="${sessionScope.monstre.getVie() != 0 and sessionScope.perso.getVie() != 0}">

Votre adversaire est le suivant : <br>
<c:out value="${sessionScope.monstre.getNom() }"/>  <br>
Vie : <c:out value="${sessionScope.monstre.getVie() }"/>  <br>
Mana : <c:out value="${sessionScope.monstre.getMana() }"/>  <br>
Attaque : <c:out value="${sessionScope.monstre.getAttaque() }"/>  <br>
Defense : <c:out value="${sessionScope.monstre.getDefense() }"/>  <br>
	
<br>

Votre personnage <c:out value="${sessionScope.type }"/> est le suivant : <br>
 <c:out value="${sessionScope.perso.getNom() }"/>  <br>
Vie : <c:out value="${sessionScope.perso.getVie() }"/>  <br>
Mana : <c:out value="${sessionScope.perso.getMana() }"/>  <br>
Attaque : <c:out value="${sessionScope.perso.getAttaque() }"/>  <br>
Defense : <c:out value="${sessionScope.perso.getDefense() }"/>  <br>

<form  method="post">
	<button name="action" value="attaque">Attaque</button>
	<button name="action" value="attaqueSpe" >Att Speciale</button>
	<button name="action" value="defense">Defense</button>
	<button name="action" value="concentration">Concentration</button>
</form>

<c:forEach var="i" begin="1" end="${actions.size()}">
    <c:out value="${ actions.get(actions.size()-i) }" /><br>
</c:forEach>

</c:when>

<c:when test="${sessionScope.perso.getVie() == 0}">
	Vous êtes mort!!
	<form  method="post">
		<button name="action" value="Recommencer">Recommencer</button>
		<button name="action" value="Arreter">Terminer</button>
	</form>
</c:when>


<c:otherwise>    
	Bravo, vous avez gagné!!!  
	<form  method="post">
		<button name="action" value="Continuer">Continuer</button>
		<button name="action" value="Arreter">Arreter</button> 
		<p>Vos données sont sauvegardés. Si vous arretez, vous pourrez continuer plus tard</p>
	</form>
 </c:otherwise>  

</c:choose>

</body>
</html>