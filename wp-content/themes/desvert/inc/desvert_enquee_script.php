<?php
/**
 * Enqueue scripts and styles.
 */
function desvert_scripts() {
    //DesVert Css All File Enquee
    wp_enqueue_style( "bootstrap", get_theme_file_uri( "/css/bootstrap.min.css" ), null, "1.0" );
    wp_enqueue_style( "heebo-font", '//fonts.googleapis.com/css2?family=Heebo:wght@300;400;500;600;700;800;900&display=swap', null, "1.0" );
    //wp_enqueue_style( "font-awesome", get_theme_file_uri( "/css/all.min.css" ), null, "1.0" );
    wp_enqueue_style( "owl-carousel", get_theme_file_uri( "/vendors/owl-carousel/owl.carousel.min.css" ), null, "1.0" );
    wp_enqueue_style( "simpleLightbox", get_theme_file_uri( "/vendors/lightbox/simpleLightbox.css" ), null, "1.0" );
    //wp_enqueue_style( "nice-select", get_theme_file_uri( "/vendors/nice-select/css/nice-select.css" ), null, "1.0" );
    //wp_enqueue_style( "animate", get_theme_file_uri( "/vendors/animate-css/animate.css" ), null, "1.0" );
    //wp_enqueue_style( "jquery-ui", get_theme_file_uri( "/vendors/jquery-ui/jquery-ui.css" ), null, "1.0" );

    wp_enqueue_style( 'desvert-style', get_stylesheet_uri(), array(), VERSION );
	wp_style_add_data( 'desvert-style', 'rtl', 'replace' );

    //DesVert Javascript All File Enquees
	wp_enqueue_script( 'desvert-navigation', get_template_directory_uri() . '/js/navigation.js', array(), VERSION, true );
    
    wp_enqueue_script( "jquery-3.2.1", get_theme_file_uri( "/js/jquery-3.2.1.min.js" ), array( "jquery" ), "1.0", true );
    wp_enqueue_script( "popper", get_theme_file_uri( "/js/popper.js" ), array( "jquery" ), "1.0", true );
    wp_enqueue_script( "bootstrap", get_theme_file_uri( "/js/bootstrap.min.js" ), array( "jquery" ), "1.0", true );
    wp_enqueue_script( "bootstrap-buldle", get_theme_file_uri( "/js/bootstrap.bundle.min.js" ), array( "jquery" ), "1.0", true );
    wp_enqueue_script( "font-awesome", get_theme_file_uri( "/js/all.min.js" ), array( "jquery" ), "1.0", true );
    //wp_enqueue_script( "stellar", get_theme_file_uri( "/js/stelar.js" ), array( "jquery" ), "1.0", true );
    wp_enqueue_script( "simpleLightbox", get_theme_file_uri( "/vendors/lightbox/simpleLightbox.min.js" ), array( "jquery" ), "1.0", true );
    //wp_enqueue_script( "nice-select", get_theme_file_uri( "/vendors/nice-select/js/jquery.nice-select.min.js" ), array( "jquery" ), "1.0", true );
    wp_enqueue_script( "imagesloaded", get_theme_file_uri( "/vendors/isotope/imagesloaded.pkgd.min.js" ), array( "jquery" ), "1.0", true );
    wp_enqueue_script( "isotope-min", get_theme_file_uri( "/vendors/isotope/isotope-min.js" ), array( "jquery" ), "1.0", true );
    wp_enqueue_script( "owl-carousel", get_theme_file_uri( "/vendors/owl-carousel/owl.carousel.min.js" ), array( "jquery" ), "1.0", true );
    wp_enqueue_script( "Counter-Up", get_theme_file_uri( "/js/jquery.counterup.js" ), array( "jquery" ), "1.0", true );
    wp_enqueue_script( "waypoints", get_theme_file_uri( "/js/jquery.waypoints.js" ), array( "jquery" ), "1.0", true );
    //wp_enqueue_script( "jquery.ajaxchimp", get_theme_file_uri( "/js/jquery.ajaxchimp.min.js" ), array( "jquery" ), "1.0", true );
    //wp_enqueue_script( "mail-script", get_theme_file_uri( "/js/mail-script.js" ), array( "jquery" ), "1.0", true );
    //wp_enqueue_script( "jquery-ui", get_theme_file_uri( "/vendors/jquery-ui/jquery-ui.js" ), array( "jquery" ), "1.0", true );
    wp_enqueue_script( "theme", get_theme_file_uri( "/js/theme.js" ), array( "jquery" ), "1.0", true );
    wp_enqueue_script( "custom", get_theme_file_uri( "/js/custom.js" ), array( "jquery" ), "1.0", true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'desvert_scripts' );