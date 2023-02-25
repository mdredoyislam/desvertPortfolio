<?php
function desvert_widgets_init() {
	register_sidebar( 
        array(
            'name'          => __( 'Footer Sidebar 1', 'eiser' ),
            'id'            => 'footer-sidebar-1',
            'description'   => __( 'DesVert Footer Sitebar 1', 'eiser' ),
            'before_widget' => '<div class="footer-widgets footer-nav-sec">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3>',
            'after_title'   => '</h3>',
        ) 
    );
}
add_action('widgets_init', 'desvert_widgets_init');