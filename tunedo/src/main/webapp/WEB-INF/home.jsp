<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</head>
<body>
    <div class="d-flex justify-content-around my-3">
        <h6>Hola, <c:out value="${user.getName()}" /></h6>
        <a href="/logout">Cerrar Sesión</a>
    </div>
    <div class="d-flex flex-column align-items-evenly m-auto w-75">
        <h2 class="text-primary">Todas las canciones :</h2>
        <div class="d-flex p-3 my-3 justify-content-between border-3 border-bottom border-secondary">
            <h3>Canción</h3>
            <h3># de colaboradores</h3>
        </div>
        <c:forEach items="${tasks}" var="task">
        <div class="d-flex justify-content-between my-3">
            <div class="d-flex flex-column">
                <blockquote class="blockquote">
                <a class="display-6" href="tasks/${task.getId()}"><c:out value="${task.getTitle()}" /></a>
                </blockquote>
                <small>
                    <c:out value="${task.getGenre()}" />
                </small>
            </div>
            <div class="w-25 justify-content-end">
                <h2 class="text-center"><c:out value="${task.getCategories().size()}" /></h2>
            </div>
        </div>
        </c:forEach>
        <div class="d-flex justify-content-start my-5">
            <a class="text-decoration-none text-light bg-danger border border-danger rounded px-2 py-1" href="tasks/new"><- Nueva canción</a>
        </div>
    </div>
</body>
</html>