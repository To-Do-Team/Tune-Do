<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    
    <script src="/js/main.js"></script>
    <script src="/js/drag.js" defer></script>
    <script>
        var tasksData = JSON.parse('<c:out value="${tasksJson}" escapeXml="false"/>');
    </script>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/flowbite@2.4.1/dist/flowbite.min.css"  rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/flowbite@2.4.1/dist/flowbite.min.js"></script>
    <link rel="stylesheet" href="/css/style.css">

</head>
<body class="content">
    <header>
        <nav class="bg-white border-gray-200 dark:bg-gray-900">
            <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
            <a href="#" class="flex items-center space-x-3 rtl:space-x-reverse">
                <img src="https://upload.wikimedia.org/wikipedia/commons/8/85/TuneTalk_Logo_%28Transparent%29.png" class="h-12" alt="Tune-Do Logo" />
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
                        <a href="#" class="block py-2 px-3 text-red-500 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-red-600 md:p-0 dark:text-white md:dark:hover:text-red-600 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Home</a>
                    </li>
                    <li>
                        <a href="#" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-red-500 md:p-0 dark:text-white md:dark:hover:text-red-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">About</a>
                    </li>
                    <li>
                        <a href="#" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-red-500 md:p-0 dark:text-white md:dark:hover:text-red-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Pricing</a>
                    </li>
                    <li>
                        <a href="/logout" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-red-500 md:p-0 dark:text-white md:dark:hover:text-red-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Log Out</a>
                    </li>
                    <li>
                        <label class=" py-0   inline-flex items-center cursor-pointer">
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
        <div class="min-h-full bg-white border-gray-200 dark:bg-gray-900">
            <div class="max-w-screen-xl flex flex-wrap items-start justify-between mx-auto ">
                <h2 class="flex inline-flex text-xl font-semibold text-center text-gray-900 dark:text-white mt-6 px-12 ml-4">
                    Hola,  
                    <div class="text-xl font-semibold text-center text-red-600 dark:text-red-600 px-2">
                        <c:out value="${user.getName()}" />
                    </div>
                </h2>
            </div>
            <section class="max-w-screen-xl flex flex-wrap items-start justify-between mx-auto px-4 text-white bg-white border-gray-200 dark:bg-gray-900 grid grid-cols-1 md:grid-cols-3">
                
                <!-- Left part -->
                <div class="col-span-2 px-4 py-0 flex flex-col justify-center">
                    <div class="max-w-screen-xl px-4 py-0 sm:px-6 sm:py-12 lg:px-8 lg:py-0">
                        <div class="mt-8 grid gap-4 md:grid-cols-1 lg:grid-cols-2">

                            <!-- <div class="bg-gray-900 text-white flex justify-center items-center h-screen"> -->
                            <c:forEach items="${tasksByType.entrySet()}" var="entry">
                                <div class="flex items-center justify-center gap-4">
                                    <div class="bg-white dark:bg-gray-800 p-4 rounded-lg w-96 shadow-lg">
                                        <h2 class="text-xl font-semibold text-center mb-4 text-gray-900 dark:text-white">
                                            <c:out value="${entry.getKey().getDescription()}" />
                                        </h2>

                                        <div class="overflow-y-auto h-48 swim-lane custom-scrollbar" data-type="${entry.getKey().name()}">
                                            <!-- Repeat the above block for each task -->
                                            <c:forEach items="${entry.getValue()}" var="task">
                                                <div id="${task.id}" data-pos="${String.valueOf(task.getPosition())}" class="task flex items-start gap-4 p-2 border-b border-gray-300 dark:border-gray-700" draggable="true">
                                                    
                                                    <!-- <span class="shrink-0 rounded-lg bg-gray-100 dark:bg-gray-900 p-2">
                                                        <svg class="h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M12 14l9-5-9-5-9 5 9 5z"></path>
                                                            <path d="M12 14l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14z"></path>
                                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 14l9-5-9-5-9 5 9 5zm0 0l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14zm-4 6v-7.5l4-2.222"></path>
                                                        </svg>
                                                    </span> -->
                                                    
                                                    <div class="flex-1">
                                                        <h3 class="text-lg font-bold text-gray-900 dark:text-white">
                                                            <c:out value="${task.getTitle()}" />
                                                        </h3>
                                                        <p class="mt-1 text-sm text-gray-500 dark:text-gray-400">
                                                            <c:out value="${task.getDescription()}" />
                                                        </p>
                                                        <div class="mt-4 mb-4">
                                                            <span class="text-sm text-gray-500 dark:text-gray-400"><c:out value="${task.getDeadlineFormatted()}" /></span>

                                                            <button id="dropdownHoverButton-${task.id}" data-dropdown-toggle="dropdownHover-${task.id}" data-dropdown-trigger="hover" class="text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-1 py-1 text-center inline-flex items-center dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-800" type="button">Status <svg class="w-2.5 h-2.5 ms-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
                                                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
                                                                </svg>
                                                            </button>    
                                                            <!-- Dropdown menu -->
                                                            <div id="dropdownHover-${task.id}" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-44 dark:bg-gray-700">
                                                                <ul class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownHoverButton-${task.id}">
                                                                    <li>
                                                                        <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">To do</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">Doing</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">Done</a>
                                                                    </li>
                                                                </ul>
                                                            </div> 
                                                        </div>
                                                    </div>

                                                    <div class="flex flex-col font-bold text-gray-900 dark:text-white">
                                                        <a href="tasks/<c:out value="${task.getId()}"/>/editing">
                                                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m14.304 4.844 2.852 2.852M7 7H4a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-4.5m2.409-9.91a2.017 2.017 0 0 1 0 2.853l-6.844 6.844L8 14l.713-3.565 6.844-6.844a2.015 2.015 0 0 1 2.852 0Z"/>
                                                              </svg>                                                              
                                                        </a>
                                                        <a class="mt-2" href="tasks/<c:out value="${task.getId()}"/>/delete">
                                                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 7h14m-9 3v8m4-8v8M10 3h4a1 1 0 0 1 1 1v3H9V4a1 1 0 0 1 1-1ZM6 7h12v13a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V7Z"/>
                                                            </svg>
                                                        </a> 
                                                        <!-- Modal toggle -->
                                                        <button data-modal-target="modal-${task.id}" data-modal-toggle="modal-${task.id}" class="mt-2 block text-white focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm text-center text-gray-900 dark:focus:ring-red-800" type="button">
                                                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                                <path stroke="currentColor" stroke-width="2" d="M21 12c0 1.2-4.03 6-9 6s-9-4.8-9-6c0-1.2 4.03-6 9-6s9 4.8 9 6Z"/>
                                                                <path stroke="currentColor" stroke-width="2" d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"/>
                                                              </svg>                                                              
                                                        </button>                                                              
                                                        <!-- Main modal -->
                                                        <div id="modal-${task.id}" tabindex="-1" aria-hidden="true" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                                                            <div class="relative p-4 w-full max-w-md max-h-full">
                                                                <!-- Modal content -->
                                                                <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                                                                    <!-- Modal header -->
                                                                    <div class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                                                                        <h3 class="text-xl font-semibold text-gray-900 dark:text-white">
                                                                            Task Details
                                                                        </h3>
                                                                        <button type="button" class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white" data-modal-hide="modal-${task.id}">
                                                                            <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                                                                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                                                                            </svg>
                                                                            <span class="sr-only">Close modal</span>
                                                                        </button>
                                                                    </div>
                                                                    <!-- Modal body Info Tarea -->
                                                                    <div class="p-4 md:p-5 space-y-4">
                                                                        <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Title: <c:out value="${task.getTitle()}"/>  
                                                                        </p>
                                                                        <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Description: <c:out value="${task.getDescription()}"/>   
                                                                        </p>
                                                                        <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Deadline: <c:out value="${task.getDeadline()}"/>   
                                                                        </p>
                                                                        <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Tipo de Tarea: <c:out value="${task.type.description}"/> 
                                                    
                                                                        </p>
                                                                        <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Estado de la tarea: <c:out value="${task.status.description}"/>   
                                                                        </p>
                                                                        <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Categorias: 
                                                                            <c:forEach items="${task.categories}" var="category">
                                                                                <c:out value="${category.name}" />,                         
                                                                            </c:forEach>
                                                                        </p>
                                                                                                                                                
                                                                    </div>
                                                                    <!-- Modal footer -->
                                                                    <div class="flex items-center p-4 md:p-5 border-t border-gray-200 rounded-b dark:border-gray-600">
                                                                        <button data-modal-hide="modal-${task.id}" type="button" class="text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-800">I accept</button>
                                                                        <button data-modal-hide="modal-${task.id}" type="button" class="py-2.5 px-5 ms-3 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-red-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">Decline</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>         
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                        <a href="tasks/new" class="button-add mt-4 flex items-center justify-center w-full bg-gray-200 dark:bg-gray-700 py-2 rounded-lg text-sm font-semibold hover:bg-gray-300 dark:hover:bg-gray-600 text-gray-900 dark:text-white">
                                            <svg class="h-5 w-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"></path>
                                            </svg>
                                            Añadir tarea
                                        </a>
                                    </div>
                                </div>  
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <!-- Right part -->
                <div class="px-4 py-8 flex flex-col items-center justify-center ">
                    
                    <div class="bg-white dark:bg-gray-800 p-6 rounded-lg w-80 shadow-lg items-center">
                        <div class="flex items-center mb-4">
                            <svg class="w-5 h-5 text-gray-500 dark:text-gray-400 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                            </svg>
                            <input id="search" name="search" class="bg-gray-200 dark:bg-gray-700 text-sm text-gray-900 dark:text-gray-300 placeholder-gray-500 dark:placeholder-gray-400 rounded-lg focus:ring-2 focus:ring-red-500 focus:outline-none w-full py-2 px-3" type="text" placeholder="Resumen Tareas">
                        </div>
                        <!-- Cuadro de tarea -->
                        <div class="overflow-y-auto h-48">
                            <ul class="space-y-2">
                                <c:forEach items="${tasksByType.entrySet()}" var="entry">
                                    <c:forEach items="${entry.getValue()}" var="task">
                                        <li id="${task.id}" data-pos="${String.valueOf(task.getPosition())}" class="taskL flex items-center bg-gray-100 dark:bg-gray-700 p-2 rounded-lg" draggable="true">
                                            <div class="flex-grow ml-2">
                                                <div class="flex justify-between">
                                                    <span class="text-sm text-gray-900 dark:text-gray-200">
                                                        <c:out value="${task.getTitle()}" />
                                                    </span>
                                                </div>
                                                <div class="text-sm text-gray-500 dark:text-gray-400">
                                                    <c:out value="${task.getDescription()}" />
                                                </div>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </c:forEach>
                            </ul>
                        </div>
                        <!-- Boton añadir tarea-->
                        <a href="tasks/new" class="mt-4 flex items-center justify-center w-full bg-gray-200 dark:bg-gray-700 py-2 rounded-lg text-sm font-semibold hover:bg-gray-300 dark:hover:bg-gray-600 text-gray-900 dark:text-white">
                            <svg class="h-5 w-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"></path>
                            </svg>
                            Añadir tarea
                        </a>  
                    </div>

                    <div class="mt-6 bg-white dark:bg-gray-800 p-6 rounded-lg w-80 shadow-lg items-center">
                        <h2 class="mb-3 text-lg font-semibold text-gray-900 dark:text-white">Tips:</h2>
                        <ul class="max-w-md space-y-2 text-gray-500 list-inside dark:text-gray-400">
                            <li class="flex items-center bg-gray-100 dark:bg-gray-700 p-2 rounded-lg">
                                <svg class="w-4 h-4 mr-2.5 text-green-500 dark:text-green-400 flex-shrink-0" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M17.707 5.207a1 1 0 0 0-1.414-1.414L7.5 12.586 3.707 8.793a1 1 0 0 0-1.414 1.414l4.5 4.5a1 1 0 0 0 1.414 0l9.5-9.5Z"/>
                                </svg>
                                Minimum of one uppercase character
                            </li>
                            <li class="flex items-center bg-gray-100 dark:bg-gray-700 p-2 rounded-lg">
                                <svg class="w-4 h-4 mr-2.5 text-green-500 dark:text-green-400 flex-shrink-0" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M17.707 5.207a1 1 0 0 0-1.414-1.414L7.5 12.586 3.707 8.793a1 1 0 0 0-1.414 1.414l4.5 4.5a1 1 0 0 0 1.414 0l9.5-9.5Z"/>
                                </svg>
                                At least one numeric character
                            </li>
                            <li class="flex items-center bg-gray-100 dark:bg-gray-700 p-2 rounded-lg">
                                <svg class="w-4 h-4 mr-2.5 text-green-500 dark:text-green-400 flex-shrink-0" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M17.707 5.207a1 1 0 0 0-1.414-1.414L7.5 12.586 3.707 8.793a1 1 0 0 0-1.414 1.414l4.5 4.5a1 1 0 0 0 1.414 0l9.5-9.5Z"/>
                                </svg>
                                Exclusion of your name or common words
                            </li>
                        </ul>
                    </div>     
                </div>
            </section>
        </div>
    </main>  
    <footer class="bg-white dark:bg-gray-800 p-4">
        <div class="max-w-screen-xl mx-auto text-center">
            <p class="text-sm text-gray-500 dark:text-gray-400">© 2024 Tune-Do. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>