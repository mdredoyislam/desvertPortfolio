<?php
/* //Filter Menu Item Class / Replace Menu Item Class
function eicher_menu_item_class( $classes, $item, $args) {
    if($args->theme_location == 'primary') {
        $classes[] = "nav-item submenu dropdown";
    }
    return $classes;
}
add_filter( "nav_menu_css_class", "eicher_menu_item_class", 1, 3);

//Filter Menu Link Class / Replace Menu link Class
function eicher_menu_link_class($ullinkclass) {
    return preg_replace('/<a /', '<a class="nav-link dropdown-toggle"', $ullinkclass);
 }
 add_filter('wp_nav_menu','eicher_menu_link_class'); */
?>