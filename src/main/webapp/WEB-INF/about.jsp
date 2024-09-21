<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="/css/about.css">
    <title>Sobre Tune-Do</title>
</head>

<body id="top" class="font-gregori">
    <header class="bg-[#003049] text-[#FDF0D5]/80 top-0 left-0 w-full z-50 py-4">
        <div class="container mx-auto flex justify-between items-center py-2">
            <div class="flex items-center flex-shrink-0">
                <img src="/img/logo.jpg" alt="Logo" class="h-8 md:h-10 mr-2 md:mr-4">
                <a href="/" class="font-bold text-2xl md:text-3xl">Tune-Do</a>
            </div>
            <nav class="flex flex-wrap items-center space-x-2 md:space-x-4">
                <a href="/" class="text-lg font-bold md:text-xl hover:text-[#669BBC]">Inicio</a>
                <a href="/#planes" class="text-xl px-2 font-bold">Planes</a>
                <a href="/#mejor-de-tune-do" class="text-xl px-2 font-bold">Características</a>
                <a href="/about" class="text-xl px-2 font-bold">Acerca de</a>
                <a href="/login"
                    class="bg-[#C1121F]/80 font-bold hover:bg-[#A10F1A] text-[#FDF0D5]/80 py-2 px-4 rounded-full shadow-lg transition duration-300 ease-in-out text-lg md:text-xl border-2 border-[#C1121F] hover:border-[#A10F1A]">
                    Iniciar Sesión
                </a>
                <a href="/register"
                    class="bg-[#C1121F]/80 font-bold hover:bg-[#A10F1A] text-[#FDF0D5]/80 py-2 px-4 rounded-full shadow-lg transition duration-300 ease-in-out text-lg md:text-xl border-2 border-[#C1121F] hover:border-[#A10F1A]">
                    Registrarse
                </a>
            </nav>
        </div>
    </header>
    
    <nav class="bg-[#003049] sticky top-0 left-0 w-full z-40">
        <div class="w-full flex justify-center py-2 overflow-x-auto">
            <div class="flex flex-nowrap gap-4">
                <a href="#top"
                    class="bg-[#669BBC] text-[#FDF0D5] h-10 min-w-[120px] flex-grow rounded-lg text-center no-underline transition-all flex items-center justify-center whitespace-nowrap text-xs sm:text-base lg:text-base py-2 px-4 hover:bg-[#003049]">Quiénes Somos</a>
                <a href="#publico-objetivo"
                    class="bg-[#669BBC] text-[#FDF0D5] h-10 min-w-[120px] flex-grow rounded-lg text-center no-underline transition-all flex items-center justify-center whitespace-nowrap text-xs sm:text-base lg:text-base py-2 px-4 hover:bg-[#003049]">Público Objetivo</a>
                <a href="#mision-vision"
                    class="bg-[#669BBC] text-[#FDF0D5] h-10 min-w-[120px] flex-grow rounded-lg text-center no-underline transition-all flex items-center justify-center whitespace-nowrap text-xs sm:text-base lg:text-base py-2 px-4 hover:bg-[#003049]">Misión y Visión</a>
                <a href="#objetivos"
                    class="bg-[#669BBC] text-[#FDF0D5] h-10 min-w-[120px] flex-grow rounded-lg text-center no-underline transition-all flex items-center justify-center whitespace-nowrap text-xs sm:text-base lg:text-base py-2 px-4 hover:bg-[#003049]">Objetivos</a>
                <a href="#valores"
                    class="bg-[#669BBC] text-[#FDF0D5] h-10 min-w-[120px] flex-grow rounded-lg text-center no-underline transition-all flex items-center justify-center whitespace-nowrap text-xs sm:text-base lg:text-base py-2 px-4 hover:bg-[#003049]">Valores</a>
            </div>
        </div>
    </nav>
    
    <main>
        <section id="quienes-somos" class="bg-gray-100 py-12">
            <div class="container mx-auto px-6 md:px-12">
                <h2 class="text-4xl font-bold text-center text-[#003049] mb-8">Quiénes Somos</h2>
                <div class="bg-white shadow-lg rounded-lg overflow-hidden">
                    <div class="p-6 md:p-12">
                        <p class="text-lg font-medium text-gray-700 mb-4">
                            En TUNE-DO, somos un equipo apasionado por la tecnología y la música, dedicado a mejorar la
                            productividad y la gestión del tiempo de nuestros usuarios. Nuestro equipo está compuesto
                            por profesionales experimentados en diversas áreas, incluyendo el desarrollo de software,
                            diseño de experiencia de usuario y gestión de proyectos, todos unidos por una visión común:
                            combinar herramientas avanzadas de organización con el poder motivacional de la música.
                        </p>
                        <p class="text-lg font-medium text-gray-700 mb-4">
                            Hemos creado una aplicación que no solo mejora la productividad, sino que también ofrece una
                            experiencia agradable y motivadora. Creemos firmemente en la importancia de una buena
                            organización para alcanzar el éxito personal y profesional, y estamos comprometidos a
                            proporcionar las mejores soluciones posibles para nuestros usuarios. Nuestra aplicación es
                            intuitiva y fácil de usar, diseñada para transformar la gestión del tiempo de nuestros
                            usuarios y adaptarse a sus necesidades específicas.
                        </p>
                        <p class="text-lg font-medium text-gray-700 mb-4">
                            En TUNE-DO, nuestro objetivo es ayudarte a alcanzar tus metas de manera eficiente mientras
                            disfrutas de la música que amas. Descubre cómo TUNE-DO puede cambiar tu forma de trabajar y
                            vivir, proporcionándote las herramientas necesarias para gestionar tu tiempo con eficacia y
                            satisfacción.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <section id="palabras-que-nos-definen" class="text-center mt-8 mx-auto max-w-5xl">
            <h2 class="text-4xl font-bold mb-6 text-[#003049]">Palabras que Nos Definen</h2>
            <div class="grid grid-cols-2 md:grid-cols-4 gap-6">
                <div
                    class="transform transition-transform duration-500 hover:scale-105 p-4 bg-[#669BBC] rounded-lg relative overflow-hidden">
                    <img src="/img/Amigable.jpg" alt="Descripción de la imagen"
                        class="w-full h-48 object-cover mb-4 rounded-md">
                    <p class="text-lg font-semibold text-white">Amigable</p>
                </div>
                <div
                    class="transform transition-transform duration-500 hover:scale-105 p-4 bg-[#669BBC] rounded-lg relative overflow-hidden">
                    <img src="/img/Intuitiva.jpg" alt="Descripción de la imagen"
                        class="w-full h-48 object-cover mb-4 rounded-md">
                    <p class="text-lg font-semibold text-white">Intuitiva</p>
                </div>
                <div
                    class="transform transition-transform duration-500 hover:scale-105 p-4 bg-[#669BBC] rounded-lg relative overflow-hidden">
                    <img src="/img/profesional.jpg" alt="Descripción de la imagen"
                        class="w-full h-48 object-cover mb-4 rounded-md">
                    <p class="text-lg font-semibold text-white">Profesional</p>
                </div>
                <div
                    class="transform transition-transform duration-500 hover:scale-105 p-4 bg-[#669BBC] rounded-lg relative overflow-hidden">
                    <img src="/img/Confiable.jpg" alt="Descripción de la imagen"
                        class="w-full h-48 object-cover mb-4 rounded-md">
                    <p class="text-lg font-semibold text-white">Confiable</p>
                </div>
            </div>
        </section>
        

        <section id="publico-objetivo" class="text-center mt-8 px-4">
            <h2 class="text-4xl font-bold mb-6 text-[#003049]">Público Objetivo</h2>
            <div class="container mx-auto px-4">
                <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                    <div
                        class="relative overflow-hidden rounded-xl bg-[#003049] shadow-lg transform transition-transform hover:scale-105">
                        <div
                            class="absolute top-0 right-0 w-32 h-32 bg-[#669BBC] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-br-full">
                        </div>
                        <div class="flex flex-col items-center justify-between p-6 h-full relative z-10">
                            <p class="text-md font-medium text-white mb-4">Estudiantes universitarios que necesitan
                                organizar su tiempo y tareas con música de fondo.</p>
                            <img src="/img/Estudiantes.jpg" alt="Estudiantes Universitarios"
                                class="w-full h-40 object-cover rounded-md">
                        </div>
                    </div>
                    <div
                        class="relative overflow-hidden rounded-xl bg-[#003049] shadow-lg transform transition-transform hover:scale-105">
                        <div
                            class="absolute top-0 right-0 w-32 h-32 bg-[#669BBC] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-br-full">
                        </div>
                        <div class="flex flex-col items-center justify-between p-6 h-full relative z-10">
                            <p class="text-md font-medium text-white mb-4">Profesionales jóvenes que buscan una
                                aplicación de productividad que también les proporcione una experiencia entretenida.</p>
                            <img src="/img/Profesionales.jpg" alt="Profesionales Jóvenes"
                                class="w-full h-40 object-cover rounded-md">
                        </div>
                    </div>
                    <div
                        class="relative overflow-hidden rounded-xl bg-[#003049] shadow-lg transform transition-transform hover:scale-105">
                        <div
                            class="absolute top-0 right-0 w-32 h-32 bg-[#669BBC] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-br-full">
                        </div>
                        <div class="flex flex-col items-center justify-between p-6 h-full relative z-10">
                            <p class="text-md font-medium text-white mb-4">Freelancers y trabajadores remotos que desean
                                gestionar su carga de trabajo diaria mientras disfrutan de su música favorita.</p>
                            <img src="/img/Freelancers.jpg" alt="Freelancers y Trabajadores Remotos"
                                class="w-full h-40 object-cover rounded-md">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        

<section id="mision-vision" class="text-center mt-8 px-4">
    <h2 class="text-4xl font-bold mb-6 text-[#669BBC]">Misión y Visión</h2>
    <div
        class="relative overflow-hidden rounded-xl bg-[#003049] shadow-2xl transition-transform transform hover:scale-105 p-8 mx-auto max-w-3xl">
        <div
            class="absolute top-0 left-0 w-24 h-24 bg-[#669BBC] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full">
        </div>
        <div
            class="absolute top-0 right-0 w-24 h-24 bg-[#669BBC] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full">
        </div>
        <div
            class="absolute bottom-0 left-0 w-24 h-24 bg-[#669BBC] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full">
        </div>
        <div
            class="absolute bottom-0 right-0 w-24 h-24 bg-[#669BBC] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full">
        </div>
        <div class="grid grid-cols-1 sm:grid-cols-2 gap-8">
            <div
                class="relative overflow-hidden rounded-xl bg-[#669BBC] shadow-2xl transition-transform transform hover:scale-110 p-6">
                <div
                    class="absolute top-0 left-0 w-16 h-16 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full">
                </div>
                <div
                    class="flex flex-col items-center justify-center h-full p-3 relative z-10 text-[#003049] text-center">
                    <h3 class="text-xl mb-2">Misión</h3>
                    <p class="text-base font-medium">"Facilitar la organización y gestión de tareas diarias a
                        través de una experiencia única que combina productividad y música, ayudando a nuestros
                        usuarios a alcanzar sus objetivos de manera eficiente y con ritmo."</p>
                </div>
            </div>
            <div
                class="relative overflow-hidden rounded-xl bg-[#669BBC] shadow-2xl transition-transform transform hover:scale-110 p-6">
                <div
                    class="absolute bottom-0 right-0 w-16 h-16 bg-[#003049] transform rotate-45 translate-x-1/2 translate-y-1/2 rounded-full">
                </div>
                <div
                    class="flex flex-col items-center justify-center h-full p-3 relative z-10 text-[#003049] text-center">
                    <h3 class="text-xl mb-2">Visión</h3>
                    <p class="text-base font-medium">"Convertirnos en la herramienta líder en gestión del
                        tiempo, conocida por su capacidad para integrar de manera efectiva la música y la
                        productividad, permitiendo a nuestros usuarios vivir una experiencia transformadora en
                        su camino hacia el éxito."</p>
                </div>
            </div>
        </div>
    </div>
</section>

        
        <section id="objetivos" class="text-center mt-8 mx-auto max-w-5xl">
            <h2 class="text-3xl font-bold mb-6 text-[#003049]">Objetivos</h2>
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-6">
                <div
                    class="relative overflow-hidden rounded-xl bg-[#669BBC] shadow-xl transition-transform transform hover:scale-105 hover:bg-[#C1121F]">
                    <div
                        class="absolute top-0 left-0 w-24 h-24 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full">
                    </div>
                    <div class="flex flex-col items-center justify-center h-full p-4 relative z-10">
                        <h3 class="text-lg text-white mb-1">Incrementar la Base de Usuarios</h3>
                        <p class="text-sm font-medium text-white text-justify">Introducir nuevas funciones innovadoras y
                            mejorar las existentes basadas en la retroalimentación de los usuarios, con un enfoque en la
                            integración de herramientas de gestión de tareas y recomendaciones musicales.</p>
                    </div>
                </div>
                <div
                    class="relative overflow-hidden rounded-xl bg-[#669BBC] shadow-xl transition-transform transform hover:scale-105 hover:bg-[#C1121F]">
                    <div
                        class="absolute top-0 left-0 w-24 h-24 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full">
                    </div>
                    <div class="flex flex-col items-center justify-center h-full p-4 relative z-10">
                        <h3 class="text-lg text-white mb-1">Desarrollar y Mejorar Funcionalidades</h3>
                        <p class="text-sm font-medium text-white text-justify">Ampliar nuestra base de usuarios en un
                            30% durante el próximo año mediante estrategias de marketing digital efectivas y campañas
                            promocionales.</p>
                    </div>
                </div>
                <div
                    class="relative overflow-hidden rounded-xl bg-[#669BBC] shadow-xl transition-transform transform hover:scale-105 hover:bg-[#C1121F]">
                    <div
                        class="absolute top-0 left-0 w-24 h-24 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full">
                    </div>
                    <div class="flex flex-col items-center justify-center h-full p-4 relative z-10">
                        <h3 class="text-lg text-white mb-1">Optimizar la Experiencia del Usuario</h3>
                        <p class="text-sm font-medium text-white text-justify">Mantener un tiempo de respuesta de
                            soporte técnico inferior a 24 horas y asegurar una interfaz intuitiva que se adapte a las
                            preferencias individuales de los usuarios.</p>
                    </div>
                </div>
                <div
                    class="relative overflow-hidden rounded-xl bg-[#669BBC] shadow-xl transition-transform transform hover:scale-105 hover:bg-[#C1121F]">
                    <div
                        class="absolute top-0 left-0 w-24 h-24 bg-[#003049] transform rotate-45 -translate-x-1/2 -translate-y-1/2 rounded-full">
                    </div>
                    <div class="flex flex-col items-center justify-center h-full p-4 relative z-10">
                        <h3 class="text-lg text-white mb-1">Establecer Alianzas Estratégicas</h3>
                        <p class="text-sm font-medium text-white text-justify">Formar alianzas estratégicas con empresas
                            de música para enriquecer las recomendaciones y la integración musical en la aplicación, y
                            establecer un modelo de ingresos sólido para asegurar la viabilidad financiera a largo
                            plazo.</p>
                    </div>
                </div>
            </div>
        </section>
        
        <section id="valores" class="text-center mt-8 mx-auto max-w-5xl">
            <h2 class="text-3xl font-bold mb-6 text-[#003049]">Valores</h2>
            <div class="flex justify-center gap-12 relative">
                <div
                    class="absolute top-0 left-1/2 transform -translate-x-1/2 -translate-y-full w-0 h-0 border-t-8 border-l-8 border-transparent border-dashed border-[#669BBC]">
                </div>
                <div class="absolute top-0 left-1/2 transform -translate-x-1/2 w-8 h-8 bg-[#669BBC] rounded-full"></div>
                <div class="absolute top-8 left-1/2 transform -translate-x-1/2 w-1 h-10 bg-[#669BBC]"></div>
                <div class="relative overflow-hidden rounded-xl bg-[#003049] shadow-xl transition-transform transform hover:scale-105"
                    style="width: 12cm; height: 10cm;">
                    <div
                        class="absolute top-0 right-0 w-24 h-24 bg-[#669BBC] transform rotate-45 translate-x-1/2 -translate-y-1/2 rounded-full">
                    </div>
                    <div class="flex flex-col items-center justify-center h-full p-4 relative z-10">
                        <h3 class="text-lg text-white mb-4 text-center">Innovación</h3>
                        <img src="/img/Innovacion.jpg" alt="Valor 1"
                            class="w-28 h-28 object-cover rounded-full border-4 border-[#669BBC] mb-2">
                        <p class="text-sm font-medium text-white text-justify">Nos esforzamos por ofrecer soluciones
                            creativas y novedosas que mejoren la gestión del tiempo y la productividad.</p>
                    </div>
                </div>
                <div class="relative overflow-hidden rounded-xl bg-[#003049] shadow-xl transition-transform transform hover:scale-105"
                    style="width: 12cm; height: 10cm;">
                    <div
                        class="absolute top-0 right-0 w-24 h-24 bg-[#669BBC] transform rotate-45 translate-x-1/2 -translate-y-1/2 rounded-full">
                    </div>
                    <div class="flex flex-col items-center justify-center h-full p-4 relative z-10">
                        <h3 class="text-lg text-white mb-4 text-center">Calidad</h3>
                        <img src="/img/Calidad.jpg" alt="Valor 2"
                            class="w-28 h-28 object-cover rounded-full border-4 border-[#669BBC] mb-2">
                        <p class="text-sm font-medium text-white text-justify">Comprometidos con la excelencia en el
                            diseño y funcionalidad de nuestra aplicación.</p>
                    </div>
                </div>
                <div class="relative overflow-hidden rounded-xl bg-[#003049] shadow-xl transition-transform transform hover:scale-105"
                    style="width: 12cm; height: 10cm;">
                    <div
                        class="absolute top-0 right-0 w-24 h-24 bg-[#669BBC] transform rotate-45 translate-x-1/2 -translate-y-1/2 rounded-full">
                    </div>
                    <div class="flex flex-col items-center justify-center h-full p-4 relative z-10">
                        <h3 class="text-lg text-white mb-4 text-center">Empatía</h3>
                        <img src="/img/Empatia.jpg" alt="Valor 3"
                            class="w-28 h-28 object-cover rounded-full border-4 border-[#669BBC] mb-2">
                        <p class="text-sm font-medium text-white text-justify">Entendemos las necesidades de nuestros
                            usuarios y trabajamos para proporcionarles una herramienta que realmente les ayude.</p>
                    </div>
                </div>
                <div class="relative overflow-hidden rounded-xl bg-[#003049] shadow-xl transition-transform transform hover:scale-105"
                    style="width: 12cm; height: 10cm;">
                    <div
                        class="absolute top-0 right-0 w-24 h-24 bg-[#669BBC] transform rotate-45 translate-x-1/2 -translate-y-1/2 rounded-full">
                    </div>
                    <div class="flex flex-col items-center justify-center h-full p-4 relative z-10">
                        <h3 class="text-lg text-white mb-4 text-center">Simplicidad</h3>
                        <img src="/img/Simplicidad.jpg" alt="Valor 4"
                            class="w-28 h-28 object-cover rounded-full border-4 border-[#669BBC] mb-2">
                        <p class="text-sm font-medium text-white text-justify">Diseñamos una interfaz intuitiva y fácil
                            de usar para que todos los usuarios, independientemente de su nivel técnico, puedan
                            beneficiarse de TUNE-DO.</p>
                    </div>
                </div>
            </div>
        </section>
        

    </main>

    <footer class="bg-[#003049] text-white py-6 mt-8">
        <div class="container mx-auto px-4">
            <div class="flex flex-col items-center mb-4">
    
                <div class="flex space-x-4 mb-4">
                    <a href="#facebook.com" target="_blank"
                        class="text-white hover:text-[#669BBC] text-xl transition-colors"><i
                            class="fab fa-facebook-f"></i></a>
                    <a href="#twitter.com" target="_blank"
                        class="text-white hover:text-[#669BBC] text-xl transition-colors"><i
                            class="fab fa-x fa-lg"></i></a>
                    <a href="#instagram.com" target="_blank"
                        class="text-white hover:text-[#669BBC] text-xl transition-colors"><i
                            class="fab fa-instagram"></i></a>
                    <a href="#youtube.com" target="_blank"
                        class="text-white hover:text-[#669BBC] text-xl transition-colors"><i
                            class="fab fa-youtube"></i></a>
                </div>
    
                <div class="text-center mb-4">
                    <a href="tel:+1234567890"
                        class="text-white hover:underline flex items-center justify-center space-x-2 mb-2"><i
                            class="fas fa-phone"></i><span>+51 955 281 613</span></a>
                    <a href="mailto:info@tune-do.com"
                        class="text-white hover:underline flex items-center justify-center space-x-2"><i
                            class="fas fa-envelope"></i><span>apptunedo01@gmail.com</span></a>
                </div>
    
                <div class="text-center mb-4">
                    <a href="#home" class="text-white hover:underline mx-2">Inicio</a>
                    <a href="#login" class="text-white hover:underline mx-2">Iniciar sesión</a>
                    <a href="#register" class="text-white hover:underline mx-2">Registrarse</a>
                </div>
    
                <div class="text-gray-400 text-sm">
                    <p>&copy; 2024 TUNE-DO. Todos los derechos reservados.</p>
                </div>
            </div>
        </div>
    </footer>
    
</body>

</html>