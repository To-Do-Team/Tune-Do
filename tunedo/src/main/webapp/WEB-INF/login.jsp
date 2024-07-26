<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</head>
<body>
    <div class="d-flex justify-content-center m-5">
        <h1 class="text-primary">Tune-Do</h1>
        <span class="text-danger ">
            <c:out value="${logoutMessage}" />
        </span>
    </div>

    <div class="container d-flex gap-4 justify-content-around  align-items-start">
        <form:form action="/new" method="POST" modelAttribute="user"
        class="d-flex flex-column p-5">
        <h2 class="mb-4">Regístrate</h2>
        <form:label path="name">Nombre</form:label>
        <form:input class="m-2" type="text" path="name"/>
        <form:errors class="alert alert-danger form-text text-muted" path="name" />

        <form:label path="email">Email</form:label>
        <form:input class="m-2" type="text" path="email"/>
        <form:errors class="alert alert-danger form-text text-muted" path="email" />

        <form:label path="password">Contraseña</form:label>
        <form:input class="m-2" type="password" path="password"/>
        <form:errors class="alert alert-danger form-text text-muted" path="password" />

        <form:label path="passwordConfirmation">Confirmar Contraseña</form:label>
        <form:input class="m-2" type="password" path="passwordConfirmation"/>
        <form:errors class="alert alert-danger form-text text-muted" path="passwordConfirmation" />

        <br>
        <button class="align-self-end m-2 px-2">Registrarte</button>
        </form:form>

        <!-- Log - in  -->
        <form action="/" method="post" 
        class="p-5 d-flex flex-column">
        <h2 class="mb-4">Inicia sesión</h2>
        <label for="">Email</label>
        <input class="m-2" type="email" name="email">
        <label for="">Contraseña</label>
        <input class="m-2" type="password" name="password">
        <span class="text-danger mb-3">
            <c:out value="${userError}" />
        </span>
        <span class="text-danger mb-3">
            <c:out value="${errorMessage}" />
        </span>
        <button class="align-self-end">Entrar</button>
        </form>
    </div>
</body>
</html>