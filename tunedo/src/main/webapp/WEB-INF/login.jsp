<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="/css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="/js/login.js"></script>
    <title>Login</title>
</head>

<body class="bg-gray-100 flex items-center justify-center h-screen">
    <form action="/login" method="post" class="bg-white p-8 rounded-lg shadow-lg max-w-md w-full space-y-4">
        <h2 class="text-2xl font-bold mb-6 text-center text-gray-900">Iniciar Sesión
            en Tune-Do</h2>

        <div id="error-message" class="hidden bg-red-100 text-red-800 p-2 rounded-md mb-4"></div>

        <label class="block">
            <h4 class="text-sm font-medium text-gray-700 mb-1">Email:</h4>
            <input type="email" name="email"
                class="block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
        </label>

        <label class="block">
            <h4 class="text-sm font-medium text-gray-700 mb-1">Contraseña:</h4>
            <input type="password" name="password"
                class="block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
        </label>
        <span class="text-red-600 text-sm">
            <c:out value="${userError}" />
        </span>
        
        <span class="text-red-600 text-sm">
            <c:out value="${errorMessage}" />
        </span>

        <span class="text-green-600 text-sm">
            <c:out value="${registered}" />
        </span>

        <button type="submit"
            class="w-full bg-indigo-600 text-white py-2 px-4 rounded-md shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 text-sm font-medium">
            Iniciar Sesión</button>
        <p class="text-center text-sm text-gray-600 mt-4">
            ¿No tienes una cuenta?
            <a href="/register" class="text-indigo-600 hover:text-indigo-700 font-medium">Regístrate</a>
        </p>
        <p class="text-center text-sm text-gray-600 mt-4">
            <a href="/" class="text-indigo-600 hover:text-indigo-700 font-medium flex items-center">
                <i class="fas fa-arrow-left mr-2"></i> Atrás
            </a>
        </p>        
    </form>

</body>

</html>