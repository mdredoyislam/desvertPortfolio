;(function($){
    "use strict"
    var nav_offset_top = jQuery('.site-header').height()+50; 
    /*-------------------------------------------------------------------------------
	  Navbar 
    -------------------------------------------------------------------------------*/ 

	//* Navbar Fixed  
    function navbarFixed(){
        if ( jQuery('.site-header').length ){ 
            jQuery(window).scroll(function() {
                var scroll = jQuery(window).scrollTop();   
                if (scroll >= nav_offset_top ) {
                    jQuery(".site-header").addClass("navbar-fixed-top");
                } else {
                    jQuery(".site-header").removeClass("navbar-fixed-top");
                }
            });
        };
    };
    navbarFixed();
    //DesVert Services Slider Function Start
    function servicesSlider(){
        $('.owl-carousel.services-slider').owlCarousel({
            loop:false,
            margin:0,
            items:1,
            dots: true,
            nav: false,
            responsiveClass: true,
            autoHeight: true,
            autoplayTimeout: 7000,
            smartSpeed: 800,
            autoplay: true,
        });
    }
    servicesSlider();
    //DesVert Services Slider Function End

    //DesVert Testtminial Slider Function Start
    function testimonialSlider(){
        var owl = jQuery('.owl-carousel');
        owl.owlCarousel({
            autoplay: 2000,
            items:1,
            nav:true,
            navText: ["<i class='fa fa-arrow-left'></i>","<i class='fa fa-arrow-right'></i>"],
            loop: true,
            onInitialized  : counter, //When the plugin has initialized.
            onTranslated : counter //When the translation of the stage has finished.
        });
        function counter(event) {
            var element   = event.target;         // DOM element, in this example .owl-carousel
            var items     = event.item.count;     // Number of items
            var item      = event.item.index + 1;     // Position of the current item
            
            // it loop is true then reset counter from 1
            if(item > items) {
            item = item - items
            }
            jQuery('#testslidecounter').html(item+" / "+items)
        }
    }
    testimonialSlider();
    //DesVert Testtminial Slider Function End

    //DesVert Counter Function Start
    function desvertCounter(){
        jQuery(".counterup").counterUp({time:3000});
    }
    desvertCounter();
    //DesVert Counter Function End

    //DesVert Light Function Start
    function desvertLightBox(){
        var gallery = jQuery('.portfolio-gallery-wrapper a').simpleLightbox();
        gallery.next();
    }
    desvertLightBox();
    //DesVert Light Function End

    //DesVert Popup Function Start
    function desverModalBox(){
        jQuery(".appoinment-btn").click(function(){
            jQuery(".modal").toggleClass("show");
        });
        jQuery(".close").click(function(){
            jQuery(".modal").removeClass("show");
        });
    }
    desverModalBox();
    //DesVert Popup Function End

    /* //DesVert gallery isotope Function Start
    function desvertGalleryMasonry(){
        jQuery('.portfolio-gallery-wrapper').isotope({
            itemSelector: '.portfolio-gallery-wrapper a', // use a separate class for itemSelector, other than .col-
            percentPosition: true,
            masonry: {
              columnWidth: '.grid-sizer'
            }
        });
    }
    desvertGalleryMasonry();
    //DesVert gallery isotope Function End */
    
    //DesVert Simple LightBox Function Start
    function desvertSimpleLightbox(){
        jQuery('.portfolio-gallery-wrapper a').simpleLightbox();
    }
    desvertSimpleLightbox();
    //DesVert Simple LightBox Function End
    

    //DesVert Popup Function Start
    function desverHumbargarNav(){
        jQuery("#humbargarbtn").click(function(){
            jQuery(".humbargur-nav").addClass("show");
        });
        jQuery("#closebtn").click(function(){
            jQuery(".humbargur-nav").removeClass("show");
        });

        jQuery(".appoinment-btn").click(function(){
            jQuery(".appoinment-poppup").addClass("show");
        });
        jQuery("#appoinment-close-btn").click(function(){
            jQuery(".appoinment-poppup").removeClass("show");
        });
    }
    desverHumbargarNav();
    //DesVert Popup Function End
    function desvertMagnificPopup(){
        jQuery('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
            disableOn: 700,
            type: 'iframe',
            mainClass: 'mfp-fade',
            removalDelay: 160,
            preloader: false,
            fixedContentPos: false
        });
    }
    desvertMagnificPopup();





    //------- Mailchimp js --------//  

    function mailChimp(){
        $('#mc_embed_signup').find('form').ajaxChimp();
    }
    mailChimp();
    
    /* ===== Parallax Effect===== */
	
	function parallaxEffect() {
    	$('.bg-parallax').parallax();
	}
	parallaxEffect();
    
    
    $('select').niceSelect();
    $('#datetimepicker11,#datetimepicker1').datetimepicker({
        daysOfWeekDisabled: [0, 6]
    });

    /*----------------------------------------------------*/
    /*  Google map js
    /*----------------------------------------------------*/
    
    if ( $('#mapBox').length ){
        var $lat = $('#mapBox').data('lat');
        var $lon = $('#mapBox').data('lon');
        var $zoom = $('#mapBox').data('zoom');
        var $marker = $('#mapBox').data('marker');
        var $info = $('#mapBox').data('info');
        var $markerLat = $('#mapBox').data('mlat');
        var $markerLon = $('#mapBox').data('mlon');
        var map = new GMaps({
        el: '#mapBox',
        lat: $lat,
        lng: $lon,
        scrollwheel: false,
        scaleControl: true,
        streetViewControl: false,
        panControl: true,
        disableDoubleClickZoom: true,
        mapTypeControl: false,
        zoom: $zoom,
            styles: [
                {
                    "featureType": "water",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "color": "#dcdfe6"
                        }
                    ]
                },
                {
                    "featureType": "transit",
                    "stylers": [
                        {
                            "color": "#808080"
                        },
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "geometry.stroke",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "color": "#dcdfe6"
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "color": "#ffffff"
                        }
                    ]
                },
                {
                    "featureType": "road.local",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "color": "#ffffff"
                        },
                        {
                            "weight": 1.8
                        }
                    ]
                },
                {
                    "featureType": "road.local",
                    "elementType": "geometry.stroke",
                    "stylers": [
                        {
                            "color": "#d7d7d7"
                        }
                    ]
                },
                {
                    "featureType": "poi",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "color": "#ebebeb"
                        }
                    ]
                },
                {
                    "featureType": "administrative",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#a7a7a7"
                        }
                    ]
                },
                {
                    "featureType": "road.arterial",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "color": "#ffffff"
                        }
                    ]
                },
                {
                    "featureType": "road.arterial",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "color": "#ffffff"
                        }
                    ]
                },
                {
                    "featureType": "landscape",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "color": "#efefef"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#696969"
                        }
                    ]
                },
                {
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "color": "#737373"
                        }
                    ]
                },
                {
                    "featureType": "poi",
                    "elementType": "labels.icon",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "poi",
                    "elementType": "labels",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "road.arterial",
                    "elementType": "geometry.stroke",
                    "stylers": [
                        {
                            "color": "#d6d6d6"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "labels.icon",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {},
                {
                    "featureType": "poi",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "color": "#dadada"
                        }
                    ]
                }
            ]
        });
    }

})(jQuery)