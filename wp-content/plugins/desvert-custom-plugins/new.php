<?php
/* Register Portfolio Post Type */
add_action('init', 'create_portfolio');

function create_portfolio() {

    $labels = array(
        'name' => __('Portfolio', 'post type general name'),
        'singular_name' => __('Project', 'post type singular name'),
        'add_new' => __('Add New', 'portfolio item'),
        'add_new_item' => __('Add New Project'),
        'edit_item' => __('Edit Project'),
        'new_item' => __('New Project'),
        'view_item' => __('View Project'),
        'search_items' => __('Search Projects'),
        'not_found' =>  __('Nothing found'),
        'not_found_in_trash' => __('Nothing found in Trash'),
        'parent_item_colon' => ''
    );

    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'query_var' => true,
        'rewrite' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'menu_position' => null,
        'supports' => array('title','editor','thumbnail')
      ); 

    register_post_type( 'portfolio' , $args );
}

/* Register Skills Taxonomy */
register_taxonomy("Skills", array("portfolio"), array("hierarchical" => true, "label" => "Skills", "singular_label" => "Skill", "rewrite" => true));

/* Add Fields */
add_action("admin_init", "add_portfolio_fields");

function add_portfolio_fields(){
    add_meta_box("website_url", "Website URL", "website_url", "portfolio", "side", "low");
    add_meta_box("view_more", "View More", "view_more", "portfolio", "side", "low");
    add_meta_box("screenshot_name", "Screenshot Name", "screenshot_name", "portfolio", "side", "low");
    add_meta_box("thumbnail_name", "Thumbnail Name", "thumbnail_name", "portfolio", "side", "low");
    add_meta_box("thumbnail_alt", "Thumbnail Alt", "thumbnail_alt", "portfolio", "side", "low");
}

function website_url(){
    global $post;
    $custom = get_post_custom($post->ID);
    $website_url = $custom["website_url"][0];
    ?>
    <label>Website URL:</label>
    <input size="50" name="website_url" value="<?php echo $website_url; ?>" />
    <?php
}

function view_more() {
    global $post;
    $custom = get_post_custom($post->ID);
    $view_more = $custom["view_more"][0];
    ?>
    <label>View More:</label>
    <input size="50" name="view_more" value="<?php echo $view_more; ?>" />
    <?php
}

function screenshot_name() {
    global $post;
    $custom = get_post_custom($post->ID);
    $screenshot_name = $custom["screenshot_name"][0];
    ?>
    <label>Screenshot Name:</label>
    <input name="screenshot_name" value="<?php echo $screenshot_name; ?>" />
    <?php
}

function thumbnail_name() {
    global $post;
    $custom = get_post_custom($post->ID);
    $thumbnail_name = $custom["thumbnail_name"][0];
    ?>
    <label>Thumbnail Name:</label>
    <input name="thumbnail_name" value="<?php echo $thumbnail_name; ?>" />
    <?php
}

function thumbnail_alt() {
    global $post;
    $custom = get_post_custom($post->ID);
    $thumbnail_alt = $custom["thumbnail_alt"][0];
    ?>
    <label>Thumbnail Alt:</label>
    <input name="thumbnail_alt" value="<?php echo $thumbnail_alt; ?>" />
    <?php
}

add_action('save_post', 'save_portfolio_details');

function save_portfolio_details(){
    global $post;

    update_post_meta($post->ID, "website_url", $_POST["website_url"]);
    update_post_meta($post->ID, "view_more", $_POST["view_more"]);
    update_post_meta($post->ID, "screenshot_name", $_POST["screenshot_name"]);
    update_post_meta($post->ID, "thumbnail_name", $_POST["thumbnail_name"]);
    update_post_meta($post->ID, "thumbnail_alt", $_POST["thumbnail_alt"]);
}

/* Custom Columns */
add_action("manage_posts_custom_column",  "portfolio_custom_columns");
add_filter("manage_edit-portfolio_columns", "portfolio_edit_columns");

function portfolio_edit_columns($columns){
    $columns = array(
        "cb" => "<input type=\"checkbox\" />",
        "title" => "Project Title",
        "description" => "Description",
    );

    return $columns;
}

function portfolio_custom_columns($column){
    global $post;

    switch ($column) {
        case "description":
        the_excerpt();
        break;
    }
}