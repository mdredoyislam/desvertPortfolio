<?php
function desvert_widgets_init() {
	register_sidebar( 
        array(
            'name'          => __( 'Blog Sidebar 1', 'eiser' ),
            'id'            => 'eiser-bloag-sidebar-1',
            'description'   => __( 'Ths is our blog sidebar 1 description', 'eiser' ),
            'before_widget' => '<aside class="single_sidebar_widget post_category_widget"><ul class="list cat-list">',
            'after_widget'  => '</ul></aside>',
            'before_title'  => '<h4 class="widget_title">',
            'after_title'   => '</h4>',
        ) 
    );
}