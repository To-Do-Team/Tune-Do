<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/choices.js/public/assets/styles/choices.min.css">
    <script src="https://cdn.jsdelivr.net/npm/choices.js/public/assets/scripts/choices.min.js"></script>
    <script src="/src/main/resources/static/js/newTask.js" defer></script>
    <title>Agregar Tarea</title>
</head>
<body class="bg-gray-100 h-screen m-5">
    <form id="task-form" class="bg-white p-8 rounded-3xl shadow-md w-full space-y-4">
        <div class="relative">
            <input type="text" id="task-title" class="w-full p-4 bg-gray-100 placeholder-gray-500 text-2xl font-semibold rounded-md" placeholder="Título de la tarea">
            <p id="title-error" class="text-red-500 text-sm mt-1 hidden">Campo obligatorio</p>
        </div>
        <input type="text" id="task-description" class="w-full p-4 bg-gray-100 placeholder-gray-500 text-lg rounded-md" placeholder="Descripción">
        <div class="relative">
            <select id="category-select" class="w-full p-4 bg-gray-100 placeholder-gray-500 rounded-md" multiple>
                <option value="" disabled>Seleccionar categorías</option>
                <option value="Fitness">Fitness</option>
                <option value="Programming">Programación</option>
                <option value="Chores">Hogar</option>
                <option value="Hobbies">Hobbies</option>
            </select>
            <p id="category-error" class="text-red-500 text-sm mt-1 hidden">Seleccionar al menos una categoría</p>
        </div>
        <div class="flex space-x-4">
            <div class="relative w-1/2">
                <input type="text" id="date-picker" class="w-full p-4 bg-gray-100 placeholder-gray-500 rounded-md" placeholder="dd/mm/aa">
                <p id="date-error" class="text-red-500 text-sm mt-1 hidden">Campo obligatorio</p>
            </div>
            <div class="relative w-1/2">
                <input type="text" id="time-picker" class="w-full p-4 bg-gray-100 placeholder-gray-500 rounded-md" placeholder="00:00">
                <p id="time-error" class="text-red-500 text-sm mt-1 hidden">Campo obligatorio</p>
            </div>
        </div>
        <div class="relative">
            <select id="importance-select" class="w-full p-4 bg-gray-100 placeholder-gray-500 rounded-md">
                <option value="" disabled selected>Seleccionar*</option>
                <option value="option1">Importante</option>
                <option value="option3">No Importante</option>
            </select>
            <p id="importance-error" class="text-red-500 text-sm mt-1 hidden">Campo obligatorio</p>
        </div>
        <label class="flex items-center">
            <input type="checkbox" id="completed" class="mr-2">
            <span class="text-gray-700">Finalizado</span>
        </label>
        <textarea id="task-notes" class="w-full p-4 bg-gray-100 placeholder-gray-500 rounded-md" placeholder="Añadir notas"></textarea>
        <div class="flex justify-between">
            <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600">Enviar</button>
            <button type="button" class="bg-gray-500 text-white px-4 py-2 rounded-md hover:bg-gray-600" onclick="window.history.back()">Atrás</button>
        </div>
    </form>
</body>
</html>