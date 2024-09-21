document.addEventListener('DOMContentLoaded', function () {
    function tab() {
        const tabs = document.querySelectorAll('.tab-button');
        const contents = document.querySelectorAll('.tab-content');

        tabs.forEach((tab, index) => {
            tab.addEventListener('click', () => {
                tabs.forEach((t, i) => {
                    t.classList.remove('bg-[#C1121F]', 'text-white');
                    t.classList.add('bg-gray-300', 'text-gray-700');
                    contents[i].classList.add('hidden');
                });

                tab.classList.add('bg-[#C1121F]', 'text-white');
                tab.classList.remove('bg-gray-300', 'text-gray-700');
                contents[index].classList.remove('hidden');
            });
        });
    };

    function carousel() {
        const carouselContent = document.querySelector('.carousel-content');
        const slideWidth = document.querySelector('.carousel-slide').offsetWidth;
        const slideMargin = parseInt(getComputedStyle(document.querySelector('.carousel-slide')).marginRight);
        const totalWidth = slideWidth + slideMargin;
        const totalSlides = document.querySelectorAll('.carousel-slide').length;
        const fullWidth = totalWidth * totalSlides;
    
        let currentPosition = 0;
    
        function scrollCarousel() {
            currentPosition -= 1;
            if (Math.abs(currentPosition) >= totalWidth) {
                currentPosition = 0;
            }
            carouselContent.style.transform = `translateX(${currentPosition}px)`;
            requestAnimationFrame(scrollCarousel);
        };
    
        carouselContent.innerHTML += carouselContent.innerHTML;

        scrollCarousel();
    };
    carousel();
    tab();
});