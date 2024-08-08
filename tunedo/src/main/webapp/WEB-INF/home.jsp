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
    <script src="/js/musicPlayer.js" defer></script>
    <script src="/js/delete.js" defer></script>
    <script src="/js/statistic.js" defer></script>
    <script src="/js/swal.js" defer></script>
    <script>
        var tasksData = JSON.parse('<c:out value="${tasksJson}" escapeXml="false"/>');
    </script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/flowbite@2.4.1/dist/flowbite.min.css"  rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/flowbite@2.4.1/dist/flowbite.min.js"></script>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/player.css">


</head>
<body class="content">
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
        <div class="flex flex-col min-h-full bg-white border-gray-200 dark:bg-gray-900">
            <div class="max-w-screen-xl flex items-center m-auto ">
                <h2 class="flex text-xl font-semibold text-gray-900 dark:text-white mt-6 px-12 ml-4">
                    Hola,  
                    <div class="text-xl font-semibold text-center text-red-600 dark:text-red-600 px-2">
                        <c:out value="${user.getName()}" />
                    </div>
                </h2>
            </div>
            <section class="grow max-w-screen-xl items-start justify-between mx-auto px-4 text-white bg-white border-gray-200 dark:bg-gray-900 grid grid-cols-1 md:grid-cols-3">
                
                <!-- Left part -->
                <div class="grid h-auto col-span-2 py-2 h-full">
                    <div class="max-w-screen-xl px-4 py-0 sm:px-6 sm:py-12 lg:px-8 lg:py-0">
                        <div class="overflow-auto mt-2 grid gap-4 md:grid-cols-1 lg:grid-cols-2 h-5/6">

                            <!-- <div class="bg-gray-900 text-white flex justify-center items-center h-screen"> -->
                            <c:forEach items="${tasksByType.entrySet()}" var="entry">
                                <div class="overflow-auto flex items-center justify-center gap-4">
                                    <div class="flex flex-col bg-white dark:bg-gray-800 p-4 rounded-lg w-96 shadow-lg h-full"style="
    height: -webkit-fill-available;
">
                                        <h2 class="text-xl font-semibold text-center text-gray-900 dark:text-white my-3">
                                            <c:out value="${entry.getKey().getDescription()}" />
                                        </h2>

                                        <div class="grow overflow-y-auto h-full max-h-[80%] swim-lane custom-scrollbar bg-gray-700 rounded-lg" data-type="${entry.getKey().name()}">
                                            <!-- Repeat the above block for each task -->
                                            <c:forEach items="${entry.getValue()}" var="task">
                                                <div id="${task.id}" data-pos="${String.valueOf(task.getPosition())}" 
                                                class="my-2 bg-gray-800 rounded-lg task flex items-center gap-4 p-2 border-b border-gray-300 dark:border-gray-700" draggable="true">                                                    
                                                    <div class="flex-1">
                                                        <h3 class="text-lg font-bold text-gray-900 dark:text-white">
                                                            <c:out value="${task.getTitle()}" />
                                                        </h3>
                                                        <p class="mt-1 text-sm text-gray-500 dark:text-gray-400">
                                                            <c:out value="${task.getDescription()}" />
                                                        </p>
                                                        <div class="flex flex-col gap-3 mt-4 mb-4">
                                                            <span class="text-xs text-white-500 dark:text-gray-400"><c:out value="${task.getDeadlineFormatted()}" /></span>

                                                            <button id="dropdownHoverButton-${task.id}" data-dropdown-toggle="dropdownHover-${task.id}" data-dropdown-trigger="hover"
                                                            class="text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-1 py-1 text-center inline-flex max-w-max items-center dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-800" 
                                                            type="button"><c:out value="${task.getStatus().description}"/> 
                                                            <svg class="w-2.5 h-2.5 ms-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
                                                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
                                                            </svg>
                                                            </button>    
                                                            <!-- Dropdown menu -->
                                                            <div id="dropdownHover-${task.id}" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-44 dark:bg-gray-700">
                                                                <ul class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownHoverButton-${task.id}">
                                                                <c:forEach items="${statuses}" var="status">
                                                                    <li>
                                                                        <a onclick="changeStatus(${task.getId()},'${status}')" class="cursor-pointer block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"><c:out value="${status.description}" /></a>
                                                                    </li>
                                                                </c:forEach>
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
                                                        <a class="mt-2 cursor-pointer" onclick="deleteTask(${task.getId()})" >
                                                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 7h14m-9 3v8m4-8v8M10 3h4a1 1 0 0 1 1 1v3H9V4a1 1 0 0 1 1-1ZM6 7h12v13a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V7Z"/>
                                                            </svg>
                                                        </a> 
                                                        <!-- Modal toggle -->
                                                        <button data-tooltip-target="tooltip-${task.getId()}" data-tooltip-trigger="hover" data-tooltip-placement="right" data-modal-target="modal-${task.id}" data-modal-toggle="modal-${task.id}" class="mt-2 block text-white focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm text-center text-gray-900 dark:focus:ring-red-800" type="button">
                                                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                                <path stroke="currentColor" stroke-width="2" d="M21 12c0 1.2-4.03 6-9 6s-9-4.8-9-6c0-1.2 4.03-6 9-6s9 4.8 9 6Z"/>
                                                                <path stroke="currentColor" stroke-width="2" d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"/>
                                                            </svg>                                                              
                                                        </button>
                                                        <div id="tooltip-${task.getId()}" role="tooltip" class="absolute z-10 invisible inline-block px-3 py-2 text-sm font-medium text-white bg-gray-900 rounded-lg shadow-sm opacity-0 tooltip dark:bg-gray-700">
                                                            Ver detalles
                                                            <div class="tooltip-arrow" data-popper-arrow></div>
                                                        </div>                                                 
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
                                                                            Título: <p><c:out value="${task.getTitle()}"/>  </p>
                                                                        </p>
                                                                        <%-- <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Description: 
                                                                            <p>
                                                                            <c:out value="${task.getDescription()}"/>   
                                                                            </p>
                                                                        </p> --%>
                                                                        <c:if test="${not empty task.getDescription()}">
                                                                            <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Description:  
                                                                                <p>
                                                                                    <c:out value="${task.getDescription()}"/> 
                                                                                </p>  
                                                                            </p>
                                                                        </c:if>
                                                                        <%-- <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Notas: 
                                                                            <p>
                                                                            <c:out value="${task.getNotes()}"/> 
                                                                            </p>  
                                                                        </p> --%>
                                                                        <c:if test="${not empty task.getNotes()}">
                                                                            <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Notas condicional: 
                                                                                <p>
                                                                                    <c:out value="${task.getNotes()}"/> 
                                                                                </p>  
                                                                            </p>
                                                                        </c:if>
                                                                        <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Tipo de Tarea: 
                                                                            <p id="type-${task.id}" >
                                                                            <c:out value="${task.type.description}"/> 
                                                                            </p>
                                                                        </p>
                                                                        <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Estado de la tarea: 
                                                                            <p id="status-${task.id}">
                                                                            <c:out value="${task.status.description}"/>  
                                                                            </p> 
                                                                        </p>
                                                                        <%-- <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Categorias: 
                                                                            <c:forEach items="${task.categories}" var="category">
                                                                                <p><c:out value="${category.name}" /></p>                   
                                                                            </c:forEach>
                                                                        </p> --%>
                                                                        <c:if test="${not empty task.getCategories()}">
                                                                            <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Categorias: 
                                                                                <c:forEach items="${task.categories}" var="category">
                                                                                <p><c:out value="${category.name}" /></p>                   
                                                                                </c:forEach> 
                                                                            </p>
                                                                        </c:if> 
                                                                        <%-- <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Deadline: 
                                                                            <p>
                                                                            <c:out value="${task.getDeadline()}"/> 
                                                                            </p>  
                                                                        </p> --%>
                                                                        <c:if test="${not empty task.getDeadline()}">
                                                                            <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Deadline: 
                                                                                <p>
                                                                                    <c:out value="${task.getDeadlineFormatted()}"/> 
                                                                                </p>  
                                                                            </p>
                                                                        </c:if>                                          
                                                                    </div>
                                                                    <!-- Modal footer -->
                                                                    <%-- <div class="flex items-center p-4 md:p-5 border-t border-gray-200 rounded-b dark:border-gray-600">
                                                                        <button data-modal-hide="modal-${task.id}" type="button" class="text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-800">I accept</button>
                                                                        <button data-modal-hide="modal-${task.id}" type="button" class="py-2.5 px-5 ms-3 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-red-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">Decline</button>
                                                                    </div> --%>
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

                    <!-- Searcher -->
                    <div class="bg-white dark:bg-gray-800 p-6 rounded-lg w-80 shadow-lg items-center">
                        <div class="flex items-center mb-4">
                            <svg class="w-5 h-5 text-gray-500 dark:text-gray-400 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                            </svg>
                            <input id="search" name="search" class="bg-gray-200 dark:bg-gray-700 text-sm text-gray-900 dark:text-gray-300 placeholder-gray-500 dark:placeholder-gray-400 rounded-lg focus:ring-2 focus:ring-red-500 focus:outline-none w-full py-2 px-3" type="text" placeholder="Resumen Tareas">
                        </div>
                        <!-- Cuadro de tarea -->
                        <c:forEach items="${donesOnly.entrySet()}" var="entry">
                        <div class="overflow-y-auto h-48 swim-lane" data-type="${entry.getKey().name()}">
                            <%-- <ul class="space-y-2"> --%>
                                    <c:forEach items="${entry.getValue()}" var="task">
                                        <%-- <div id="${task.id}" data-pos="${String.valueOf(task.getPosition())}" class="taskL task flex items-center bg-gray-100 dark:bg-gray-700 p-2 rounded-lg my-2" draggable="true">
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
                                        </div> --%>
                                        <div id="${task.id}" data-pos="${String.valueOf(task.getPosition())}" class="task flex items-start gap-4 p-2 border-b border-gray-300 dark:border-gray-700" draggable="true">                                                    
                                                    <div class="flex-1">
                                                        <h3 class="text-lg font-bold text-gray-900 dark:text-white">
                                                            <c:out value="${task.getTitle()}" />
                                                        </h3>
                                                        <p class="mt-1 text-sm text-gray-500 dark:text-gray-400">
                                                            <c:out value="${task.getDescription()}" />
                                                        </p>
                                                        <div class="mt-4 mb-4">
                                                            <span class="text-sm text-gray-500 dark:text-gray-400"><c:out value="${task.getDeadlineFormatted()}" /></span>

                                                            <button id="dropdownHoverButton-${task.id}" data-dropdown-toggle="dropdownHover-${task.id}" data-dropdown-trigger="hover"
                                                            class="text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-1 py-1 text-center inline-flex items-center dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-800" 
                                                            type="button"><c:out value="${task.getStatus().description}"/> 
                                                            <svg class="w-2.5 h-2.5 ms-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
                                                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
                                                            </svg>
                                                            </button>    
                                                            <!-- Dropdown menu -->
                                                            <div id="dropdownHover-${task.id}" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-44 dark:bg-gray-700">
                                                                <ul class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownHoverButton-${task.id}">
                                                                <c:forEach items="${statuses}" var="status">
                                                                    <li>
                                                                        <a onclick="changeStatus(${task.getId()},'${status}')" class="cursor-pointer block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"><c:out value="${status.description}" /></a>
                                                                    </li>
                                                                </c:forEach>
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
                                                        <a class="mt-2 cursor-pointer" onclick="deleteTask(${task.getId()})" >
                                                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 7h14m-9 3v8m4-8v8M10 3h4a1 1 0 0 1 1 1v3H9V4a1 1 0 0 1 1-1ZM6 7h12v13a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V7Z"/>
                                                            </svg>
                                                        </a> 
                                                        <!-- Modal toggle -->
                                                        <button data-tooltip-target="tooltip-${task.getId()}" data-tooltip-trigger="hover" data-tooltip-placement="right" data-modal-target="modal-${task.id}" data-modal-toggle="modal-${task.id}" class="mt-2 block text-white focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm text-center text-gray-900 dark:focus:ring-red-800" type="button">
                                                            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                                <path stroke="currentColor" stroke-width="2" d="M21 12c0 1.2-4.03 6-9 6s-9-4.8-9-6c0-1.2 4.03-6 9-6s9 4.8 9 6Z"/>
                                                                <path stroke="currentColor" stroke-width="2" d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"/>
                                                            </svg>                                                              
                                                        </button>
                                                        <div id="tooltip-${task.getId()}" role="tooltip" class="absolute z-10 invisible inline-block px-3 py-2 text-sm font-medium text-white bg-gray-900 rounded-lg shadow-sm opacity-0 tooltip dark:bg-gray-700">
                                                            Ver detalles
                                                            <div class="tooltip-arrow" data-popper-arrow></div>
                                                        </div>                                                      
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
                                                                            Título: <p><c:out value="${task.getTitle()}"/>  </p>
                                                                        </p>
                                                                        <%-- <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Description: 
                                                                            <p>
                                                                            <c:out value="${task.getDescription()}"/>   
                                                                            </p>
                                                                        </p> --%>
                                                                        <c:if test="${not empty task.getDescription()}">
                                                                            <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Description:  
                                                                                <p>
                                                                                    <c:out value="${task.getDescription()}"/> 
                                                                                </p>  
                                                                            </p>
                                                                        </c:if>
                                                                        <%-- <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Notas: 
                                                                            <p>
                                                                            <c:out value="${task.getNotes()}"/> 
                                                                            </p>  
                                                                        </p> --%>
                                                                        <c:if test="${not empty task.getNotes()}">
                                                                            <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Notas condicional: 
                                                                                <p>
                                                                                    <c:out value="${task.getNotes()}"/> 
                                                                                </p>  
                                                                            </p>
                                                                        </c:if>
                                                                        <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Tipo de Tarea: 
                                                                            <p id="type-${task.id}" >
                                                                            <c:out value="${task.type.description}"/> 
                                                                            </p>
                                                                        </p>
                                                                        <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Estado de la tarea: 
                                                                            <p id="status-${task.id}">
                                                                            <c:out value="${task.status.description}"/>  
                                                                            </p> 
                                                                        </p>
                                                                        <%-- <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Categorias: 
                                                                            <c:forEach items="${task.categories}" var="category">
                                                                                <p><c:out value="${category.name}" /></p>                   
                                                                            </c:forEach>
                                                                        </p> --%>
                                                                        <c:if test="${not empty task.getCategories()}">
                                                                            <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Categorias: 
                                                                                <c:forEach items="${task.categories}" var="category">
                                                                                <p><c:out value="${category.name}" /></p>                   
                                                                                </c:forEach> 
                                                                            </p>
                                                                        </c:if> 
                                                                        <%-- <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Deadline: 
                                                                            <p>
                                                                            <c:out value="${task.getDeadline()}"/> 
                                                                            </p>  
                                                                        </p> --%>
                                                                        <c:if test="${not empty task.getDeadline()}">
                                                                            <p class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
                                                                            Deadline: 
                                                                                <p>
                                                                                    <c:out value="${task.getDeadlineFormatted()}"/> 
                                                                                </p>  
                                                                            </p>
                                                                        </c:if>                                          
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
                            <%-- </ul> --%>
                        </div>
                        </c:forEach>
                        <!-- Boton añadir tarea-->
                        <a onclick="generateStatistic()" class="cursor-pointer mt-4 flex items-center justify-center w-full bg-gray-200 dark:bg-gray-700 py-2 rounded-lg text-sm font-semibold hover:bg-gray-300 dark:hover:bg-gray-600 text-gray-900 dark:text-white">
                            <svg class="h-5 w-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"></path>
                            </svg>
                            Terminar el día
                        </a>
                    </div>
                    
                        <template id="my-template">
                        <swal-title>
                            ¿Quieres terminar tu dia y generar un reporte?
                        </swal-title>
                        <swal-icon type="info" color="blue"></swal-icon>
                        <swal-button type="confirm">
                            Sí ,por favor
                        </swal-button>
                        <swal-button type="cancel">
                            No, aun tengo trabajo por hacer
                        </swal-button>
                        <swal-param name="allowEscapeKey" value="false" />
                        <swal-param
                            name="customClass"
                            value='{ "popup": "my-popup" }' />
                        <swal-function-param
                            name="didOpen"
                            value="popup => console.log(popup)" />
                        </template>
                    <!-- Songs -->
                    

                    <div class="mt-6 bg-white dark:bg-gray-800 p-4 rounded-lg w-80 shadow-lg ">
                        <h2 class="text-lg font-semibold text-gray-900 dark:text-white">Music Player</h2>

                        <div id="music-player" class="bg-white dark:bg-gray-800 p-4 rounded-lg shadow-md text-center">

                            <div class="flex items-center bg-gray-100 dark:bg-gray-700 p-2 rounded-lg">
                                <div class="w-14 h-14 rounded-md mx-auto">
                                    <img id="track-image" src="" alt="Track Image" >
                                </div>
                                <div>
                                    <h2 id="track-name" class=" text-gray-900 dark:text-white mb-2"></h2>                 
                                    <audio id="audio-player" controls class="w-32 h-6 bg-gray-100 dark:bg-gray-700 rounded-lg "></audio>
                                </div>
                            </div>    
                            <div id="playlist" class="mt-5 max-h-24 overflow-y-auto cursor-pointer bg-gray-100 dark:bg-gray-700 p-2 rounded-lg">
                                <!-- Playlist items will be added here dynamically -->
                            </div>
                        </div>
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