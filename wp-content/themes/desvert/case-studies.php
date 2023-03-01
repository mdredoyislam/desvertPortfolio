<?php
/**
 * Template Name: Case Studies
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
<section id="desvert-services-section" class="services-section-page">
    <div class="container">
        <div class="row mb-5 clearfix">
            <div class="col-lg-12">
                <h4 class="section-sub-title"><?php echo esc_html__('DesVert Case Studies','desvert'); ?></h4>
                <h3 class="section-title"><?php echo esc_html__('DesVert Case Studies','desvert'); ?></h3>
            </div>
        </div>
        <div class="row clearfix p-3">
        <?php
            if(have_posts()):
                $DesVert_services = new WP_Query(array(
                    'post_type' => 'case-studies',
                    'posts_per_page' =>6,
                    'order' => 'DESC',
                    'offset' => 0,
                    //'category_name' => $category_name,
                ));
                while ($DesVert_services->have_posts()) : $DesVert_services->the_post();
        ?>
        <div class="col-lg-4 single-services-colum">
            <div class="single-services-wrap services-post-wrap">
                <div class="services-thumb">
                    <?php echo get_the_post_thumbnail(); ?>
                    <?php 
                        $taxonomy = 'case_taxonomy';
                        $terms = get_terms($taxonomy);
                        foreach($terms as $value){
                            ?>
                            <a href="<?php the_permalink(); ?>" class="case-studies-btn btn btn-light"><?php echo $value->name; ?></a>
                            <?php
                        }
                    ?>
                </div>
                <div class="services-post-content">
                    <div class="services-post-content-wrap">
                        <?php 
                            the_title('<h4>','</h4>');
                            $servicesShort = esc_html__( get_the_content('<p>','</p>') );
                        ?>
                        <p><?php echo wp_trim_words( $servicesShort, 15, '...' ); ?></p>
                        <a class="btn" href="<?php the_permalink(); ?>">View More</a>
                    </div>
                </div>
            </div>
        </div>
        <?php
                endwhile;
            endif;
        ?>
        </div>
    </div>
</section>
<?php
get_footer();