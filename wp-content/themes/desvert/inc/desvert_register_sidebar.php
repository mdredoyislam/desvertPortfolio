<?php
function desvert_widgets_init() {
	register_sidebar( 
        array(
            'name'          => __( 'Footer Sidebar 1', 'desvert' ),
            'id'            => 'footer-sidebar-1',
            'description'   => __( 'DesVert Footer Sitebar 1', 'desvert' ),
            'before_widget' => '<div class="footer-widgets footer-nav-sec">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3>',
            'after_title'   => '</h3>',
        ) 
    );
    register_sidebar( 
        array(
            'name'          => __( 'Blog Sidebar', 'desvert' ),
            'id'            => 'blog-sidebar',
            'description'   => __( 'DesVert Blog Sitebar', 'desvert' ),
            'before_widget' => '<div class="blog-widgets">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3>',
            'after_title'   => '</h3>',
        ) 
    );
}
add_action('widgets_init', 'desvert_widgets_init');