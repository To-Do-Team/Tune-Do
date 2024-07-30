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

  