<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package DesVert
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header class="services-content-header mb-5">
        
        <?php

        $categories = get_the_terms( $post->ID, 'service_category' );
        foreach($categories as $catData){ ?>
            <h4 class="section-sub-title"><?php echo $catData->name; ?></h4>
        <?php }

		if ( is_singular() ) :
			the_title( '<h3 class="section-title">', '</h3>' );
		else :
			the_title( '<h3 class="section-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h3>' );
		endif;

		if ( 'post' === get_post_type() ) : ?>
            <div class="entry-meta"><?php
                    desvert_posted_on();
                    desvert_posted_by();
                ?>
            </div><!-- .entry-meta -->
		<?php endif; ?>
	</header><!-- .entry-header -->
    <div class="services-thumbnail mb-5">
        <?php desvert_post_thumbnail(); ?>
    </div>

	<div class="desvert_services-content">
		<?php
		the_content(
			sprintf(
				wp_kses(
					/* translators: %s: Name of current post. Only visible to screen readers */
					__( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'desvert' ),
					array(
						'span' => array(
							'class' => array(),
						),
					)
				),
				wp_kses_post( get_the_title() )
			)
		);

		wp_link_pages(
			array(
				'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'desvert' ),
				'after'  => '</div>',
			)
		);
		?>
	</div><!-- .entry-content -->

	<footer class="entry-footer">
		<?php desvert_entry_footer(); ?>
	</footer><!-- .entry-footer -->
</article><!-- #post-<?php the_ID(); ?> -->
