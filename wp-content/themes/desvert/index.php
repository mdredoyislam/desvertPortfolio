<?php
/**
 * Template Name: Services
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
        <div class="row mb-5 clearfix">
            <div class="col-lg-12">
                <h4 class="section-sub-title"><?php echo esc_html__('Our Latest Post','desvert'); ?></h4>
                <h3 class="section-title"><?php echo esc_html__('DesVert Latest Blog Post','desvert'); ?></h3>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8">
            <?php
                if(have_posts()):
                    $DV_blog_posts = new WP_Query(array(
                        'post_type' => 'post',
                        'posts_per_page' =>3,
                        'order' => 'DESC',
                        'offset' => 0,
                        //'category_name' => $category_name,
                    ));
                    while ($DV_blog_posts->have_posts()) : $DV_blog_posts->the_post();
            ?>
                <div class="blog-post-wrapper">
                    <div class="blog-post-thumb">
                        <?php echo get_the_post_thumbnail(); ?>
                    </div>
                    <div class="blog-post-content">
                        <?php 
                            the_title('<h4 class="section-title mb-3">','</h4>');
                            $blogShorttext = esc_html__( get_the_content() );
                        ?>
                        <ul class="nav post-meta-info">
                            <li><a href="<?php the_author_meta('url'); ?>"><i class="fas fa-user-circle"></i><?php the_author(); ?></a></li>
                            <li><a href="<?php the_permalink(); ?>"><i class="fas fa-calendar-alt"></i><?php echo get_the_date('d M Y'); ?></a></li>
                            <li><a href="<?php the_permalink(); ?>"><i class="fas fa-folder"></i><?php the_category('name'); ?></a></li>
                            <li><a href="#"><i class="fas fa-comment"></i><?php echo get_comments_number(); ?> comment</a></li>
                        </ul>
                        <p><?php echo wp_trim_words( $blogShorttext, 50, '...' ); ?></p>
                        <a class="btn" href="<?php the_permalink(); ?>">View More</a>
                    </div>
                </div>
            <?php
                    endwhile;
                endif;
            ?>
            </div>
            <div class="col-lg-4">
                <?php dynamic_sidebar('blog-sidebar'); ?>
            </div>
        </div>
    </div>
</section>
<?php
get_footer();
