<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Registros</title>
    </head>
    <body>
        <h1>Listagem de Registros</h1>
        <a href="novo.html">Novo...</a>
        <table>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Sobrenome</th>
                <th>Telefone</th>
            </tr>
            <c:forEach var="pessoa" items="${pessoas}">
                <tr>
                    <td><a href="edita.html?id=${pessoa.id}">${pessoa.id}</a></td>
                    <td>${pessoa.nome}</td>
                    <td>${pessoa.sobrenome}</td>
                    <td>${pessoa.telefone}</td>
                    <td><a href="exclui.html?id=${pessoa.id}">X</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
