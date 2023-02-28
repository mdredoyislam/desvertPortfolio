<?php
//  to include in functions.php
function the_breadcrumb() {

    $sep = ' / ';

    if (!is_front_page()) {
	
	// Start the breadcrumb with a link to your homepage
        echo '<div class="breadcrumbs">';
        echo '<a href="';
        echo get_option('home');
        echo '">';
        echo "Home";
        echo '</a>' . $sep;
	
	// Check if the current page is a category, an archive or a single page. If so show the category or archive name.
        if (is_category() || is_single() ){
            the_category('title_li=');
        } elseif (is_archive() || is_single()){
            if ( is_day() ) {
                printf( __( '%s', 'desvert' ), get_the_date() );
            } elseif ( is_month() ) {
                printf( __( '%s', 'desvert' ), get_the_date( _x( 'F Y', 'monthly archives date format', 'desvert' ) ) );
            } elseif ( is_year() ) {
                printf( __( '%s', 'desvert' ), get_the_date( _x( 'Y', 'yearly archives date format', 'desvert' ) ) );
            } else {
                _e( 'Blog Archives', 'desvert' );
            }
        }
	
	// If the current page is a single post, show its title with the separator
        if (is_single()) {
            //echo $sep;
            echo " / ";
            the_title();
        }
	
	// If the current page is a static page, show its title.
        if (is_page()) {
            echo the_title();
        }
	
	// if you have a static page assigned to be you posts list page. It will find the title of the static page and display it. i.e Home >> Blog
        if (is_home()){
            global $post;
            $page_for_posts_id = get_option('page_for_posts');
            if ( $page_for_posts_id ) { 
                $post = get_post($page_for_posts_id);
                setup_postdata($post);
                the_title();
                rewind_posts();
            }
        }

        echo '</div>';
    }
}