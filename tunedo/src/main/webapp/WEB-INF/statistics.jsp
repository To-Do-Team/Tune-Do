<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Statistics</title>
    <script src="/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/flowbite@2.4.1/dist/flowbite.min.css"  rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/flowbite@2.4.1/dist/flowbite.min.js"></script>
    <link rel="stylesheet" href="/css/style.css">
</head>

<body class="content bg-gray-50">
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
                        <a href="/home" class="block py-2 px-3 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-red-600 md:p-0 dark:text-white md:dark:hover:text-red-600 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Home</a>
                    </li>
                    <li>
                        <a href="/home/statistics" class="block py-2 px-3 text-red-500 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-red-500 md:p-0 dark:text-white md:dark:hover:text-red-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Mi diario</a>
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
    <section class="min-h-full bg-white border-gray-200 dark:bg-gray-900 py-16 relative overflow-hidden">
        <div class="absolute inset-0 -z-10 flex justify-center items-center">
            <div class="background-shape bg-blue-200 w-72 h-72 transform -translate-x-1/2 -translate-y-1/4"></div>
            <div class="background-shape bg-green-200 w-96 h-96 transform translate-x-1/4 translate-y-1/4"></div>
        </div>

        <div class="container mx-auto px-4">
            <h2 class="text-4xl font-extrabold text-center mb-12 text-gray-800 dark:text-white">Mi Diario</h2>
            
            <c:forEach items="${statistics}" var="stat">
                <div class="flex flex-col my-4 bg-white dark:bg-gray-800 p-4 rounded-lg shadow-lg">
                    <p class="text-3xl my-5 text-gray-800 dark:text-white"><c:out value="${stat.getComentarios()}" /></p>
                    <a class="my-5 max-w-max button-add items-center justify-center bg-gray-200 dark:bg-gray-700 py-2 px-2 rounded-lg text-sm font-semibold hover:bg-gray-300 dark:hover:bg-gray-600 text-gray-900 dark:text-white" href="/home/statistics/${stat.id}">Ver detalles</a>
                </div>
            </c:forEach>
        </div>
    </section>
    </main>
    <footer class="bg-white dark:bg-gray-800 p-4">
        <div class="max-w-screen-xl mx-auto text-center">
            <p class="text-sm text-gray-500 dark:text-gray-400">© 2024 Tune-Do. All rights reserved.</p>
        </div>
    </footer>
</body>

</html>