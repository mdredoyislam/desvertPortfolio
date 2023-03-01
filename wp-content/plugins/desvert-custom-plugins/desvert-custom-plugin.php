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


// Register Projects Post Type
function projects_post_type() {
	$labels = array(
		'name'                  => _x( 'Our Projects', 'Post Type General Name', 'desvert' ),
		'singular_name'         => _x( 'Our Project', 'Post Type Singular Name', 'desvert' ),
		'menu_name'             => __( 'Our Projects', 'desvert' ),
		'name_admin_bar'        => __( 'Our Projects', 'desvert' ),
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
		'label'                 => __( 'Our Projects', 'desvert' ),
		'description'           => __( 'Post Type Description', 'desvert' ),
		'labels'                => $labels,
		'supports'              => array( 'editor', 'thumbnail', 'comments', 'trackbacks', 'revisions', 'custom-fields', 'page-attributes', 'post-formats' ),
		'taxonomies'            => array( 'project_category', 'post_tag' ),
		'hierarchical'          => true,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 5,
		'menu_icon'             => 'dashicons-open-folder',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => true,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'projects', $args );

}
add_action( 'init', 'projects_post_type', 0 );

// Register Project Custom Taxonomy
function projects_taxonomy() {

	$labels = array(
		'name'                       => _x( 'Project Category', 'Taxonomy General Name', 'desvert' ),
		'singular_name'              => _x( 'Project Category', 'Taxonomy Singular Name', 'desvert' ),
		'menu_name'                  => __( 'Project Category', 'desvert' ),
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
	register_taxonomy( 'project_category', array( 'projects' ), $args );

}
add_action( 'init', 'projects_taxonomy', 0 );

// Register Team Post Type
function teams_post_type() {
	$labels = array(
		'name'                  => _x( 'Our Teams', 'Post Type General Name', 'desvert' ),
		'singular_name'         => _x( 'Our Team', 'Post Type Singular Name', 'desvert' ),
		'menu_name'             => __( 'Our Teams', 'desvert' ),
		'name_admin_bar'        => __( 'Our Teams', 'desvert' ),
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
		'featured_image'        => __( 'Profile Image', 'desvert' ),
		'set_featured_image'    => __( 'Set profile image', 'desvert' ),
		'remove_featured_image' => __( 'Remove profile image', 'desvert' ),
		'use_featured_image'    => __( 'Use as profile image', 'desvert' ),
		'insert_into_item'      => __( 'Insert into item', 'desvert' ),
		'uploaded_to_this_item' => __( 'Uploaded to this item', 'desvert' ),
		'items_list'            => __( 'Items list', 'desvert' ),
		'items_list_navigation' => __( 'Items list navigation', 'desvert' ),
		'filter_items_list'     => __( 'Filter items list', 'desvert' ),
	);
	$args = array(
		'label'                 => __( 'Our Teams', 'desvert' ),
		'description'           => __( 'Post Type Description', 'desvert' ),
		'labels'                => $labels,
		'supports'              => array( 'title','editor', 'thumbnail', 'comments', 'trackbacks', 'revisions', 'custom-fields', 'page-attributes', 'post-formats' ),
		'taxonomies'            => array( 'team_taxonomy', 'post_tag' ),
		'hierarchical'          => true,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 5,
		'menu_icon'             => 'dashicons-open-folder',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => true,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'teams', $args );

}
add_action( 'init', 'teams_post_type', 0 );

// Register Team Custom Taxonomy
function team_taxonomy() {

	$labels = array(
		'name'                       => _x( 'Team Category', 'Taxonomy General Name', 'desvert' ),
		'singular_name'              => _x( 'Team Category', 'Taxonomy Singular Name', 'desvert' ),
		'menu_name'                  => __( 'Team Category', 'desvert' ),
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
	register_taxonomy( 'team_taxonomy', array( 'teams' ), $args );

}
add_action( 'init', 'team_taxonomy', 0 );

// Register Case Post Type
function case_post_type() {
	$labels = array(
		'name'                  => _x( 'Case Studies', 'Post Type General Name', 'desvert' ),
		'singular_name'         => _x( 'Case Studie', 'Post Type Singular Name', 'desvert' ),
		'menu_name'             => __( 'Case Studies', 'desvert' ),
		'name_admin_bar'        => __( 'Case Studies', 'desvert' ),
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
		'featured_image'        => __( 'Feature Image', 'desvert' ),
		'set_featured_image'    => __( 'Set Feature image', 'desvert' ),
		'remove_featured_image' => __( 'Remove Feature image', 'desvert' ),
		'use_featured_image'    => __( 'Use as Feature image', 'desvert' ),
		'insert_into_item'      => __( 'Insert into item', 'desvert' ),
		'uploaded_to_this_item' => __( 'Uploaded to this item', 'desvert' ),
		'items_list'            => __( 'Items list', 'desvert' ),
		'items_list_navigation' => __( 'Items list navigation', 'desvert' ),
		'filter_items_list'     => __( 'Filter items list', 'desvert' ),
	);
	$args = array(
		'label'                 => __( 'Case Studies', 'desvert' ),
		'description'           => __( 'Post Type Description', 'desvert' ),
		'labels'                => $labels,
		'supports'              => array( 'title','editor', 'thumbnail', 'comments', 'trackbacks', 'revisions', 'custom-fields', 'page-attributes', 'post-formats' ),
		'taxonomies'            => array( 'case_taxonomy', 'post_tag' ),
		'hierarchical'          => true,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 5,
		'menu_icon'             => 'dashicons-open-folder',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => true,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'case-studies', $args );

}
add_action( 'init', 'case_post_type', 0 );

// Register Custom Taxonomy
function case_taxonomy() {

	$labels = array(
		'name'                       => _x( 'Case Category', 'Taxonomy General Name', 'desvert' ),
		'singular_name'              => _x( 'Case Category', 'Taxonomy Singular Name', 'desvert' ),
		'menu_name'                  => __( 'Case Category', 'desvert' ),
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
	register_taxonomy( 'case_taxonomy', array( 'case-studies' ), $args );

}
add_action( 'init', 'case_taxonomy', 0 );


//ACF Field
if( function_exists('acf_add_local_field_group') ):

	acf_add_local_field_group(array(
		'key' => 'group_63fc27a370ef9',
		'title' => 'Services Category Thumb',
		'fields' => array(
			array(
				'key' => 'field_63fc27a36d70b',
				'label' => 'Services Category Thumb',
				'name' => 'services_category_thumb',
				'aria-label' => '',
				'type' => 'image',
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'return_format' => 'array',
				'library' => 'all',
				'min_width' => '',
				'min_height' => '',
				'min_size' => '',
				'max_width' => '',
				'max_height' => '',
				'max_size' => '',
				'mime_types' => '',
				'preview_size' => 'medium',
			),
		),
		'location' => array(
			array(
				array(
					'param' => 'taxonomy',
					'operator' => '==',
					'value' => 'service_category',
				),
			),
		),
		'menu_order' => 0,
		'position' => 'normal',
		'style' => 'default',
		'label_placement' => 'top',
		'instruction_placement' => 'label',
		'hide_on_screen' => '',
		'active' => true,
		'description' => '',
		'show_in_rest' => 0,
	));
	
	acf_add_local_field_group(array(
		'key' => 'group_63fdc5ed7a317',
		'title' => 'Team Extra Information',
		'fields' => array(
			array(
				'key' => 'field_63fdc5ed4ba64',
				'label' => 'Designation',
				'name' => 'designation',
				'aria-label' => '',
				'type' => 'text',
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'default_value' => 'Designation',
				'maxlength' => '',
				'placeholder' => '',
				'prepend' => '',
				'append' => '',
			),
		),
		'location' => array(
			array(
				array(
					'param' => 'post_type',
					'operator' => '==',
					'value' => 'teams',
				),
			),
		),
		'menu_order' => 0,
		'position' => 'normal',
		'style' => 'default',
		'label_placement' => 'top',
		'instruction_placement' => 'label',
		'hide_on_screen' => '',
		'active' => true,
		'description' => '',
		'show_in_rest' => 0,
	));
	
	acf_add_local_field_group(array(
		'key' => 'group_63f5c5eb32396',
		'title' => 'Testimonial Extra Info',
		'fields' => array(
			array(
				'key' => 'field_63f5c5eb4ad16',
				'label' => 'Client Name',
				'name' => 'client_name',
				'aria-label' => '',
				'type' => 'text',
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'default_value' => '',
				'maxlength' => '',
				'placeholder' => '',
				'prepend' => '',
				'append' => '',
			),
			array(
				'key' => 'field_63f5c6176972b',
				'label' => 'Client Designation',
				'name' => 'client_designation',
				'aria-label' => '',
				'type' => 'text',
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'default_value' => '',
				'maxlength' => '',
				'placeholder' => '',
				'prepend' => '',
				'append' => '',
			),
		),
		'location' => array(
			array(
				array(
					'param' => 'post_type',
					'operator' => '==',
					'value' => 'testimonials',
				),
			),
		),
		'menu_order' => 0,
		'position' => 'normal',
		'style' => 'default',
		'label_placement' => 'top',
		'instruction_placement' => 'label',
		'hide_on_screen' => '',
		'active' => true,
		'description' => '',
		'show_in_rest' => 0,
	));
	
	endif;		