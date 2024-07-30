<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Task</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</head>
<body>
    <div class="d-flex flex-column justify-content-around my-3 m-auto w-75">
        <h1 class="my-3">¡Añade una nueva tarea!</h1>
        <div>
        <form:form action="new" method="POST" modelAttribute="task"
        class="d-flex flex-column p-5">


        <div class="form-row d-flex justify-content-between w-50 my-3">
            <form:label path="title">Título de la tarea</form:label>
            <form:input type="text" path="title"/>
        </div>
            <form:errors class="alert alert-danger form-text text-muted" path="title" />


        <div class="form-row d-flex justify-content-between w-50 my-3">
            <form:label path="description">Descripción de la tarea: </form:label>
            <form:textarea class="w-50 h-lg" type="textarea" path="description"/>
        </div>
            <form:errors class="alert alert-danger form-text text-muted" path="description" />


        <div class="form-row d-flex justify-content-between w-50 my-3">
            <form:label path="notes">Notas adicionales de la tarea: (opcional) </form:label>
            <form:textarea class="w-50 h-lg" type="textarea" path="notes"/>
        </div>
            <form:errors class="alert alert-danger form-text text-muted" path="notes" />

        <div>
            <form:label path="deadline">Deadline:</form:label>
            <input type="datetime-local" id="dueDateInput" name="dueDateString" required />
            <form:errors class="alert alert-danger form-text text-muted" path="deadline" />
        </div>

        <div>
            <form:label path="type">Tipo de tarea:</form:label>
            <form:select path="type" name="tipos" id="tipos">
            <c:forEach items="${types}" var="type">
                <form:option value="${type}">
                    <c:out value="${type.description}" />
                </form:option>
            </c:forEach>
            </form:select>
        </div>

        <div>
            <form:label path="status">Estado de la tarea:</form:label>
            <form:select path="status" name="status" id="status">
            <c:forEach items="${statuses}" var="status">
                <form:option value="${status}">
                    <c:out value="${status.description}" />
                </form:option>
            </c:forEach>
            </form:select>
        </div>

        <div>
            <form:label path="categories">Categoría de la tarea:</form:label>
            <select name="category" id="category">
            <c:forEach items="${categories}" var="category">
                <option value="${category.id}">
                    <c:out value="${category.name}" />
                </option>
            </c:forEach>
            </select>
        </div>


        <div class="d-flex justify-content-end w-50">
                <button class="px-4 my-4">Subir</button>
        </div>
        </form:form>
        
        <a class="w-75" href="/home">cancelar</a>
    </div>
    </div>
    
</body>
</html>