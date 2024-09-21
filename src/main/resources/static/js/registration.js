// Generar opciones de día
function days() {
    const daySelect = document.querySelector('select[name="day"]');
    for (let i = 1; i <= 31; i++) {
        const option = document.createElement('option');
        option.value = i;
        option.textContent = i;
        daySelect.appendChild(option);
    }
}

// Generar opciones de mes
function months() {
    const monthSelect = document.querySelector('select[name="month"]');
    const months = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
    months.forEach((month, index) => {
        const option = document.createElement('option');
        option.value = index + 1;
        option.textContent = month;
        monthSelect.appendChild(option);
    });
}

// Generar opciones de año
function years() {
    const yearSelect = document.querySelector('select[name="year"]');
    const currentYear = new Date().getFullYear();
    for (let i = (currentYear-110); i <= currentYear; i++) {
        const option = document.createElement('option');
        option.value = i;
        option.textContent = i;
        yearSelect.appendChild(option);
    }
}

// función que verifica que el campo nombre no esté vacío
function validateName() {
    const name = document.getElementById('nombre').value.trim();
    const nameError = document.getElementById('nombreError');
    const isValid = name !== '';
    nameError.classList.toggle('hidden', isValid);
    return isValid;
}

// función que verifica si la fecha es válida
function validateDate() {
    const day = parseInt(document.getElementById('day').value, 10);
    const month = parseInt(document.getElementById('month').value, 10);
    const year = parseInt(document.getElementById('year').value, 10);
    const dateError = document.getElementById('dateError');
    
    if (day && month && year) {
        const date = new Date(year, month - 1, day);
        const isValid = date.getFullYear() === year && date.getMonth() === month - 1 && date.getDate() === day;
        dateError.classList.toggle('hidden', isValid);
        return isValid;
    }
    dateError.classList.remove('hidden');
    return false;
}

// funcion para ver si el email es correcto
function validateEmail() {
    const email = document.getElementById('email').value;
    const emailError = document.getElementById('emailError');
    // Expresión regular para verificar que el correo tenga un @, un . y texto entre esos simbolos
    const isValid = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
    emailError.classList.toggle('hidden', isValid);
    return isValid;
}

// función para validar contraseña
function validatePassword() {
    const password = document.getElementById('contraseña').value;
    const passwordError = document.getElementById('passwordError');
    
    // Expresión regular para verificar al menos 8 caracteres, al menos una letra y al menos un número
    const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
    const isValid = passwordRegex.test(password);
    
    passwordError.classList.toggle('hidden', isValid);
    return isValid;
}

// función de confirmar contraseña, verifica si son iguales
function validateConfirmPassword() {
    const password = document.getElementById('contraseña').value;
    const confirmPassword = document.getElementById('confirmar').value;
    const confirmPasswordError = document.getElementById('confirmPasswordError');
    const isValid = password === confirmPassword;
    confirmPasswordError.classList.toggle('hidden', isValid);
    return isValid;
}

// Declara función que valide formulario, solo se puede enviar el formulario si es válido
function validateForm(event) {
    const isNameValid = validateName();
    const isDateValid = validateDate();
    const isEmailValid = validateEmail();
    const isPasswordValid = validatePassword();
    const isConfirmPasswordValid = validateConfirmPassword();

    if (!(isNameValid && isDateValid && isEmailValid && isPasswordValid && isConfirmPasswordValid)) {
        event.preventDefault();
    }
}

// Llamar a las funciones al cargar la página
document.addEventListener('DOMContentLoaded', () => {
    // llama a las funciones que generan los valores de dia, mes y año en "fecha de nacimiento"
    days();
    months();
    years();

    // Agregar eventos de entrada para validaciones en tiempo real cuando el usuario modifica el form después de haberlo envíado una vez
    document.getElementById('nombre').addEventListener('input', validateName);
    document.getElementById('email').addEventListener('input', validateEmail);
    document.getElementById('contraseña').addEventListener('input', validatePassword);
    document.getElementById('confirmar').addEventListener('input', validateConfirmPassword);
    document.getElementById('day').addEventListener('change', validateDate);
    document.getElementById('month').addEventListener('change', validateDate);
    document.getElementById('year').addEventListener('change', validateDate);

    // llama la función de validación de formulario
    const form = document.getElementById('registrationForm');
    form.addEventListener('submit', validateForm);

});