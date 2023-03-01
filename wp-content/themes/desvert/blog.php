<?php
/**
 * Template Name: Blog
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package DesVert
 */
global $desvert_opt;
get_header();
?>
<?php 
    while ( have_posts() ) : the_post();
        get_template_part( 'template-parts/tpl_breadcrumb', 'page' );
    endwhile;
?>
<section id="blog-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                
            </div>
            <div class="col-lg-4"></div>
        </div>
    </div>
</section>
<?php
get_footer();
