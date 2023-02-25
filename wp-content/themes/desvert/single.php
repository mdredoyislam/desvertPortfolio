<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
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
	<main id="primary" class="site-main">

		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/content', get_post_type() );

			the_post_navigation(
				array(
					'prev_text' => '<span class="nav-subtitle">' . esc_html__( 'Previous:', 'desvert' ) . '</span> <span class="nav-title">%title</span>',
					'next_text' => '<span class="nav-subtitle">' . esc_html__( 'Next:', 'desvert' ) . '</span> <span class="nav-title">%title</span>',
				)
			);

			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;

		endwhile; // End of the loop.
		?>

	</main><!-- #main -->

<?php
get_sidebar();
get_footer();
