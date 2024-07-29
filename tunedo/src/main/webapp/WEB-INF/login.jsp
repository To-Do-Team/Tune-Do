<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="/css/login.css">
    <title>Login</title>
</head>

<body class="bg-gray-100 flex items-center justify-center h-screen">
    <form action="" class="bg-white p-8 rounded-lg shadow-lg max-w-md w-full space-y-4">
        <h2 class="text-2xl font-bold mb-6 text-center text-gray-900">Iniciar Sesión
            en Tune-Do</h2>

        <label class="block">
            <h4 class="text-sm font-medium text-gray-700 mb-1">Email:</h4>
            <input type="email" name="email"
                class="block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
        </label>

        <label class="block">
            <h4 class="text-sm font-medium text-gray-700 mb-1">Contraseña:</h4>
            <input type="password" name="contraseña"
                class="block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
        </label>

        <button type="submit"
            class="w-full bg-indigo-600 text-white py-2 px-4 rounded-md shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 text-sm font-medium">
            Iniciar Sesión</button>
        <p class="text-center text-sm text-gray-600 mt-4">
            ¿No tienes una cuenta?
            <a href="" class="text-indigo-600 hover:text-indigo-700 font-medium">Regístrate</a>
        </p>
    </form>

</body>

</html>