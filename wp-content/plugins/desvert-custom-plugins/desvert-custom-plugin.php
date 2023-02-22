<?php
/**
 * Plugin Name: DesVert Custom Plugins
 * Description: DesVert Custom plugins & Register DesVert Theme Extra Options.
 * Plugin URI:  https://redoyislam.xyz/desvert
 * Version:     1.0.0
 * Author:      MD REDOY ISLAM
 * Author URI:  https://redoyislam.xyz
 * Text Domain: desvert
 * Domain Path: /languages
 */


// Register Testimonial Post Type
function testimonial_post_type() {
	$labels = array(
		'name'                  => _x( 'Testimonials', 'Post Type General Name', 'desvert' ),
		'singular_name'         => _x( 'Testimonial', 'Post Type Singular Name', 'desvert' ),
		'menu_name'             => __( 'Testimonials', 'desvert' ),
		'name_admin_bar'        => __( 'Testimonial', 'desvert' ),
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
		'label'                 => __( 'Testimonials', 'desvert' ),
		'description'           => __( 'Post Type Description', 'desvert' ),
		'labels'                => $labels,
		'supports'              => array( 'editor', 'thumbnail', 'comments', 'trackbacks', 'revisions', 'custom-fields', 'page-attributes', 'post-formats' ),
		'taxonomies'            => array( 'test_category', 'post_tag' ),
		'hierarchical'          => true,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 5,
		'menu_icon'             => 'dashicons-editor-quote',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => true,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'testimonials', $args );

}
add_action( 'init', 'testimonial_post_type', 0 );

// Register Custom Taxonomy
function testimonial_taxonomy() {

	$labels = array(
		'name'                       => _x( 'Test Categories', 'Taxonomy General Name', 'desvert' ),
		'singular_name'              => _x( 'Test Category', 'Taxonomy Singular Name', 'desvert' ),
		'menu_name'                  => __( 'Test Categories', 'desvert' ),
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
	register_taxonomy( 'test_category', array( 'testimonials' ), $args );

}
add_action( 'init', 'testimonial_taxonomy', 0 );