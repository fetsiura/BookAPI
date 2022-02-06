<%--
  Created by IntelliJ IDEA.
  User: jaro
  Date: 06.02.2022
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BookAPI</title>
</head>
<body>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table>
    <tr>
        <th>Title</th>
        <th>Author</th>
        <th>Isbn</th>
        <th>Publisher</th>
        <th>Type</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="book" items="${books}">
        <tr>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.isbn}</td>
            <td>${book.publisher}</td>
            <td>${book.type}</td>
            <td>
                <a href="<c:url value="/admin/books/edit/${book.id}"/>">Edit</a>
            </td>
            <td>
                <a href="<c:url value="/admin/books/delete/${book.id}"/>">Delete</a>

            </td>
        </tr>
    </c:forEach>
    <br>
    <a href="<c:url value="admin/books/form"/>">Add new Book</a><br>
    <a href="<c:url value="admin/books"/>">All Books</a><br>

</table>




</body>
</html>
