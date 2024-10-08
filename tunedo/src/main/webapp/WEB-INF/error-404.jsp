<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error :(</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
    <div class="grid h-screen place-content-center bg-white px-4">
        <div class="text-center">
        <h1 class="text-9xl font-black text-gray-200">404</h1>

        <p class="text-2xl font-bold tracking-tight text-gray-900 sm:text-4xl">Oh no!</p>

        <p class="mt-4 text-gray-500">No pudimos encontrar lo que estas buscando :(</p>

        <a
            href="/home"
            class="mt-6 inline-block rounded bg-indigo-600 px-5 py-3 text-sm font-medium text-white hover:bg-indigo-700 focus:outline-none focus:ring"
        >
            Regresar a Tune-Do
        </a>
        </div>
    </div>
</body>
</html>