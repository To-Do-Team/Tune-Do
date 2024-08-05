<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pricing</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="/src/main/resources/static/css/pricing.css">
</head>

<body class="bg-gray-50">

    <section class="py-16 relative overflow-hidden">
        <div class="absolute inset-0 -z-10 flex justify-center items-center">
            <div class="background-shape bg-blue-200 w-72 h-72 transform -translate-x-1/2 -translate-y-1/4"></div>
            <div class="background-shape bg-green-200 w-96 h-96 transform translate-x-1/4 translate-y-1/4"></div>
        </div>

        <div class="container mx-auto px-4">
            <h2 class="text-4xl font-extrabold text-center mb-12 text-gray-800">Nuestros Planes</h2>

            <div class="flex flex-col md:flex-row justify-center gap-8">
                <div
                    class="pricing-card bg-white shadow-lg rounded-lg p-8 text-center flex-1 max-w-md mx-auto border border-gray-200 relative overflow-hidden">
                    <div class="absolute top-0 right-0 bg-blue-100 text-blue-600 font-bold plan-badge">Gratuito</div>
                    <div class="mb-8 relative z-10">
                        <div
                            class="bg-blue-500 text-white w-24 h-24 rounded-full mx-auto flex items-center justify-center text-4xl font-bold">
                            Free</div>
                    </div>
                    <h3 class="text-2xl font-semibold mb-4 text-gray-700">Plan Gratuito</h3>
                    <p class="text-5xl font-bold mb-6 text-gray-900">Gratis</p>
                    <ul class="text-left mb-6 space-y-3">
                        <li class="flex items-center text-gray-600">
                            <span class="inline-block w-4 h-4 mr-2 bg-blue-500 rounded-full"></span>Gestión básica de
                            tareas
                        </li>
                        <li class="flex items-center text-gray-600">
                            <span class="inline-block w-4 h-4 mr-2 bg-blue-500 rounded-full"></span>Lista de tareas
                            hasta 20
                        </li>
                        <li class="flex items-center text-gray-600">
                            <span class="inline-block w-4 h-4 mr-2 bg-blue-500 rounded-full"></span>Categorías
                            predeterminadas
                        </li>
                        <li class="flex items-center text-gray-600">
                            <span class="inline-block w-4 h-4 mr-2 bg-blue-500 rounded-full"></span>Recordatorios
                            diarios
                        </li>
                        <li class="flex items-center text-gray-600">
                            <span class="inline-block w-4 h-4 mr-2 bg-blue-500 rounded-full"></span>Redirección a
                            canciones
                        </li>
                    </ul>
                    <a href="#"
                        class="bg-blue-600 text-white py-3 px-6 rounded-lg text-lg font-semibold hover:bg-blue-700">Elegir
                        Plan</a>
                </div>

                <div
                    class="pricing-card bg-white shadow-lg rounded-lg p-8 text-center flex-1 max-w-md mx-auto border border-gray-200 relative overflow-hidden">
                    <div class="absolute top-0 right-0 bg-green-100 text-green-600 font-bold plan-badge">Premium</div>
                    <div class="mb-8 relative z-10">
                        <div
                            class="bg-green-500 text-white w-24 h-24 rounded-full mx-auto flex items-center justify-center text-4xl font-bold">
                            $</div>
                    </div>
                    <h3 class="text-2xl font-semibold mb-4 text-gray-700">Plan Premium</h3>
                    <p class="text-5xl font-bold mb-6 text-gray-900">$0.00/mes</p>
                    <ul class="text-left mb-6 space-y-3">
                        <li class="flex items-center text-gray-600">
                            <span class="inline-block w-4 h-4 mr-2 bg-green-500 rounded-full"></span>Todo en el Plan
                            Gratuito
                        </li>
                        <li class="flex items-center text-gray-600">
                            <span class="inline-block w-4 h-4 mr-2 bg-green-500 rounded-full"></span>Lista de tareas
                            hasta 50
                        </li>
                        <li class="flex items-center text-gray-600">
                            <span class="inline-block w-4 h-4 mr-2 bg-green-500 rounded-full"></span>Categorías
                            personalizables
                        </li>
                        <li class="flex items-center text-gray-600">
                            <span class="inline-block w-4 h-4 mr-2 bg-green-500 rounded-full"></span>Recordatorios de
                            vencimiento de tareas
                        </li>
                        <li class="flex items-center text-gray-600">
                            <span class="inline-block w-4 h-4 mr-2 bg-green-500 rounded-full"></span>Configuración
                            avanzada de retroalimentación
                        </li>
                        <li class="flex items-center text-gray-600">
                            <span class="inline-block w-4 h-4 mr-2 bg-green-500 rounded-full"></span>Soporte prioritario
                        </li>
                    </ul>
                    <a href="#"
                        class="bg-green-600 text-white py-3 px-6 rounded-lg text-lg font-semibold hover:bg-green-700">Elegir
                        Plan</a>
                </div>

            </div>
        </div>
    </section>

</body>

</html>