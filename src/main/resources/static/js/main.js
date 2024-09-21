// toggle dark
document.addEventListener('DOMContentLoaded', function() {
    const toggle = document.getElementById('dark-mode-toggle');
    const body = document.body;

    // Cargar el estado inicial del modo oscuro
    if (localStorage.getItem('dark-mode') === 'enabled') {
        body.classList.add('dark');
        toggle.checked = true
    } else {
        body.classList.remove('dark');
        toggle.checked = false;
    }

    // Manejar el cambio de estado del toggle
    toggle.addEventListener('change', function() {
        if (toggle.checked) {
            body.classList.add('dark');
            localStorage.setItem('dark-mode', 'enabled');
        } else {
            body.classList.remove('dark');
            localStorage.setItem('dark-mode', 'disabled');
        }
    });
});

//toggle premium
document.addEventListener('DOMContentLoaded', function() {
    const premiumToggle = document.getElementById('premium-mode-toggle');
    const premiumLinks = document.getElementById('premium-links');

    // Cargar el estado inicial del premium mode
    if (localStorage.getItem('premium-mode') === 'enabled') {
        premiumLinks.classList.remove('hidden');
        premiumToggle.checked = true;
    } else {
        premiumLinks.classList.add('hidden');
        premiumToggle.checked = false;
    }

    // Manejar el cambio de estado del toggle
    premiumToggle.addEventListener('change', function() {
        if (premiumToggle.checked) {
            premiumLinks.classList.remove('hidden');
            localStorage.setItem('premium-mode', 'enabled');
        } else {
            premiumLinks.classList.add('hidden');
            localStorage.setItem('premium-mode', 'disabled');
        }
    });
});

// search tasks
document.addEventListener("keyup", e => {
    if (e.key === "Escape")e.target.value = "";

    if (e.target.matches("#search")) {
        document.querySelectorAll(".taskL").forEach(task => {
            task.textContent.toLowerCase().includes(e.target.value.toLowerCase())
                ?task.classList.remove("filter")
                :task.classList.add("filter");
        })
    }
})

//dropdown list
document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('[data-dropdown-toggle]').forEach(function (dropdownButton) {
        dropdownButton.addEventListener('click', function (event) {
            // Evita que el dropdown se cierre inmediatamente
            event.stopPropagation();

            const taskElement = this.closest('.task');
            const dropdownId = this.getAttribute('data-dropdown-toggle');
            const dropdownMenu = document.getElementById(dropdownId);

            dropdownLogic(dropdownMenu,taskElement);
        });
    });
});

const dropdownLogic = (dropdownMenu,taskElement) => {
    dropdownMenu.querySelectorAll('a').forEach(function (dropdownItem) {
        dropdownItem.addEventListener('click', function () {
            if (this.textContent.trim() === 'Done') {
                taskElement.classList.add('task-opacity');
            }
        });
    });
}