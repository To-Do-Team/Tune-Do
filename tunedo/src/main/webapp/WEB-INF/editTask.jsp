<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/choices.js/public/assets/styles/choices.min.css">
    <script src="https://cdn.jsdelivr.net/npm/choices.js/public/assets/scripts/choices.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/flowbite@2.4.1/dist/flowbite.min.css"  rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/flowbite@2.4.1/dist/flowbite.min.js"></script>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/newTask.css">
    <script src="/js/editTask.js" defer></script>
    <script src="/js/main.js"></script>
    <script src="/js/newTask.js" defer></script>
    
    <script>
        const task = ${task}
    </script>
    <title>Editar Tarea</title>
</head>
<body class="content bg-gray-100 h-screen">
<header>
        <nav class="bg-white border-gray-200 dark:bg-gray-900">
            <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
            <a href="/home" class="flex items-center space-x-3 rtl:space-x-reverse">
                <!-- <img src="https://upload.wikimedia.org/wikipedia/commons/8/85/TuneTalk_Logo_%28Transparent%29.png" class="h-12" alt="Tune-Do Logo" /> -->
                <img src="/img/logo1.png" class="h-12" alt="Tune-Do Logo" />
                <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">Tune-Do</span>
            </a>
            <button data-collapse-toggle="navbar-default" type="button" class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="navbar-default" aria-expanded="false">
                <span class="sr-only">Open main menu</span>
                <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h15M1 7h15M1 13h15"/>
                </svg>
            </button>
            <div class="hidden w-full md:block md:w-auto" id="navbar-default">
                <ul class="font-medium flex flex-col p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 rtl:space-x-reverse md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
                    <li>
                        <a href="/home" class="block py-2 px-3 text-red-500 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-red-600 md:p-0 dark:text-white md:dark:hover:text-red-600 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Home</a>
                    </li>
                    <li>
                        <a href="/home/statistics" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-red-500 md:p-0 dark:text-white md:dark:hover:text-red-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Mi diario</a>
                    </li>
                    <li>
                        <a href="/home/pricing" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-red-500 md:p-0 dark:text-white md:dark:hover:text-red-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Pricing</a>
                    </li>
                    <li>
                        <a href="/logout" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-red-500 md:p-0 dark:text-white md:dark:hover:text-red-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Log Out</a>
                    </li>
                    <li>
                        <label class="py-0   inline-flex items-center cursor-pointer">
                            <input id="dark-mode-toggle" type="checkbox" value="" class="sr-only peer">
                            <span class="px-3  font-medium text-gray-900 dark:text-gray-600">Dark Mode</span>

                            <div class="relative w-11 h-6 bg-gray-200 rounded-full peer peer-focus:ring-4 peer-focus:ring-red-300 dark:peer-focus:ring-red-800 dark:bg-gray-700 peer-checked:after:translate-x-full rtl:peer-checked:after:-translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:start-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-red-600"></div>
                        </label>
                    </li>
                    <li>
                        <label class="py-0  inline-flex items-center cursor-pointer">
                            <input type="checkbox" value="" class="sr-only peer" >
                            <span class="px-3 font-medium text-gray-900 dark:text-gray-500">Premium Mode</span>

                            <div class="relative w-11 h-6 bg-gray-200 rounded-full peer peer-focus:ring-4 peer-focus:ring-red-300 dark:peer-focus:ring-red-800 dark:bg-gray-700 peer-checked:after:translate-x-full rtl:peer-checked:after:-translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:start-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-red-600"></div>
                        </label>
                    </li>
                </ul>
            </div>
            </div>
        </nav>
        
</header>
<main>
    <div class="flex justify-center min-h-full bg-white border-gray-200 dark:bg-gray-900 py-16 relative overflow-hidden">
            <form:form action="" method="POST" id="task-form" class="flex flex-col max-w-max mx-5 bg-white p-8 rounded-3xl shadow-md w-full space-y-4" modelAttribute="task">
            <div class="relative">
                <form:label path="title">Título de la tarea: </form:label>
                <form:input path="title" id="task-title" class="w-full p-4 bg-gray-100 placeholder-gray-500 text-2xl font-semibold rounded-md"/>
                <p id="title-error" class="text-red-500 text-sm mt-1 hidden">Campo obligatorio</p>
            </div>
                <form:errors class="alert alert-danger form-text text-muted" path="title" />
            <div class="relative">
            <form:label path="description">Descripción de la tarea: </form:label>
            <form:input path="description" type="text" id="task-description" class="w-full p-4 bg-gray-100 placeholder-gray-500 text-lg rounded-md"/>
                <p id="title-error" class="text-red-500 text-sm mt-1 hidden">Campo obligatorio</p>
            </div>
                <form:errors class="alert alert-danger form-text text-muted" path="description" />

            <div class="form-row d-flex justify-content-between w-50 my-3">
                <form:label path="notes">Notas adicionales de la tarea: (opcional) </form:label>
            <form:textarea path="notes" id="task-notes" class="w-full p-4 bg-gray-100 placeholder-gray-500 rounded-md" placeholder="Añadir notas"></form:textarea>
            </div>
                <form:errors class="alert alert-danger form-text text-muted" path="notes" />

            <div class="relative">
                <form:label path="categories">Categoría de la tarea:</form:label>
                <select id="category-select" name="categoryIds" class="w-full p-4 bg-gray-100 placeholder-gray-500 rounded-md" multiple>
                    <option value="" disabled>Seleccionar categorías</option>
                    <c:forEach items="${categories}" var="category">
                        <option value="${category.id}">
                            <c:out value="${category.name}" />
                        </option>
                    </c:forEach>
                </select>
                <p id="category-error" class="text-red-500 text-sm mt-1 hidden">Seleccionar al menos una categoría</p>
            </div>
            <%-- <div class="relative">
                <c:forEach items="${categories}" var="category">
                    <div>
                        <input type="checkbox" name="categories" value="${category.id}" 
                            <c:if test="${task.categories.contains(category)}">checked</c:if>
                        > ${category.name}
                    </div>
                </c:forEach>
            </div> --%>
            <div class="flex space-x-4">
                <div class="relative w-1/2">
                    <input type="datetime-local" name="dueDateString" id="date-picker" placeholder="Fecha" class="w-full p-4 bg-gray-100 placeholder-gray-500 rounded-md"/>
                    <p id="date-error" class="text-red-500 text-sm mt-1 hidden">Campo obligatorio</p>
                </div>
                <div class="relative w-1/2">
                    <input type="time" name="timeLocal" id="time-picker" placeholder="Hora" class="w-full p-4 bg-gray-100 placeholder-gray-500 rounded-md"/>
                    <p id="time-error" class="text-red-500 text-sm mt-1 hidden">Campo obligatorio</p>
                </div>
            </div>
            <div class="relative">
                <form:label path="status">Estado de la tarea:</form:label>
                <form:select class="w-full p-4 bg-gray-100 placeholder-gray-500 rounded-md" path="status" name="status" id="status">
                <c:forEach items="${statuses}" var="status">
                    <form:option value="${status}">
                        <c:out value="${status.description}" />
                    </form:option>
                </c:forEach>
                </form:select>
            </div>
            <div class="relative">
                <%-- <form:select id="importance-select" class="w-full p-4 bg-gray-100 placeholder-gray-500 rounded-md">
                    <form:option value="" disabled selected>Seleccionar*</form:option>
                    <form:option value="option1">Importante</form:option>
                    <form:option value="option3">No Importante</form:option>
                </form:select> --%>
                <form:label path="type">Tipo de tarea:</form:label>
                <form:select path="type" name="tipos" id="importance-select" class="w-full p-4 bg-gray-100 placeholder-gray-500 rounded-md">
                    <option value="" disabled selected>Seleccionar</option>
                <c:forEach items="${types}" var="type">
                    <form:option value="${type}">
                        <c:out value="${type.description}" />
                    </form:option>
                </c:forEach>
                </form:select>
                <p id="importance-error" class="text-red-500 text-sm mt-1 hidden">Campo obligatorio</p>
            </div>
            <%-- <label class="flex items-center">
                <input type="checkbox" id="completed" class="mr-2"/>
                <span class="text-gray-700">Finalizado</span>
            </label> --%>

            <div>
                <form:label path="dueReminder">Recordatorio:</form:label>
                <form:select path="dueReminder">

                    <form:option selected="selected" value="">Selecciona un recordatorio</form:option>
                    <c:forEach items="${reminderOptions}" var="option">
                        <form:option value="${option.minutes}">
                            ${option.description}
                        </form:option>
                    </c:forEach>
                </form:select>
            </div>

            <div class="flex justify-between">
                <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600">Guardar</button>
                <button type="button" class="bg-gray-500 text-white px-4 py-2 rounded-md hover:bg-gray-600" onclick="window.history.back()">Atrás</button>
                <button type="button" id="reset-btn" class="bg-yellow-500 text-white px-4 py-2 rounded-md hover:bg-yellow-600">Reiniciar</button>
            </div>
            </form:form>
        </div>
</main>
<footer class="bg-white dark:bg-gray-800 p-4">
        <div class="max-w-screen-xl mx-auto text-center">
            <p class="text-sm text-gray-500 dark:text-gray-400">© 2024 Tune-Do. All rights reserved.</p>
        </div>
</footer>
</body>
</html>
