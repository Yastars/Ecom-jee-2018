<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<div>
${exception}
</div>
<a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()
%>/resources/css/style.css">
</head>
<div id="formProd" class="cadre">
<f:form modelAttribute="produit" action="saveProd" method="post"
enctype="multipart/form-data">
<table>
<tr>
<td>ID Produit:</td>
<td>
<td>${produit.idProduit}<f:input type="hidden" path="idProduit"/></td>
<td><f:errors path="idProduit"></f:errors> </td>
</tr>
<tr>
<td>Désignation</td><td>
<f:input path="designation"/></td>
<td><f:errors path="designation"></f:errors> </td>
</tr>
<tr>
<td>Description</td>
<td><f:select path="Categorie.idCategorie" items="${categories}" itemValue="idCategorie" itemLabel="nomCategorie"/></td>
<td> </td>
</tr>
<tr>
<td>Description</td>
<td><f:textarea path="description"/></td>
<td><f:errors path="description"></f:errors> </td>
</tr>
<tr>
<td>Prix</td>
<td><f:input path="prix"/></td>
<td><f:errors path="prix"></f:errors> </td>
</tr>
<tr>
<td>Quantité:</td>
<td><f:input path="quantite"/></td>
<td><f:errors path="quantite"></f:errors> </td>
</tr>
<tr>
<td>Sélectionner?</td>
<td><f:input path="selected"/></td>
<td><f:errors path="selected"></f:errors> </td>
</tr>
<tr>
<td>Photo</td>
<c:if test="${produit.idProduit!=null}">
<td><img src="photoProd?idProd=${produit.idProduit}"></td>
</c:if>
<td>
<input type="file" name="file"></td>
</tr>
<tr>
<td><input type="submit" value="Save"></td>
</tr>
</table>
</f:form>
</div>
<div id="tabProduits" class="cadre">
<table class="tabStyle1">
<tr>
<th>ID</th><th>NOM Produit</th><th>Désignation</th><th>DESCRIPTION</th><th>Catégorie</th><th>Prix</th><th>Selected</th><th>PHOTO</th>
<th></th><th></th>
</tr>
<c:forEach items="${produits}" var="p">
<tr>
<td>${p.idProduit}</td>
<td>${p.designation}</td>
<td>${p.description}</td>
<td>${p.categorie.nomCategorie}</td>
<td>${p.prix}</td>
<td>${p.quantite}</td>
<td>${p.selected}</td>
<td><img height="160" width="160" src="photoProd?idProd=${p.idProduit}"></td>
<td><a href="suppProd?idProd=${p.idProduit}">Supprimer</a></td>
<td><a href="editProd?idProd=${p.idProduit}">Edit</a></td>
</tr>
</c:forEach>
</table>
</div>