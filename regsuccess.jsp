<%-- <%@ taglib uri="jakarta.tags.core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Success</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	<c:out value="${message}"></c:out>
	<br>
	<br>
	<a href="emplogin">Login Here</a>
</body>
</html> --%>


<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            background-color: #F5EFFF; /* Matches your other JSP files */
            font-family: Arial, sans-serif;
            text-align: center; /* Center align text */
        }

        .success-message {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            background-color: #DFF2BF; /* Light green background */
            border: 1px solid #A9D18E;
            border-radius: 10px;
        }

        .success-message h3 {
            color: #4F8A10; /* Dark green color */
            font-weight: bold;
        }

        .success-message p {
            font-size: 16px;
            color: #4F8A10;
        }

        .success-message a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #4F8A10; /* Dark green button */
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .success-message a:hover {
            background-color: #3D6D0C; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <div class="success-message">
        <h3><c:out value="${message}"/></h3>
        <a href="emplogin">Login Here</a>
    </div>
</body>
</html>
