const generateStatistic= ()=>{
    fetch('/statistics/generate-statistics', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        credentials: 'same-origin' 
    })
    .then(response =>{

        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        return response.text();
    })
    .then(data => {
        console.log('Success:', data);
        Swal.fire({
            title: '¡Genial!',
            text: 'Puedes ver como terminaste tu día en la barra superior "Mi diario"',
            icon: 'success',
            confirmButtonText: 'Gracias'
            });
    }
    )
    .catch((error) => console.error('Error:', error));
}