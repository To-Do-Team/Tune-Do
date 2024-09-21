const generateStatistic = async () => {
    try {
        const response = await fetch('/statistics/generate-statistics', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            credentials: 'same-origin'
        });

        if (!response.ok) {
            throw new Error('Network response was not ok');
        }

        const data = await response.text();
        console.log('Success:', data);
        swalEndDay();
    } catch (error) {
        console.error('Error:', error);
    }
}

const swalEndDay = () => {
    Swal.fire({
        title: '¡Genial!',
        text: 'Puedes ver como terminaste tu día en la barra superior "Mi diario"',
        icon: 'success',
        confirmButtonText: 'Gracias'
    })
}