<?php
require_once( get_theme_file_path( 'inc/tgm.php' ) );
require get_template_directory()."/inc/desvert_theme_setup.php";
require get_template_directory()."/inc/desvert_enquee_script.php";
require get_template_directory()."/inc/desvert_register_sidebar.php";
require get_template_directory()."/inc/desvert_menu_filter.php";
require get_template_directory()."/inc/desvert_custom_header.php";
require get_template_directory()."/lib/redux-core/framework.php";
require get_template_directory()."/lib/sample/config.php";
//Redux Plugin Include
//require ( get_theme_file_path('../../plugins/redoy-protfolio-settings/redux-core/framework.php') );
//require ( get_theme_file_path('../../plugins/redoy-protfolio-settings/sample/config.php') );

// Register Custom Post Type
function custom_post_type() {

	$labels = array(
		'name'                  => _x( 'DesVert Service', 'Post Type General Name', 'desvert' ),
		'singular_name'         => _x( 'DesVert Service', 'Post Type Singular Name', 'desvert' ),
		'menu_name'             => __( 'DesVert Service', 'desvert' ),
		'name_admin_bar'        => __( 'DesVert Service', 'desvert' ),
		'archives'              => __( 'Item Archives', 'desvert' ),
		'attributes'            => __( 'Item Attributes', 'desvert' ),
		'parent_item_colon'     => __( 'Parent Item:', 'desvert' ),
		'all_items'             => __( 'All Items', 'desvert' ),
		'add_new_item'          => __( 'Add New Item', 'desvert' ),
		'add_new'               => __( 'Add New', 'desvert' ),
		'new_item'              => __( 'New Item', 'desvert' ),
		'edit_item'             => __( 'Edit Item', 'desvert' ),
		'update_item'           => __( 'Update Item', 'desvert' ),
		'view_item'             => __( 'View Item', 'desvert' ),
		'view_items'            => __( 'View Items', 'desvert' ),
		'search_items'          => __( 'Search Item', 'desvert' ),
		'not_found'             => __( 'Not found', 'desvert' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'desvert' ),
		'featured_image'        => __( 'Featured Image', 'desvert' ),
		'set_featured_image'    => __( 'Set featured image', 'desvert' ),
		'remove_featured_image' => __( 'Remove featured image', 'desvert' ),
		'use_featured_image'    => __( 'Use as featured image', 'desvert' ),
		'insert_into_item'      => __( 'Insert into item', 'desvert' ),
		'uploaded_to_this_item' => __( 'Uploaded to this item', 'desvert' ),
		'items_list'            => __( 'Items list', 'desvert' ),
		'items_list_navigation' => __( 'Items list navigation', 'desvert' ),
		'filter_items_list'     => __( 'Filter items list', 'desvert' ),
	);
	$args = array(
		'label'                 => __( 'DesVert Service', 'desvert' ),
		'description'           => __( 'Post Type Description', 'desvert' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'thumbnail', 'comments', 'trackbacks', 'revisions', 'custom-fields', 'page-attributes', 'post-formats' ),
		'taxonomies'            => array( 'service_category', 'post_tag' ),
		'hierarchical'          => true,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 5,
		'menu_icon'             => 'dashicons-admin-generic',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => true,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'desvert_services', $args );

}
add_action( 'init', 'custom_post_type', 0 );
// Register Custom Taxonomy
function custom_taxonomy() {

	$labels = array(
		'name'                       => _x( 'Services Categories', 'Taxonomy General Name', 'desvert' ),
		'singular_name'              => _x( 'Services Category', 'Taxonomy Singular Name', 'desvert' ),
		'menu_name'                  => __( 'Services Categories', 'desvert' ),
		'all_items'                  => __( 'All Items', 'desvert' ),
		'parent_item'                => __( 'Parent Item', 'desvert' ),
		'parent_item_colon'          => __( 'Parent Item:', 'desvert' ),
		'new_item_name'              => __( 'New Item Name', 'desvert' ),
		'add_new_item'               => __( 'Add New Item', 'desvert' ),
		'edit_item'                  => __( 'Edit Item', 'desvert' ),
		'update_item'                => __( 'Update Item', 'desvert' ),
		'view_item'                  => __( 'View Item', 'desvert' ),
		'separate_items_with_commas' => __( 'Separate items with commas', 'desvert' ),
		'add_or_remove_items'        => __( 'Add or remove items', 'desvert' ),
		'choose_from_most_used'      => __( 'Choose from the most used', 'desvert' ),
		'popular_items'              => __( 'Popular Items', 'desvert' ),
		'search_items'               => __( 'Search Items', 'desvert' ),
		'not_found'                  => __( 'Not Found', 'desvert' ),
		'no_terms'                   => __( 'No items', 'desvert' ),
		'items_list'                 => __( 'Items list', 'desvert' ),
		'items_list_navigation'      => __( 'Items list navigation', 'desvert' ),
	);
	$args = array(
		'labels'                     => $labels,
		'hierarchical'               => true,
		'public'                     => true,
		'show_ui'                    => true,
		'show_admin_column'          => true,
		'show_in_nav_menus'          => true,
		'show_tagcloud'              => true,
	);
	register_taxonomy( 'service_category', array( 'desvert_services' ), $args );

}
add_action( 'init', 'custom_taxonomy', 0 );