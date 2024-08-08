<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="src\main\resources\static\css\landing.css">
    <script src="src\main\resources\static\js\landing.js"></script>
    <title>Tune-Do</title>
</head>


<body class="bg-white pt-8">
    <header class="bg-[#003049] text-[#FDF0D5]/80 fixed top-0 left-0 w-full z-50">
        <div class="container mx-auto flex justify-between items-center py-2">
            <div class="flex items-center">
                <img src="src\main\resources\static\img\logo.jpg" alt="Logo" class="h-10 mr-4">
                <a href="#" class="text-3xl font-bold">Tune-Do</a>
            </div>
            <nav class="space-x-4">
                <a href="#planes" class="text-xl px-2 font-bold">Planes</a>
                <a href="#mejor-de-tune-do" class="text-xl px-2 font-bold">Características</a>
                <a href="#acerca" class="text-xl px-2 font-bold">Acerca de</a>
            </nav>
        </div>
    </header>



    <section class="container mx-auto mt-20">
        <div class="text-center">
            <h1 class="text-5xl font-bold mb-4 leading-tight text-[#003049] max-w-auto mx-auto">Que Mejor que organizar
                tu vida al
                ritmo de la música</h1>
            <p class="text-2xl mb-8 max-w-3xl mx-auto text-[#003049]">La plataforma diseñada para una nueva forma de
                trabajar</p>
        </div>

        <div
            class="flex flex-col md:flex-row bg-gradient-to-r from-[#003049]/30 to-[#669BBC]/30 p-5 rounded-lg shadow-md">
            <div class="md:w-2/3 flex-shrink-0">
                <img src="src\main\resources\static\img\imgprincipal.jpg" alt="App Screenshot"
                    class="rounded-lg shadow-md w-full h-full object-cover">
            </div>
            <div
                class="w-full md:w-1/3 bg-gray-100 p-10 ml-0 md:ml-10 mt-5 md:mt-0 flex flex-col justify-center rounded-lg">
                <h2 class="text-3xl text-[#003049] font-bold mb-2">Simple.</h2>
                <h2 class="text-3xl text-[#003049] font-bold mb-2">Organizado.</h2>
                <h2 class="text-3xl text-[#003049] font-bold mb-2">Productivo.</h2>
                <p class="text-lg mb-6 text-[#003049]">
                    Con Tune-do, puedes organizar y planificar todas tus actividades diarias en un solo lugar, mientras
                    disfrutas de una banda sonora personalizada que te impulsa a mantenerte enfocado y motivado.
                </p>
                <div>
                    <a href="#login" class="bg-[#C1121F] text-white px-4 py-2 rounded-md mr-2 inline-block">Iniciar
                        Sesión</a>
                    <a href="#register" class="bg-[#C1121F] text-white px-4 py-2 rounded-md inline-block">Regístrate</a>
                </div>
            </div>
        </div>
    </section>

    <section id="mejor-de-tune-do" class="py-16 bg-gradient-to-r from-[#003049]/30 to-[#669BBC]/30 mt-8">
        <div class="container mx-auto px-4">
            <h2 class="text-4xl font-bold text-center mb-12 text-gray-800">Lo Mejor de Tune-do</h2>

            <div class="space-y-8">

                <div class="flex flex-col md:flex-row items-stretch bg-white rounded-lg shadow-lg">
                    <div class="md:w-1/2 p-4 flex items-center justify-center">
                        <img src="src\main\resources\static\img\organizer.jpg" alt="Organización Eficaz"
                            class="w-full h-[25rem] object-cover rounded-lg shadow-md">
                    </div>
                    <div class="md:w-1/2 p-6 flex flex-col justify-center">
                        <h3 class="text-2xl font-bold mb-4 text-red-600">🎶 Organización Eficaz al Ritmo de la Música 🎶
                        </h3>
                        <p class="text-lg text-gray-700">Con Tune-do, gestionar tus tareas se convierte en una
                            experiencia única. <strong>Crea y organiza</strong> tus actividades de manera intuitiva, con
                            listas divididas por urgencia e importancia. Agrega notas, asigna categorías y establece
                            fechas límite para una planificación precisa. ¡Haz que cada tarea sea una melodía en tu día
                            a día!</p>
                    </div>
                </div>

                <div class="flex flex-col md:flex-row items-stretch bg-white rounded-lg shadow-lg">
                    <div class="md:w-1/2 p-6 flex flex-col justify-center">
                        <h3 class="text-2xl font-bold mb-4 text-red-600">📊 Retroalimentación Personalizada para una
                            Productividad Óptima 📊</h3>
                        <p class="text-lg text-gray-700">Recibe retroalimentaciones detalladas sobre tu desempeño.
                            Configura la frecuencia y los horarios en los que deseas recibir tus informes, con la opción
                            de excluir periodos de descanso para un resumen más preciso. Analiza cómo tus tareas
                            completadas impactan tu productividad y ajusta tu enfoque para mejorar constantemente.</p>
                    </div>
                    <div class="md:w-1/2 p-4 flex items-center justify-center">
                        <img src="src\main\resources\static\img\recap.jpg" alt="Gestión Dinámica"
                            class="w-full h-[25rem] object-cover rounded-lg shadow-md">
                    </div>
                </div>

                <div class="flex flex-col md:flex-row items-stretch bg-white rounded-lg shadow-lg">
                    <div class="md:w-1/2 p-4 flex items-center justify-center">
                        <img src="src\main\resources\static\img\music.jpg" alt="Música Motivadora"
                            class="w-full h-[25rem] object-cover rounded-lg shadow-md">
                    </div>
                    <div class="md:w-1/2 p-6 flex flex-col justify-center">
                        <h3 class="text-2xl font-bold mb-4 text-red-600">🎵 Música que Te Impulsa a Lograr Más 🎵</h3>
                        <p class="text-lg text-gray-700"><strong>Filtra y disfruta</strong> de tus géneros musicales
                            favoritos mientras trabajas. Tune-do recomienda canciones que se adaptan a tus tareas
                            completadas, manteniéndote motivado y enérgico. Disfruta de una experiencia auditiva que
                            potencia tu rendimiento y hace que cada momento de trabajo sea más placentero.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div id="characteristics" class="w-full max-w-5xl mx-auto mt-8 px-4">
        <div class="flex justify-center space-x-4 mb-8">
            <button id="tab1"
                class="tab-button bg-[#C1121F] text-white py-2 px-8 rounded text-3xl font-bold w-1/2">Funcionalidades</button>
            <button id="tab2"
                class="tab-button bg-gray-300 text-gray-700 py-2 px-8 rounded text-3xl font-bold w-1/2">Beneficios</button>
        </div>

        <section id="funcionalidades" class="tab-content text-center mt-8 mx-auto max-w-7xl px-4">
            <div class="relative overflow-hidden rounded-xl bg-gradient-to-r from-[#003049] to-[#669BBC] shadow-2xl transition-transform transform hover:scale-110 p-8 mx-auto"
                style="width: 90%; max-width: 1100px;">
                <div
                    class="absolute top-0 left-0 w-32 h-32 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full opacity-60">
                </div>
                <div
                    class="absolute top-0 right-0 w-32 h-32 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full opacity-60">
                </div>
                <div
                    class="absolute bottom-0 left-0 w-32 h-32 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full opacity-60">
                </div>
                <div
                    class="absolute bottom-0 right-0 w-32 h-32 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full opacity-60">
                </div>

                <div class="flex flex-wrap justify-center gap-16 relative z-10">
                    <div class="relative overflow-hidden rounded-lg bg-[#669BBC] shadow-xl transition-transform transform hover:rotate-6 hover:scale-105"
                        style="width: 8cm; height: 6cm;">
                        <div
                            class="absolute bottom-0 left-0 w-16 h-16 bg-[#003049] transform rotate-45 translate-x-1/2 translate-y-1/2 rounded-full opacity-60">
                        </div>
                        <div class="flex flex-col items-center justify-center h-full p-3 relative z-10 text-white">
                            <h4 class="text-lg font-bold mb-2 text-center text-[#FDF0D5]">Tareas Organizadas</h4>
                            <p class="text-base font-medium text-justify">Organiza y prioriza tus tareas en listas,
                                ajusta fechas límite y mantén el control sobre tus responsabilidades con facilidad.</p>
                        </div>
                    </div>
                    <div class="relative overflow-hidden rounded-lg bg-[#669BBC] shadow-xl transition-transform transform hover:-rotate-6 hover:scale-105"
                        style="width: 8cm; height: 6cm;">
                        <div
                            class="absolute bottom-0 left-0 w-16 h-16 bg-[#003049] transform rotate-45 translate-x-1/2 translate-y-1/2 rounded-full opacity-60">
                        </div>
                        <div class="flex flex-col items-center justify-center h-full p-3 relative z-10 text-white">
                            <h4 class="text-lg font-bold mb-2 text-center text-[#FDF0D5]">Alertas y Recordatorios</h4>
                            <p class="text-base font-medium text-justify">Recibe alertas para tareas importantes y
                                recordatorios para mantenerte al tanto de tus vencimientos y prioridades.</p>
                        </div>
                    </div>
                    <div class="relative overflow-hidden rounded-lg bg-[#669BBC] shadow-xl transition-transform transform hover:rotate-6 hover:scale-105"
                        style="width: 8cm; height: 6cm;">
                        <div
                            class="absolute bottom-0 left-0 w-16 h-16 bg-[#003049] transform rotate-45 translate-x-1/2 translate-y-1/2 rounded-full opacity-60">
                        </div>
                        <div class="flex flex-col items-center justify-center h-full p-3 relative z-10 text-white">
                            <h4 class="text-lg font-bold mb-2 text-center text-[#FDF0D5]">Límites de Tiempo de Tareas
                            </h4>
                            <p class="text-base font-medium text-justify">Define límites de tiempo para tareas, con
                                alertas y recordatorios automáticos para mejorar la gestión del tiempo.</p>
                        </div>
                    </div>
                    <div class="relative overflow-hidden rounded-lg bg-[#669BBC] shadow-xl transition-transform transform hover:-rotate-6 hover:scale-105"
                        style="width: 8cm; height: 6cm;">
                        <div
                            class="absolute bottom-0 left-0 w-16 h-16 bg-[#003049] transform rotate-45 translate-x-1/2 translate-y-1/2 rounded-full opacity-60">
                        </div>
                        <div class="flex flex-col items-center justify-center h-full p-3 relative z-10 text-white">
                            <h4 class="text-lg font-bold mb-2 text-center text-[#FDF0D5]">Sincronización
                                Multidispositivo</h4>
                            <p class="text-base font-medium text-justify">Accede y actualiza tus tareas desde cualquier
                                dispositivo con sincronización en la nube, manteniendo la información siempre disponible
                                y actualizada.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="beneficios" class="tab-content hidden text-center mt-8 mx-auto max-w-7xl px-4">
            <div class="relative overflow-hidden rounded-xl bg-gradient-to-r from-[#003049] to-[#669BBC] shadow-2xl transition-transform transform hover:scale-110 p-8 mx-auto"
                style="width: 90%; max-width: 1100px;">
                <div
                    class="absolute top-0 left-0 w-48 h-48 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full opacity-50">
                </div>
                <div
                    class="absolute top-0 right-0 w-48 h-48 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full opacity-50">
                </div>
                <div
                    class="absolute bottom-0 left-0 w-48 h-48 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full opacity-50">
                </div>
                <div
                    class="absolute bottom-0 right-0 w-48 h-48 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full opacity-50">
                </div>

                <div class="flex flex-wrap justify-center gap-16 relative z-10">
                    <div class="relative overflow-hidden rounded-lg bg-[#FDF0D5] shadow-xl transition-transform transform hover:rotate-6 hover:scale-105"
                        style="width: 8cm; height: 6cm;">
                        <div
                            class="absolute top-0 right-0 w-16 h-16 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full">
                        </div>
                        <div class="flex flex-col items-center justify-center h-full p-3 relative z-10 text-[#003049]">
                            <h4 class="text-lg font-bold mb-2 text-center text-[#003049]">Crecimiento y Expansión</h4>
                            <p class="text-base font-medium text-justify">Benefíciate de nuevas características basadas
                                en la retroalimentación de los usuarios para mantener la aplicación relevante. Las
                                alianzas estratégicas con empresas de música enriquecen tu experiencia y abren nuevas
                                oportunidades.</p>
                        </div>
                    </div>
                    <div class="relative overflow-hidden rounded-lg bg-[#FDF0D5] shadow-xl transition-transform transform hover:-rotate-6 hover:scale-105"
                        style="width: 8cm; height: 6cm;">
                        <div
                            class="absolute top-0 right-0 w-16 h-16 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full">
                        </div>
                        <div class="flex flex-col items-center justify-center h-full p-3 relative z-10 text-[#003049]">
                            <h4 class="text-lg font-bold mb-2 text-center text-[#003049]">Experiencia Personalizada y
                                Motivadora</h4>
                            <p class="text-base font-medium text-justify">Recibe retroalimentación diaria y
                                notificaciones de vencimiento para tener una visión clara del progreso y las tareas
                                pendientes. Experimenta una gestión del tiempo más fluida y motivadora.</p>
                        </div>
                    </div>
                    <div class="relative overflow-hidden rounded-lg bg-[#FDF0D5] shadow-xl transition-transform transform hover:rotate-6 hover:scale-105"
                        style="width: 8cm; height: 6cm;">
                        <div
                            class="absolute top-0 right-0 w-16 h-16 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full">
                        </div>
                        <div class="flex flex-col items-center justify-center h-full p-3 relative z-10 text-[#003049]">
                            <h4 class="text-lg font-bold mb-2 text-center text-[#003049]">Accesibilidad y Conveniencia
                            </h4>
                            <p class="text-base font-medium text-justify">Gestiona tus tareas y recibe recomendaciones
                                musicales desde cualquier dispositivo con sincronización en la nube. Aprovecha la
                                flexibilidad de la plataforma para mantener la productividad y el disfrute musical.</p>
                        </div>
                    </div>
                    <div class="relative overflow-hidden rounded-lg bg-[#FDF0D5] shadow-xl transition-transform transform hover:-rotate-6 hover:scale-105"
                        style="width: 8cm; height: 6cm;">
                        <div
                            class="absolute top-0 right-0 w-16 h-16 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full">
                        </div>
                        <div class="flex flex-col items-center justify-center h-full p-3 relative z-10 text-[#003049]">
                            <h4 class="text-lg font-bold mb-2 text-center text-[#003049]">Comunicación Efectiva y
                                Responsabilidad</h4>
                            <p class="text-base font-medium text-justify">Mantén una comunicación clara y efectiva sobre
                                tus tareas y responsabilidades con características de retroalimentación personalizables.
                                Asume el control de tu organización y productividad.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>


    <section id="planes" class="bg-gradient-to-r from-[#C1121F] to-[#6F0303] py-16 mt-8">
        <div class="container mx-auto text-center">
            <h2 class="text-4xl font-bold mb-12 text-white">Nuestros Planes</h2>
            <div class="flex justify-center space-x-8">

                <div
                    class="bg-white p-8 shadow-lg rounded-lg w-full sm:w-1/2 lg:w-1/3 transition-transform duration-300 hover:scale-105 hover:shadow-xl">
                    <h3 class="text-2xl font-bold mb-4 text-gray-800">Free</h3>
                    <p class="text-xl font-semibold text-gray-600 mb-6">Gratis</p>
                    <ul class="list-disc list-inside text-left space-y-2">
                        <li>Gestiona hasta 20 tareas</li>
                        <li>Categorías predeterminadas</li>
                        <li>Recordatorios por email 1 hora antes de que termine tu tarea</li>
                        <li>Canciones predeterminadas</li>
                    </ul>
                </div>

                <div
                    class="bg-white p-8 shadow-lg rounded-lg w-full sm:w-1/2 lg:w-1/3 transition-transform duration-300 hover:scale-105 hover:shadow-xl">
                    <h3 class="text-2xl font-bold mb-4 text-gray-800">Premium</h3>
                    <p class="text-xl font-semibold text-gray-600 mb-6">$1.99/mes</p>
                    <ul class="list-disc list-inside text-left space-y-2">
                        <li>Todo en el plan Gratuito</li>
                        <li>Gestionar hasta 50 tareas a la vez</li>
                        <li>Añadir tus propias categorías</li>
                        <li>Recordatorio desde el momento de finalización de tu tarea hasta 1 día de anticipación</li>
                        <li>Retroalimentación y gráficos sobre tus tareas</li>
                        <li>Acceso a funciones experimentales</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="py-16">
        <div class="container mx-auto text-center">
            <h2 class="text-4xl font-bold mb-12">¿Qué puedes empezar a gestionar?</h2>
            <div class="carousel-container overflow-hidden relative">
                <div class="carousel-wrapper flex">
                    <div class="carousel-content flex space-x-4">
                        <div
                            class="carousel-slide bg-[#669BBC] text-[#003049] font-bold p-6 flex items-center justify-center w-64 h-24 rounded-lg">
                            Trabajo</div>
                        <div
                            class="carousel-slide bg-[#669BBC] text-[#003049] font-bold p-6 flex items-center justify-center w-64 h-24 rounded-lg">
                            Estudios</div>
                        <div
                            class="carousel-slide bg-[#669BBC] text-[#003049] font-bold p-6 flex items-center justify-center w-64 h-24 rounded-lg">
                            Rutinas</div>
                        <div
                            class="carousel-slide bg-[#669BBC] text-[#003049] font-bold p-6 flex items-center justify-center w-64 h-24 rounded-lg">
                            Compras</div>
                        <div
                            class="carousel-slide bg-[#669BBC] text-[#003049] font-bold p-6 flex items-center justify-center w-64 h-24 rounded-lg">
                            Proyectos</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="bg-[#003049] text-white py-8">
        <div class="container mx-auto flex flex-col items-center">

            <div class="text-center mb-6">
                <p class="text-2xl font-bold mb-2">¿Qué estás esperando para organizar tu vida?</p>
                <p class="text-base font-medium mb-4">Domina tu día con herramientas inteligentes y la música que te
                    impulsa. Regístrate ahora y transforma cada tarea en una experiencia inspiradora y eficiente.</p>
            </div>

            <div class="text-center space-y-4">
                <a href="#login"
                    class="bg-[#C1121F] text-white py-3 px-6 rounded transition duration-300 hover:bg-red-800 inline-block">Iniciar
                    Sesión</a>
                <a href="#register"
                    class="bg-[#C1121F] text-white py-3 px-6 rounded transition duration-300 hover:bg-red-800 inline-block">Registrarse</a>
            </div>
        </div>
        <div class="bg-[#669BBC] text-white py-4 mt-8 text-center">
            <p class="text-lg font-bold">"La música es el mejor compañero en cada paso de tu vida."</p>
        </div>
    </footer>


</body>

</html>