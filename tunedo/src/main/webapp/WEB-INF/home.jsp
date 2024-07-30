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
    <link rel="stylesheet" href="/css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
    <script src="/js/drag.js" defer></script>
    <script>
        var tasksData = JSON.parse('<c:out value="${tasksJson}" escapeXml="false"/>');
    </script>
</head>
<body>
    <div class="d-flex justify-content-around my-3">
        <h6 class="text-red">Hola, <c:out value="${user.getName()}" /></h6>
        <a href="/?logout">Cerrar Sesión</a>
        
            <div class="d-flex justify-content-start my-5">
                <a class="text-decoration-none text-light bg-danger border border-danger rounded px-2 py-1" href="tasks/new"><- Nueva tarea</a>
            </div>
    </div>
    <div class="d-flex flex-wrap gap-3">
        <c:forEach items="${tasksByType.entrySet()}" var="entry">
            <h2 class="text-primary"><c:out value="${entry.getKey().getDescription()}" /></h2>
            <div class="p-2 col-4 swim-lane" data-type="${entry.getKey().name()}">
                <c:forEach items="${entry.getValue()}" var="task">
                <div id="${task.id}" data-pos="${String.valueOf(task.getPosition())}" class="d-flex justify-content-between my-3 task" draggable="true">
                    <div class="d-flex flex-column">
                        <blockquote class="blockquote">
                        <a class="display-6" href="tasks/${task.getId()}"><c:out value="${task.getTitle()}" /></a>
                        </blockquote>
                        <small>
                            <c:out value="${task.getDescription()}" />
                        </small>
                    </div>
                    <div class="w-25 justify-content-end">
                        <h2 class="text-center"><c:out value="${task.getCategories().size()}" /></h2>
                    </div>
                </div>
                </c:forEach>
            </div>
        </c:forEach>
        
    </div>
</body>
</html>