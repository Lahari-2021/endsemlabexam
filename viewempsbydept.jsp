<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Employee e = (Employee)session.getAttribute("employee");
if(e==null)
{
  response.sendRedirect("empsessionfail");
  return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Employees By Department</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    
    <style>
        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Consistent shadow */
        }

        table, th, td {
            border: 1px solid #ccc; /* Softer border color */
        }

        th, td {
            padding: 15px;
            text-align: center;
            word-wrap: break-word;
        }

        th {
            background-color: #006D77; /* Updated to match the header color */
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #ADEFD1; /* Consistent with alternating row color */
        }

        tr:nth-child(odd) {
            background-color: #F1F9F9; /* Lighter color for odd rows */
        }

        tr:hover {
            background-color: #D4EDDA; /* Hover effect for rows */
        }

        h3 {
            text-align: center;
            color: #006D77;
            font-size: 2em;
            margin-top: 30px;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <%@include file="empnavbar.jsp" %>

    <h3>View Employees By Department</h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>SALARY</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
        </tr>
        Total Employees = <c:out value="${count}"></c:out>
        <c:forEach items="${emplist}" var="emp">
            <tr>
                <td><c:out value="${emp.id}"/></td>
                <td><c:out value="${emp.name}"/></td>
                <td><c:out value="${emp.gender}"/></td>
                <td><c:out value="${emp.dateofbirth}"/></td>
                <td><c:out value="${emp.department}"/></td>
                <td><c:out value="${emp.salary}"/></td>
                <td><c:out value="${emp.location}"/></td>
                <td><c:out value="${emp.email}"/></td>
                <td><c:out value="${emp.contact}"/></td>
                <td><c:out value="${emp.status}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>