<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29.02.2020
  Time: 18:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ListMeals</title>
</head>
<body>
<table border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>Имя</th>
        <th>Email</th>
        <th></th>
        <th></th>
    </tr>
    <c:forEach items="${meals}" var="meal">
        <jsp:useBean id="meal" type="main.java.ru.model."/>
        <tr>
            <td><a href="resume?uuid=${resume.uuid}&action=view">${resume.fullName}</a></td>
            <td><%=ContactType.EMAIL.toHtml(resume.getContacts(ContactType.EMAIL))%>
            </td>
            <td><a href="resume?uuid=${resume.uuid}&action=delete">Delete</a></td>
            <td><a href="resume?uuid=${resume.uuid}&action=edit">Edit</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
