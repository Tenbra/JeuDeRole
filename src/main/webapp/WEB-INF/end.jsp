<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Statistiques des combats</title>
</head>
<body>
<form  method="post">
	<button name="action" value="Recommencer">Recommencer</button>
</form>
<br>
<c:if test="${sessionScope.perso.getVie()>0}">
<form  method="post">
	<button name="action" value="Continuer">Reprendre</button>
</form>
</c:if>
<br>
<h2>Statistiques des combats</h2>
<br>
<br>
<c:forEach var="i" begin="1" end="${actions.size()}">
    <c:out value="${ actions.get(actions.size()-i) }" /><br>
</c:forEach>

</body>
</html>