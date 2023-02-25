<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package DesVert
 */
global $desvert_opt;
get_header();
?>
<section id="desvert-tagline">
    <div class="shape-1"></div>
    <div class="shape-2"></div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 offset-lg-3 col-sm-12 offset-sm-0">
                <div class="tagline-contents">
                    <h3><?php echo $desvert_opt['desvert-tagline-sub-title']; ?></h3>
                    <h1><?php echo $desvert_opt['desvert-tagline-title']; ?></h1>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="services-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-sm-12">
                <div class="row mb-4">
                    <div class="col-lg-12 col-sm-12">
                        <h4 class="section-sub-title"><?php echo __('our key services','desvert') ?></h4>
                        <h3 class="section-title"><?php echo __('what we offer','desvert') ?></h3>
                    </div>
                </div>
                <div class="row">
                    <?php
					if ( have_posts() ) :
						while ( have_posts() ) : the_post();
					?>
						<div class="col-lg-4">
							<a href="<?php the_permalink(); ?>" class="wrapper-link">
								<div class="single-services-wrap">
									<h4><?php the_title(); ?></h4>
									<p><?php echo wp_trim_words( get_the_content(), 18, '...' ); ?></p>
								</div>
							</a>
						</div>
                    <?php
						endwhile;
					endif;
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>

<?php
get_footer();
