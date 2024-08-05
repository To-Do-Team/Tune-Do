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

document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('[data-dropdown-toggle]').forEach(function (dropdownButton) {
        dropdownButton.addEventListener('click', function (event) {
            // Evita que el dropdown se cierre inmediatamente
            event.stopPropagation();

            const taskElement = this.closest('.task');
            const dropdownId = this.getAttribute('data-dropdown-toggle');
            const dropdownMenu = document.getElementById(dropdownId);

            dropdownMenu.querySelectorAll('a').forEach(function (dropdownItem) {
                dropdownItem.addEventListener('click', function (event) {
                    if (this.textContent.trim() === 'Done') {
                        taskElement.classList.add('task-opacity');
                    }
                });
            });
        });
    });
});

/* document.addEventListener('DOMContentLoaded', function() {
    const audioPlayer = document.getElementById('audio-player');
    const playButton = document.getElementById('play-button');

    playButton.addEventListener('click', function() {
        if (audioPlayer.paused) {
            audioPlayer.play();
            playButton.textContent = 'Pause';
        } else {
            audioPlayer.pause();
            playButton.textContent = 'Play';
        }
    });
}); */
