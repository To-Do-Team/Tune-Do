
const button = document.getElementById("swal-example");
button.addEventListener("click",function(){
    /* Swal.fire({
        template: "#my-template"
    }); */
    Swal.fire({
    title: '¡Genial!',
    text: 'Puedes ver como terminaste tu día en la barra superior "Mi diario"',
    icon: 'success',
    confirmButtonText: 'Gracias'
    });
});
/* Swal.fire({
    title: '¡Genial!',
    text: 'Puedes ver como terminaste tu día en la barra superior "Mi diario"',
    icon: 'success',
    confirmButtonText: 'Gracias'
}) */
