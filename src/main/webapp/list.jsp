<%--
  Created by IntelliJ IDEA.
  User: Achraf
  Date: 10/24/2023
  Time: 5:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student List</title>
</head>
<body>

<div class="list-container">

    <a class="button" href="${pageContext.request.contextPath}/client/add_form">Add Client</a>

    <table>
        <thead>
        <th>Id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>CNE</th>
        <th>Address</th>
        <th>Level</th>
        <th>Actions</th>
        </thead>
        <tbody>
        <c:forEach var="student" items="${requestScope.students}">
            <tr>
                <td><c:out value="${student.id_student}"/></td>
                <td><c:out value="${student.firstName}"/></td>
                <td><c:out value="${student.lastName}"/></td>
                <td><c:out value="${student.cne}"/></td>
                <td><c:out value="${student.address}"/></td>
                <td><c:out value="${student.level}"/></td>
                <td>
                    <a class="actions" href="${pageContext.request.contextPath}/client/update_form?id=${client.id}">
                        <i class="fa fa-pen edit"></i>

                    </a>
                    <a class="actions" href="${pageContext.request.contextPath}/client/delete?id=${client.id}">
                        <i class="fa fa-trash delete"></i>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
