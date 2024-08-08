document.addEventListener('DOMContentLoaded', () => {
    const choices = new Choices('#category-select', {
        removeItemButton: true,
        placeholder: true,
    });

    flatpickr("#date-picker", {
        dateFormat: "d/m/Y",
        minDate: "today"
    });

    flatpickr("#time-picker", {
        enableTime: true,
        noCalendar: true,
        dateFormat: "H:i",
        time_24hr: true
    });

    function validateForm() {
        let isValid = true;

        const title = document.getElementById('task-title').value.trim();
        if (!title) {
            document.getElementById('title-error').textContent = 'Campo obligatorio';
            document.getElementById('title-error').classList.remove('hidden');
            isValid = false;
        } else {
            document.getElementById('title-error').classList.add('hidden');
        }

        const categories = document.getElementById('category-select').selectedOptions;
        if (categories.length === 0) {
            document.getElementById('category-error').textContent = 'Seleccionar al menos una categoría';
            document.getElementById('category-error').classList.remove('hidden');
            isValid = false;
        } else {
            document.getElementById('category-error').classList.add('hidden');
        }

        const date = document.getElementById('date-picker').value.trim();
        const time = document.getElementById('time-picker').value.trim();
        const now = new Date();

        if (date && time) {
            const [day, month, year] = date.split('/').map(num => parseInt(num, 10));
            const [hour, minute] = time.split(':').map(num => parseInt(num, 10));
            const selectedDate = new Date(year, month - 1, day, hour, minute);

            if (selectedDate <= now) {
                document.getElementById('date-error').textContent = 'Fecha y hora deben ser futuras';
                document.getElementById('date-error').classList.remove('hidden');
                isValid = false;
            } else {
                document.getElementById('date-error').classList.add('hidden');
            }
        } else {
            if (!date) {
                document.getElementById('date-error').textContent = 'Campo obligatorio';
                document.getElementById('date-error').classList.remove('hidden');
                isValid = false;
            } else {
                document.getElementById('date-error').classList.add('hidden');
            }
            if (!time) {
                document.getElementById('time-error').textContent = 'Campo obligatorio';
                document.getElementById('time-error').classList.remove('hidden');
                isValid = false;
            } else {
                document.getElementById('time-error').classList.add('hidden');
            }
        }

        const importance = document.getElementById('importance-select').value;
        if (!importance) {
            document.getElementById('importance-error').textContent = 'Campo obligatorio';
            document.getElementById('importance-error').classList.remove('hidden');
            isValid = false;
        } else {
            document.getElementById('importance-error').classList.add('hidden');
        }

        return isValid;
    }

    document.getElementById('task-form').addEventListener('submit', (event) => {
        if (!validateForm()) {
            event.preventDefault();
        }
    });

    document.getElementById('reset-btn').addEventListener('click', () => {
        const taskData = getTaskData();
        populateForm(taskData);
    });

    document.querySelector('button[type="submit"]').addEventListener('click', (event) => {
        if (!validateForm()) {
            event.preventDefault();
        }
    });

    document.querySelector('button[type="button"]').addEventListener('click', () => {
        window.history.back();
    });

    // //funciones para probar si funciona
    // function getTaskData() {
    //     return {
    //         id: 1,
    //         title: 'Tarea de ejemplo',
    //         description: 'Descripción de la tarea',
    //         categories: ['Fitness', 'Programming'],
    //         date: '10/08/2024',
    //         time: '14:00',
    //         importance: 'option1',
    //         completed: false,
    //         notes: 'Notas adicionales'
    //     };
    // }


    // función que Obtiene los datos y rellena el formulario
    // const taskData = getTaskData();
    // populateForm(taskData);
    // // Rellenar el formulario con los datos obtenidos
    // function populateForm(data) {
    //     document.getElementById('task-title').value = data.title;
    //     document.getElementById('task-description').value = data.description;

    //     // Manejo de categorías
    //     const categorySelect = document.getElementById('category-select');
    //     choices.clearStore(); 
    //     choices.setValue(data.categories);

    //     document.getElementById('date-picker')._flatpickr.setDate(data.date);
    //     document.getElementById('time-picker')._flatpickr.setDate(data.time);

    //     document.getElementById('importance-select').value = data.importance;
    //     document.getElementById('importance-select').dispatchEvent(new Event('change'));

    //     document.getElementById('completed').checked = data.completed;
    //     document.getElementById('task-notes').value = data.notes;
    // }
});
