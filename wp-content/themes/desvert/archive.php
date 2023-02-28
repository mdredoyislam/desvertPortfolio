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
                      if(have_posts()):
                        while(have_posts()): the_post();
                      ?>
                      <article class="blog_item">
                        <div class="blog_item_img">
                          <?php the_post_thumbnail("full",array('class' => 'card-img rounded-0 img-height-fix')); ?>
                          <?php
                            $archive_year = get_the_date('Y');
                            $archive_month = get_the_date('m');
                            $archive_day = get_the_date('d');
                          ?>
                          <a href="<?php echo get_day_link( $archive_year, $archive_month,$archive_day ) ?>" class="blog_item_date">
                            <h3><?php echo get_the_date('d') ?></h3>
                            <p><?php echo get_the_date('M') ?></p>
                          </a>
                        </div>
                        
                        <div class="blog_details">
                            <a class="d-inline-block" href="<?php the_permalink(); ?>">
                                <h2><?php the_title(); ?></h2>
                            </a>
                            <?php the_content(); ?>
                            <ul class="blog-info-link">
                              <li><i class="ti-user"></i><?php the_category(','); ?></li>
                              <li><a href="#"><i class="ti-comments"></i><?php comments_popup_link(__('Leave a Comment', 'eiser'),__('1 Comment', 'eiser'),__('% Comments','eiser'),'',__('omments are off for this post','eiser')); ?></a></li>
                            </ul>
                        </div>
                      </article>
                      <?php
                        endwhile;
                      ?>
                      <nav class="blog-pagination justify-content-center d-flex">
                        <?php
                        the_posts_pagination();
                          $big = 999999999; // need an unlikely integer
                          echo paginate_links( array(
                              'base' => str_replace( $big, '%#%', get_pagenum_link( $big ) ),
                              'format' => '?paged=%#%',
                              'prev_text' => __('<span class="ti-arrow-left"></span>'),
                              'next_text' => __('<span class="ti-arrow-right"></span>'),
                              'current' => max( 1, get_query_var('paged') ),
                              'total' => $EicherPosts->max_num_pages
                          ) );
                          wp_reset_postdata();
                        ?>
                      </nav>
                      <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</section>

<?php
get_footer();
