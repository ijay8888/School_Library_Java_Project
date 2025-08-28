<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <h2>Edit Book</h2>
    <form action="${pageContext.request.contextPath}/library/update/${book.id}" method="post">
        Name: <input type="text" name="name" value="${book.name}"/><br/>
        Author: <input type="text" name="author" value="${book.author}"/><br/>
        Price: <input type="number" name="price" value="${book.price}"/><br/>
        <input type="submit" value="Update"/>
    </form>
    <br/>
    <a href="${pageContext.request.contextPath}/library/display">Back</a>
</body>
</html>
