<?php
/**
 * ReduxFramework Barebones Sample Config File
 * For full documentation, please visit: http://devs.redux.io/
 *
 * @package Redux Framework
 */

if ( ! class_exists( 'Redux' ) ) {
	return null;
}

// This is your option name where all the Redux data is stored.
$opt_name = 'redux_demo';

/**
 * GLOBAL ARGUMENTS
 * All the possible arguments for Redux.
 * For full documentation on arguments, please refer to: @link https://github.com/ReduxFramework/ReduxFramework/wiki/Arguments
 */

/**
 * ---> BEGIN ARGUMENTS
 */

$theme = wp_get_theme(); // For use with some settings. Not necessary.

$args = array(
	// REQUIRED!!  Change these values as you need/desire.
	'opt_name'                  => $opt_name,

	// Name that appears at the top of your panel.
	'display_name'              => $theme->get( 'Name' ),

	// Version that appears at the top of your panel.
	'display_version'           => $theme->get( 'Version' ),

	// Specify if the admin menu should appear or not. Options: menu or submenu (Under appearance only).
	'menu_type'                 => 'submenu',

	// Show the sections below the admin menu item or not.
	'allow_sub_menu'            => true,

	'menu_title'                => esc_html__( 'DesVert Theme', 'desvert' ),
	'page_title'                => esc_html__( 'DesVert Theme', 'desvert' ),

	// Disable this in case you want to create your own google fonts loader.
	'disable_google_fonts_link' => false,

	// Show the panel pages on the admin bar.
	'admin_bar'                 => true,

	// Choose an icon for the admin bar menu.
	'admin_bar_icon'            => 'dashicons-portfolio',

	// Choose an priority for the admin bar menu.
	'admin_bar_priority'        => 50,

	// Set a different name for your global variable other than the opt_name.
	'global_variable'           => 'desvert_opt',

	// Show the time the page took to load, etc.
	'dev_mode'                  => false,

	// Enable basic customizer support.
	'customizer'                => true,

	// Order where the menu appears in the admin area. If there is any conflict, something will not show. Warning.
	'page_priority'             => null,

	// For a full list of options, visit: @link http://codex.wordpress.org/Function_Reference/add_submenu_page#Parameters.
	'page_parent'               => 'themes.php',

	// Permissions needed to access the options panel.
	'page_permissions'          => 'manage_options',

	// Specify a custom URL to an icon.
	'menu_icon'                 => '',

	// Force your panel to always open to a specific tab (by id).
	'last_tab'                  => '',

	// Icon displayed in the admin panel next to your menu_title.
	'page_icon'                 => 'icon-themes',

	// Page slug used to denote the panel.
	'page_slug'                 => '_options',

	// On load save the defaults to DB before user clicks save or not.
	'save_defaults'             => true,

	// If true, shows the default value next to each field that is not the default value.
	'default_show'              => false,

	// What to print by the field's title if the value shown is default. Suggested: *.
	'default_mark'              => '',

	// Shows the Import/Export panel when not used as a field.
	'show_import_export'        => true,

	// CAREFUL -> These options are for advanced use only.
	'transient_time'            => 60 * MINUTE_IN_SECONDS,

	// Global shut-off for dynamic CSS output by the framework. Will also disable google fonts output.
	'output'                    => true,

	// Allows dynamic CSS to be generated for customizer and google fonts, but stops the dynamic CSS from going to the head.
	'output_tag'                => true,

	// FUTURE -> Not in use yet, but reserved or partially implemented. Use at your own risk.
	// possible: options, theme_mods, theme_mods_expanded, transient. Not fully functional, warning!
	'database'                  => '',

	// If you prefer not to use the CDN for Select2, Ace Editor, and others, you may download the Redux Vendor Support plugin yourself and run locally or embed it in your code.
	'use_cdn'                   => true,
	'compiler'                  => true,

	// Enable or disable flyout menus when hovering over a menu with submenus.
	'flyout_submenus'           => true,

	// Mode to display fonts (auto|block|swap|fallback|optional)
	// See: https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face/font-display
	'font_display'              => 'swap',

	// HINTS.
	'hints'                     => array(
		'icon'          => 'el el-question-sign',
		'icon_position' => 'right',
		'icon_color'    => 'lightgray',
		'icon_size'     => 'normal',
		'tip_style'     => array(
			'color'   => 'light',
			'shadow'  => true,
			'rounded' => false,
			'style'   => '',
		),
		'tip_position'  => array(
			'my' => 'top left',
			'at' => 'bottom right',
		),
		'tip_effect'    => array(
			'show' => array(
				'effect'   => 'slide',
				'duration' => '500',
				'event'    => 'mouseover',
			),
			'hide' => array(
				'effect'   => 'slide',
				'duration' => '500',
				'event'    => 'click mouseleave',
			),
		),
	),
);

// ADMIN BAR LINKS -> Setup custom links in the admin bar menu as external items.
$args['admin_bar_links'][] = array(
	'id'    => 'redux-docs',
	'href'  => '//devs.redux.io/',
	'title' => esc_html__( 'Documentation', 'desvert' ),
);

$args['admin_bar_links'][] = array(
	'id'    => 'redux-support',
	'href'  => '//github.com/ReduxFramework/redux-framework/issues',
	'title' => esc_html__( 'Support', 'desvert' ),
);

$args['admin_bar_links'][] = array(
	'id'    => 'redux-extensions',
	'href'  => 'redux.io/extensions',
	'title' => esc_html__( 'Extensions', 'desvert' ),
);

// SOCIAL ICONS -> Setup custom links in the footer for quick links in your panel footer icons.
$args['share_icons'][] = array(
	'url'   => '//www.facebook.com/DesVert',
	'title' => esc_html__( 'Like us on Facebook', 'desvert' ),
	'icon'  => 'el el-facebook',
);
$args['share_icons'][] = array(
	'url'   => '//www.linkedin.com/company/desvert/',
	'title' => esc_html__( 'Like us on Linkedin', 'desvert' ),
	'icon'  => 'el el-linkedin',
);
$args['share_icons'][] = array(
	'url'   => '//www.instagram.com/desvert05/',
	'title' => esc_html__( 'Like us on Instagram', 'desvert' ),
	'icon'  => 'el el-instagram',
);

// Add content after the form.
$args['footer_text'] = '<p>' . esc_html__( 'Copyright &copy; desvert Theme Develop By Redoy Islam', 'desvert' ) . '</p>';

Redux::set_args( $opt_name, $args );

/*
 * ---> END ARGUMENTS
 */

/*
 * ---> BEGIN HELP TABS
 */

$help_tabs = array(
	array(
		'id'      => 'redux-help-tab-1',
		'title'   => esc_html__( 'Theme Information 1', 'desvert' ),
		'content' => '<p>' . esc_html__( 'This is the tab content, HTML is allowed.', 'desvert' ) . '</p>',
	),

	array(
		'id'      => 'redux-help-tab-2',
		'title'   => esc_html__( 'Theme Information 2', 'desvert' ),
		'content' => '<p>' . esc_html__( 'This is the tab content, HTML is allowed.', 'desvert' ) . '</p>',
	),
);

Redux::set_help_tab( $opt_name, $help_tabs );

// Set the help sidebar.
$content = '<p>' . esc_html__( 'This is the sidebar content, HTML is allowed.', 'desvert' ) . '</p>';
Redux::set_help_sidebar( $opt_name, $content );

/*
 * <--- END HELP TABS
 */

/*
 *
 * ---> BEGIN SECTIONS
 *
 */

/* As of Redux 3.5+, there is an extensive API. This API can be used in a mix/match mode allowing for. */

/* -> START Basic Fields. */

$kses_exceptions = array(
	'a'      => array(
		'href' => array(),
	),
	'strong' => array(),
	'br'     => array(),
);
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'General Settings', 'desvert' ),
		'id'     => 'general-setting',
		'icon'   => 'el el-wrench',
		'fields' => array(
			array(
				'id'       => 'desvert-tagline-sub-title',
				'type'     => 'text',
				'title'    => esc_html__( 'DesVert Tag Line Subtitle', 'desvert' ),
				'description'     => esc_html__( 'DesVert Tag Line Subtitle', 'desvert' ),
			),
			array(
				'id'       => 'desvert-tagline-title',
				'type'     => 'textarea',
				'title'    => esc_html__( 'DesVert Tagline Title', 'desvert' ),
				'description'     => esc_html__( 'DesVert Tagline Title', 'desvert' ),
			),
			array(
				'id'       => 'color-scheme',
				'type'     => 'color',
				'title'    => esc_html__( 'Color Scheme', 'desvert' ),
			),
			array(
				'id'       => 'enable-preloader',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Enable Preloader', 'desvert' ),
				'options' => array(
						'0' => 'On', 
						'1' => 'Off',
					), 
				'default' => '0'
			),
			array(
				'id'       => 'select-rtl',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Select RTL', 'desvert' ),
				'options' => array(
						'0' => 'On', 
						'1' => 'Off',
					), 
				'default' => '0'
			),
		),
	) 
);

//Logo Settings
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Logo Settings', 'desvert' ),
		'id'     => 'logo-setting',
		'icon'   => 'el el-cog',
		'fields' => array(
			array(
				'id'       => 'fav-icon',
				'type'     => 'media',
				'title'    => esc_html__( 'Favicon', 'desvert' ),
				'subtitle'     => esc_html__( 'Insert site favicon image', 'desvert' ),
			),
			array(
				'id'       => 'enable-home-one-logo',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Enable Home One Logo', 'desvert' ),
				'options' => array(
						'0' => 'On', 
						'1' => 'Off',
					), 
				'default' => '0'
			),
			array(
				'id'       => 'home-one-logo',
				'type'     => 'media',
				'title'    => esc_html__( 'Home one Logo', 'desvert' ),
				'subtitle'     => esc_html__( 'Insert site Home One logo image', 'desvert' ),
			),
			array(
				'id'       => 'home-one-logo-dimentions',
				'type'     => 'dimensions',
				'title'    => esc_html__( 'Home one Logo Dimentions', 'desvert' ),
				'subtitle'     => esc_html__( 'Select Home one Logo Dimentions', 'desvert' ),
				'units'    => array('em','px','%'),
				'default'  => array(
					'Width'   => '200', 
					'Height'  => '100'
				),
			),
			array(
				'id'       => 'enable-home-one-mobile-logo',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Enable Home one Mobile Logo', 'desvert' ),
				'options' => array(
						'0' => 'On', 
						'1' => 'Off',
					), 
				'default' => '0'
			),
			array(
				'id'       => 'home-one-mobile-logo',
				'type'     => 'media',
				'title'    => esc_html__( 'Home One Mobile Logo', 'desvert' ),
				'subtitle'     => esc_html__( 'Insert site Home One Mobile logo image', 'desvert' ),
			),
		),
	) 
);

//Header Settings
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Header Settings', 'desvert' ),
		'id'     => 'header-setting',
		'icon'   => 'el el-cog',
		'fields' => array(
			array(
				'id'       => 'desvert-header-info-title',
				'type'     => 'text',
				'title'    => esc_html__( 'DesVert Info Title', 'desvert' ),
				'description'     => esc_html__( 'DesVert Info Title', 'desvert' ),
			),
			array(
				'id'       => 'desvert-header-info-desc',
				'type'     => 'editor',
				'title'    => esc_html__( 'DesVert Info Description', 'desvert' ),
				'description'     => esc_html__( 'DesVert Info Description', 'desvert' ),
			),
			array(
				'id'       => 'top-header-show',
				'type'     => 'switch',
				'title'    => esc_html__( 'Top Header Show', 'desvert' ),
				'desc'     => esc_html__( 'Enable Top Header Show', 'desvert' ),
			),
			array(
				'id'       => 'phone-number',
				'type'     => 'text',
				'title'    => esc_html__( 'Phone Number', 'desvert' ),
				'desc'     => esc_html__( 'Enter Number', 'desvert' ),
				'default'   => '+880 1714862596',
			),
			array(
				'id'       => 'email-address',
				'type'     => 'text',
				'title'    => esc_html__( 'Email Address', 'desvert' ),
				'desc'     => esc_html__( 'Enter Email Address', 'desvert' ),
				'default'   => 'support@desvert.com',
			),
			array(
				'id'       => 'country-title',
				'type'     => 'text',
				'title'    => esc_html__( 'Country Title', 'desvert' ),
				'desc'     => esc_html__( 'Enter Country Title', 'desvert' ),
				'default'   => '',
			),
		),
	) 
);
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Header Social Settings', 'desvert' ),
		'id'     => 'header-social-setting',
		'icon'   => 'el el-chevron-right',
		'subsection'       => true,
		'fields' => array(
			array(
				'id'       => 'desvert-social-list',
				'type'     => 'sortable',
				'title'    => esc_html__( 'DesVert Social List', 'desvert' ),
				'label'    => true,
				'options'  => array(
					'facebook'      => 'facebook url here',
					'linkedin'      => 'linkedin url here',
					'pintarest'     => 'pintarest url here',
					'instagram'     => 'instagram url here',
				),
			),
		),
	),
);
//Header Settings
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Footer Settings', 'desvert' ),
		'id'     => 'footer-setting',
		'icon'   => 'el el-cog',
		'fields' => array(
			array(
				'id'       => 'footer-source-type',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Footer Source Type', 'desvert' ),
				'options' => array(
						'0' => 'Default', 
						'1' => 'Elementor',
					), 
				'default' => '0'
			),
			array(
				'id'       => 'choose-footer-styles',
				'type'     => 'media',
				'title'    => esc_html__( 'Choose Footer Styles', 'desvert' ),
				'subtitle'     => esc_html__( 'Choose Footer Styles', 'desvert' ),
				'required' => array('footer-source-type','equals','0')
			),
			array(
				'id'       => 'elementor-footer-template',
				'type'     => 'Select',
				'title'    => esc_html__( 'Footer Template', 'desvert' ),
				'desc'     => esc_html__( 'Footer Template', 'desvert' ),
				'required' => array('footer-source-type','equals','1'),
				'options'  => array(
						'1' => 'Membership Inquiry',
						'2' => 'Membership Inquiry',
						'3' => 'Membership Inquiry'
					),
				'default'  => '2',
			),
		),
	),
);
//Home Page Settings
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Home Page Settings', 'desvert' ),
		'id'     => 'home-page-setting',
		'icon'   => 'el el-home',
		'fields' => array(
			array(
				'id'       => 'choose-footer-styles',
				'type'     => 'media',
				'title'    => esc_html__( 'Choose Footer Styles', 'desvert' ),
				'subtitle'     => esc_html__( 'Choose Footer Styles', 'desvert' ),
				'required' => array('footer-source-type','equals','0')
			),
			array(
				'id'       => 'elementor-footer-template',
				'type'     => 'Select',
				'title'    => esc_html__( 'Footer Template', 'desvert' ),
				'desc'     => esc_html__( 'Footer Template', 'desvert' ),
				'required' => array('footer-source-type','equals','1'),
				'options'  => array(
						'1' => 'Membership Inquiry',
						'2' => 'Membership Inquiry',
						'3' => 'Membership Inquiry'
					),
				'default'  => '2',
			),
		),
	),
);
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Home Appoinment options', 'desvert' ),
		'id'     => 'home-appoinment-options',
		'icon'   => 'el el-chevron-right',
		'subsection'       => true,
		'fields' => array(
			array(
				'id'       => 'desvert-appoinment-subtitle',
				'type'     => 'text',
				'title'    => esc_html__( 'Appoinment Sub Title', 'desvert' ),
				'desc'     => esc_html__( 'Appoinment Sub Title Here' ),
			),
			array(
				'id'       => 'desvert-appoinment-title',
				'type'     => 'textarea',
				'title'    => esc_html__( 'Appoinment Title', 'desvert' ),
				'desc'     => esc_html__( 'Appoinment Title Here', 'desvert' ),
			),
			array(
				'id'       => 'desvert-appoinment-form-subtitle',
				'type'     => 'text',
				'title'    => esc_html__( 'Appoinment Form Subtitle', 'desvert' ),
				'desc'     => esc_html__( 'Appoinment Form Subtitle Here', 'desvert' ),
			),
			array(
				'id'       => 'desvert-appoinment-form-title',
				'type'     => 'text',
				'title'    => esc_html__( 'Appoinment Form Title', 'desvert' ),
				'desc'     => esc_html__( 'Appoinment Form Title Here', 'desvert' ),
			),
			array(
				'id'       => 'desvert-appoinment-form-short-code',
				'type'     => 'text',
				'title'    => esc_html__( 'Appoinment Form Short Code', 'desvert' ),
				'desc'     => esc_html__( 'Appoinment Form Short Code Here', 'desvert' ),
			),
			array(
				'id'       => 'desvert-appoinment-button-text',
				'type'     => 'text',
				'title'    => esc_html__( 'Appoinment Form Button Text', 'desvert' ),
				'desc'     => esc_html__( 'Appoinment Form Button Text Here', 'desvert' ),
			),
		),
	),
);
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Home Portfolio Gallery', 'desvert' ),
		'id'     => 'home-gallery-options',
		'icon'   => 'el el-chevron-right',
		'subsection'       => true,
		'fields' => array(
			array(
				'id'       => 'desvert-gallery-title',
				'type'     => 'textarea',
				'title'    => esc_html__( 'DesVert Gallery Title', 'desvert' ),
				'desc'     => esc_html__( 'DesVert Gallery Title Here','desvert' ),
			),
			array(
				'id'       => 'desvert-gallery-btn-text',
				'type'     => 'text',
				'title'    => esc_html__( 'DesVert Gallery BTN Text', 'desvert' ),
				'desc'     => esc_html__( 'DesVert Gallery BTN Text Here', 'desvert' ),
			),
			array(
				'id'       => 'desvert-gallery-btn-url',
				'type'     => 'text',
				'title'    => esc_html__( 'DesVert Gallery BTN url', 'desvert' ),
				'desc'     => esc_html__( 'DesVert Gallery BTN url Here', 'desvert' ),
			),
			array(
				'id'       => 'desvert-gallery',
				'type'     => 'gallery',
				'title'    => esc_html__( 'DesVert Gallery', 'desvert' ),
				'desc'     => esc_html__( 'DesVert Gallery', 'desvert' ),
			),
		),
	),
);
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'DesVert Testimonials', 'desvert' ),
		'id'     => 'desvert-testimonials',
		'icon'   => 'el el-chevron-right',
		'subsection'       => true,
		'fields' => array(
			array(
				'id'       => 'testimonials-subtitle',
				'type'     => 'text',
				'title'    => esc_html__( 'Testimonial Sub Title', 'desvert' ),
				'desc'     => esc_html__( 'Testimonial Sub Title Here','desvert' ),
			),
			array(
				'id'       => 'testimonials-title',
				'type'     => 'text',
				'title'    => esc_html__( 'Testimonial Title', 'desvert' ),
				'desc'     => esc_html__( 'Testimonial Title Here','desvert' ),
			),
			array(
				'id'       => 'show-testimonials',
				'type'     => 'text',
				'title'    => esc_html__( 'Display Testimonial Items', 'desvert' ),
				'desc'    => esc_html__( 'Display Testimonial Items', 'desvert' ),
				'default' => 5,
			),
		),
	),
);
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'DesVert Counter Sections', 'desvert' ),
		'id'     => 'desvert-counter-section',
		'icon'   => 'el el-chevron-right',
		'subsection'       => true,
		'fields' => array(
			array(
				'id'       => 'counter-total-projects',
				'type'     => 'sortable',
				'title'    => esc_html__( 'Counter Total Projects', 'desvert' ),
				'subtitle'     => esc_html__( 'Counter Total Projects Here','desvert' ),
				'label'    => true,
				'options'  => array(
					'Counter Number'      => '120',
					'Projects Text'       => 'Projects',
					'Completed Text'      => 'Completed',
					'Before Key'          => '',
					'After Key'           => '$',
				),
			),
			array(
				'id'       => 'served-customers',
				'type'     => 'sortable',
				'title'    => esc_html__( 'Served Customers', 'desvert' ),
				'subtitle'     => esc_html__( 'Served Customers Here','desvert' ),
				'label'    => true,
				'options'  => array(
					'Counter Number'     => '100',
					'Served Text'        => 'Served',
					'Customer Text'      => 'Customer',
					'Before Key'         => '',
					'After Key'          => '$',
				),
			),
			array(
				'id'       => 'master-minds',
				'type'     => 'sortable',
				'title'    => esc_html__( 'Master Minds', 'desvert' ),
				'subtitle'     => esc_html__( 'Master Minds Here','desvert' ),
				'label'    => true,
				'options'  => array(
					'Counter Number'     => '250',
					'Master Text'        => 'Master',
					'Minds Text'         => 'Minds',
					'Before Key'         => '',
					'After Key'          => '$',
				),
			),
		),
	),
);
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'DesVert Concerns', 'desvert' ),
		'id'     => 'desvert-concerns',
		'icon'   => 'el el-chevron-right',
		'subsection'       => true,
		'fields' => array(
			array(
				'id'       => 'desvert-concerns-title',
				'type'     => 'text',
				'title'    => esc_html__( 'Concerns Title', 'desvert' ),
				'subtitle'     => esc_html__( 'Concerns Title Here','desvert' ),
			),
			array(
				'id'       => 'desvert-partners',
				'type'     => 'gallery',
				'title'    => esc_html__( 'DesVert Partners', 'desvert' ),
				'subtitle'     => esc_html__( 'DesVert Partners Here','desvert' ),
			),
		),
	),
);
//Blog Page Settings
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Blog Page Settings', 'desvert' ),
		'id'     => 'blog-page-setting',
		'icon'   => 'el el-indent-left',
		'fields' => array(
			array(
				'id'       => 'blog-page-source',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Blog Page Source', 'desvert' ),
				'options' => array(
						'0' => 'Default', 
						'1' => 'Elementor',
					), 
				'default' => '0'
			),
			array(
				'id'       => 'show-post-date',
				'type'     => 'switch',
				'title'    => esc_html__( 'Show Post Date', 'desvert' ),
				'desc'     => esc_html__( 'Show Post Date', 'desvert' ),
				'required' => array('blog-page-source','equals','0'),
				'default'   => '',
			),
			array(
				'id'       => 'show-post-comments',
				'type'     => 'switch',
				'title'    => esc_html__( 'Show Post Comments', 'desvert' ),
				'desc'     => esc_html__( 'Show Post Comments', 'desvert' ),
				'required' => array('blog-page-source','equals','0'),
				'default'   => '',
			),
			array(
				'id'       => 'show-post-read-more',
				'type'     => 'switch',
				'title'    => esc_html__( 'Show Post Read More', 'desvert' ),
				'desc'     => esc_html__( 'Show Post Read More', 'desvert' ),
				'required' => array('blog-page-source','equals','0'),
				'default'   => '',
			),
			array(
				'id'       => 'post-read-more-text',
				'type'     => 'text',
				'title'    => esc_html__( 'Post Read More Text', 'desvert' ),
				'desc'     => esc_html__( 'Post Read More Text', 'desvert' ),
				'required' => array('blog-page-source','equals','0'),
				'default'   => 'Read More',
			),
			array(
				'id'       => 'elementor-blog-template',
				'type'     => 'Select',
				'title'    => esc_html__( 'Template', 'desvert' ),
				'desc'     => esc_html__( 'Template', 'desvert' ),
				'required' => array('blog-page-source','equals','1'),
				'options'  => array(
						'1' => 'Membership Inquiry',
						'2' => 'Membership Inquiry',
						'3' => 'Membership Inquiry',
					),
				'default'  => '2',
			),
		),
	),
);
//Sub Page Settings
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Tag Page Settings', 'desvert' ),
		'id'     => 'tag-page-setting',
		'icon'   => 'el el-chevron-right',
		'subsection'       => true,
		'fields' => array(
			array(
				'id'       => 'tag-source-type',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Tag Source Type', 'desvert' ),
				'options' => array(
						'0' => 'Default', 
						'1' => 'Elementor',
					), 
				'default' => '0'
			),
		),
	),
);
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Archive Page Settings', 'desvert' ),
		'id'     => 'archive-page-setting',
		'icon'   => 'el el-chevron-right',
		'subsection'       => true,
		'fields' => array(
			array(
				'id'       => 'archive-source-type',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Archive Source Type', 'desvert' ),
				'options' => array(
						'0' => 'Default', 
						'1' => 'Elementor',
					), 
				'default' => '0'
			),
		),
	),
);
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Author Page Settings', 'desvert' ),
		'id'     => 'author-page-setting',
		'icon'   => 'el el-chevron-right',
		'subsection'       => true,
		'fields' => array(
			array(
				'id'       => 'author-source-type',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Author Source Type', 'desvert' ),
				'options' => array(
						'0' => 'Default', 
						'1' => 'Elementor',
					), 
				'default' => '0'
			),
		),
	),
);

Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Category Page Settings', 'desvert' ),
		'id'     => 'category-page-setting',
		'icon'   => 'el el-chevron-right',
		'subsection'       => true,
		'fields' => array(
			array(
				'id'       => 'category-source-type',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Category Source Type', 'desvert' ),
				'options' => array(
						'0' => 'Default', 
						'1' => 'Elementor',
					), 
				'default' => '0'
			),
		),
	),
);

Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Search Page Settings', 'desvert' ),
		'id'     => 'search-page-setting',
		'icon'   => 'el el-chevron-right',
		'subsection'       => true,
		'fields' => array(
			array(
				'id'       => 'search-source-type',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Search Source Type', 'desvert' ),
				'options' => array(
						'0' => 'Default', 
						'1' => 'Elementor',
					), 
				'default' => '0'
			),
		),
	),
);

Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( '404 Page Settings', 'desvert' ),
		'id'     => '404-page-setting',
		'icon'   => 'el el-chevron-right',
		'subsection'       => true,
		'fields' => array(
			array(
				'id'       => '404-source-type',
				'type'     => 'button_set',
				'title'    => esc_html__( '404 Source Type', 'desvert' ),
				'options' => array(
						'0' => 'Default', 
						'1' => 'Elementor',
					), 
				'default' => '0'
			),
		),
	),
);

Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Single Post Settings', 'desvert' ),
		'id'     => 'single-post-setting',
		'icon'   => 'el el-chevron-right',
		'subsection'       => true,
		'fields' => array(
			array(
				'id'       => 'single-post-source-type',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Single Post Source Type', 'desvert' ),
				'options' => array(
						'0' => 'Default', 
						'1' => 'Elementor',
					), 
				'default' => '0'
			),
		),
	),
);

//Language Settings
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Language Settings', 'desvert' ),
		'id'     => 'language-setting',
		'icon'   => 'el el-globe',
		'fields' => array(
			array(
				'id'       => 'blog-page-source-type',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Blog Page Source Type', 'desvert' ),
				'options' => array(
						'0' => 'Default', 
						'1' => 'Elementor',
					), 
				'default' => '0'
			),
		),
	),
);
//Custom Sidebar Settings
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Custom Sidebar Settings', 'desvert' ),
		'id'     => 'custom-sidebar-setting',
		'icon'   => 'el el-indent-left',
		'fields' => array(
			array(
				'id'       => 'blog-page-source-type',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Blog Page Source Type', 'desvert' ),
				'options' => array(
						'0' => 'Default', 
						'1' => 'Elementor',
					), 
				'default' => '0'
			),
		),
	),
);
//Custom Font Settings
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Custom Font Settings', 'desvert' ),
		'id'     => 'custom-Font-setting',
		'icon'   => 'el el-font',
		'fields' => array(
			array(
				'id'       => 'blog-page-source-type',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Blog Page Source Type', 'desvert' ),
				'options' => array(
						'0' => 'Default', 
						'1' => 'Elementor',
					), 
				'default' => '0'
			),
		),
	),
);
//Typography Settings
Redux::setSection( $opt_name,
	array(
		'title'  => esc_html__( 'Typography Settings', 'desvert' ),
		'id'     => 'typography-settings',
		'icon'   => 'el el-edit',
		'fields' => array(
			array(
				'id'       => 'blog-page-source-type',
				'type'     => 'button_set',
				'title'    => esc_html__( 'Blog Page Source Type', 'desvert' ),
				'options' => array(
						'0' => 'Default', 
						'1' => 'Elementor',
					), 
				'default' => '0'
			),
		),
	),
);
/*
 * <--- END SECTIONS
 */
