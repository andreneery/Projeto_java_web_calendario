<%-- 
    Document   : index
    Created on : 20 de mar. de 2023, 17:22:10
    Author     : nery
--%>
<%@ page import="java.util.Calendar" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calendário</title>
        <style>
            body {
              font-family: Arial, sans-serif;
              background-color: #f2f2f2;
            }

            form {
              max-width: 400px;
              margin: 50px auto;
              padding: 20px 50px;
              background-color: #fff;
              border-radius: 5px;
              box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
              text-align: center; 
            }

            label {
              display: block;
              margin-bottom: 5px;
              font-weight: bold;
            }

            input[type="text"] {
              display: block;
              width: 100%;
              padding: 10px;
              border-radius: 5px;
              border: 1px solid #ccc;
              margin-bottom: 20px;
              font-size: 16px;
            }

            input[type="submit"] {
              padding: 10px 20px;
              border-radius: 5px;
              border: none;
              background-color: #007bff;
              color: #fff;
              font-size: 16px;
              cursor: pointer;
            }

            input[type="submit"]:hover {
              background-color: #0069d9;
            }
        </style>
    </head>
    <body>
        <form method="post" action="calendario.jsp">
            <label for="ano">Ano:</label>
            <input type="text" name="ano" id="ano">
            <label for="mes">Mês:</label>
            <input type="text" name="mes" id="mes">
            <input type="submit" value="Gerar Calendário">
        </form>
    </body>
</html>
