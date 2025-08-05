import './lib/slick.min';

$(document).ready(() => {

    // Sliders
    // $('.reviews__wrapper').not('.slick-initialized').slick({
    //     infinite: false,
    //     slidesToShow: 3,
    //     slidesToScroll: 1,
    //     speed: 500,
    //     dots: true,
    //     arrows: true,
    //     responsive: [
    //         {
    //             breakpoint: 992,
    //             settings: {
    //                 arrows: false,
    //                 slidesToShow: 2,
    //             }
    //         },
    //         {
    //             breakpoint: 640,
    //             settings: {
    //                 arrows: false,
    //                 slidesToShow: 1,
    //             }
    //         }
    //     ]
    // });

    // $('.product-cover').not('.slick-initialized').slick({
    //     infinite: false,
    //     slidesToShow: 1,
    //     slidesToScroll: 1,
    //     variableWidth: true,
    //     speed: 500,
    //     dots: true,
    //     arrows: true,
    //     responsive: [
    //         {
    //             breakpoint: 640,
    //             settings: {
    //                 arrows: false,
    //             }
    //         }
    //     ]
    // });

    // $(document).ajaxSuccess(function(){
    //     $('.product-cover').not('.slick-initialized').slick({
    //         infinite: false,
    //         slidesToShow: 1,
    //         slidesToScroll: 1,
    //         variableWidth: true,
    //         speed: 500,
    //         dots: true,
    //         arrows: true,
    //         responsive: [
    //             {
    //                 breakpoint: 640,
    //                 settings: {
    //                     arrows: false,
    //                 }
    //             }
    //         ]
    //     });
    // });

    $('.page-home .featured-products .products').not('.slick-initialized').slick({
        infinite: false,
        slidesToShow: 5,
        slidesToScroll: 1,
        speed: 500,
        dots: false,
        arrows: true,
        responsive: [
            {
                breakpoint: 1200,
                settings: {
                    slidesToShow: 4,
                }
            },
            {
                breakpoint: 691,
                settings: {
                    slidesToShow: 3,
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 2,
                }
            },
        ]
    });
  
    $('.popular-categories__wrapper').not('.slick-initialized').slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        speed: 500,
        dots: false,
        arrows: true,
        responsive: [
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 3,
                }
            },
            {
                breakpoint: 641,
                settings: {
                    slidesToShow: 2,
                    dots: true,
                    arrows: false,
                }
            }
        ]
    });

});
