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
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/flowbite@2.4.1/dist/flowbite.min.css"  rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/flowbite@2.4.1/dist/flowbite.min.js"></script>
    <link rel="stylesheet" href="/css/style.css">
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
            <input type="datetime-local" id="dueDateInput" name="dueDateString"/>
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

        <div>
            <form:label path="dueReminder">Recordatorio:</form:label>
            <form:select path="dueReminder">
                <c:forEach items="${reminderOptions}" var="option">
                    <form:option value="${option.minutes}" label="${option.description}" />
                </c:forEach>
            </form:select>
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