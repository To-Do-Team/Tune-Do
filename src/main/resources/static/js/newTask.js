function categories() {
    const choices = new Choices('#category-select', {
        removeItemButton: true,
        placeholder: true,
    });
}

function time() {
    flatpickr("#date-picker", {
        altFormat: "d-m-Y",
        altInput: true,
        dateFormat: "Y-m-d\\TH:i",
        minDate: "today",
        locale: {
            firstDayOfWeek: 1,
            weekdays: {
                shorthand: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'],
                longhand: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
            },
            months: {
                shorthand: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Оct', 'Nov', 'Dic'],
                longhand: ['Enero', 'Febreo', 'Мarzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
            },
        },
    });
    flatpickr("#time-picker", {
        enableTime: true,
        noCalendar: true,
        dateFormat: "H:i",
        time_24hr: true
    });
}

const validateTitle = () => {
    const title = document.getElementById('task-title').value.trim();
    const titleError = document.getElementById('title-error');
    if (!title) {
        titleError.textContent = 'Campo obligatorio';
        titleError.classList.remove('hidden');
        return false;
    } else {
        titleError.classList.add('hidden');
        return true;
    }
};

const validateCategories = () => {
    const categories = document.getElementById('category-select').selectedOptions;
    const categoryError = document.getElementById('category-error');
    if (categories.length === 0) {
        categoryError.textContent = 'Seleccionar al menos una categoría';
        categoryError.classList.remove('hidden');
        return false;
    } else {
        categoryError.classList.add('hidden');
        return true;
    }
};

const DateAndTimeFormatter = () => {
    const date = document.getElementById('date-picker').value.trim();
    const time = document.getElementById('time-picker').value.trim();
    const now = new Date();

    if (date && time) {
        return isValid(formatter(date, time),now);
    }
    return false;
};

const formatter = (date, time) => {
    const [day, month, year] = date.split('/').map(num => parseInt(num, 10));
    const [hour, minute] = time.split(':').map(num => parseInt(num, 10));
    return new Date(year, month - 1, day, hour, minute);
}

const isValid = (selectedDate, now) =>{
    if (selectedDate <= now) {
        const dateError = document.getElementById('date-error');
        const timeError = document.getElementById('time-error');
        dateError.textContent = 'Fecha y hora deben ser futuras';
        dateError.classList.remove('hidden');
        timeError.classList.remove('hidden');
        return false;
    }
    return true;
}

const validateImportance = () => {
    const importance = document.getElementById('importance-select').value;
    const importanceError = document.getElementById('importance-error');
    if (!importance) {
        importanceError.textContent = 'Campo obligatorio';
        importanceError.classList.remove('hidden');
        return false;
    } else {
        importanceError.classList.add('hidden');
        return true;
    }
}

function validateForm() {
    return validateTitle() && validateImportance() && validateCategories() && DateAndTimeFormatter();
}

document.addEventListener('DOMContentLoaded', () => {
    categories();
    time();

    document.getElementById('task-form').addEventListener('submit', (event) => {
        if (!validateForm()) {
            event.preventDefault();
        }
    });
});
