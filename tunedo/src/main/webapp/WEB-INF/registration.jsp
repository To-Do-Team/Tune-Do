<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="/src/main/resources/static/js/registration.js" defer></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="/src/main/resources/static/css/registration.css">
    <title>Registration</title>
</head>

<body class="bg-gray-100 flex items-center justify-center h-screen">
    <form id="registrationForm" class="bg-white p-8 rounded-lg shadow-lg max-w-md w-full space-y-4">
        <h2 class="text-2xl font-bold mb-6 text-center text-gray-900">
            ¡Regístrate en Tune-Do!</h2>
        
        <label class="block">
            <h4 class="text-sm font-medium text-gray-700 mb-1">Nombre:</h4>
            <input type="text" name="nombre" id="nombre"
                class="block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
            <p id="nombreError" class="text-red-600 text-sm hidden">Campo obligatorio</p>
        </label>

        <label class="block">
            <h4 class="text-sm font-medium text-gray-700 mb-1">Email:</h4>
            <input type="email" name="email" id="email"
                class="block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
            <p id="emailError" class="text-red-600 text-sm hidden">Correo inválido</p>
        </label>

        <label class="block">
            <h4 class="text-sm font-medium text-gray-700 mb-1">Fecha de Nacimiento:</h4>
            <div class="flex space-x-2">
                <select name="day" id="day"
                    class="flex-1 px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                    <option value="">Día</option>
                </select>
                <select name="month" id="month"
                    class="flex-1 px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                    <option value="">Mes</option>
                </select>
                <select name="year" id="year"
                    class="flex-1 px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                    <option value="">Año</option>
                </select>
            </div>
            <p id="dateError" class="text-red-600 text-sm hidden">Coloque una fecha válida</p>
        </label>

        <label class="block">
            <h4 class="text-sm font-medium text-gray-700 mb-1">Contraseña:</h4>
            <input type="password" name="contraseña" id="contraseña"
                class="block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
            <p id="passwordError" class="text-red-600 text-sm hidden">La contraseña debe tener al menos 8 caracteres, una letra y un número</p>
        </label>

        <label class="block">
            <h4 class="text-sm font-medium text-gray-700 mb-1">Confirmar contraseña:</h4>
            <input type="password" name="confirmar" id="confirmar"
                class="block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
            <p id="confirmPasswordError" class="text-red-600 text-sm hidden">Las contraseñas no son idénticas</p>
        </label>

        <button type="submit"
            class="w-full bg-indigo-600 text-white py-2 px-4 rounded-md shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 text-sm font-medium">
            Registrarse</button>
        
        <p class="text-center text-sm text-gray-600 mt-4">
            ¿Ya tienes una cuenta?
            <a href="#" class="text-indigo-600 hover:text-indigo-700 font-medium">Iniciar Sesión</a>
        </p>
    </form>
</body>

</html>