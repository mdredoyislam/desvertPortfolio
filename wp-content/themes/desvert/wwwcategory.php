<?php
get_header(); ?>
    <!--================Home Banner Area =================-->
    <section class="banner_area">
      <div class="banner_inner d-flex align-items-center">
        <div class="container">
          <div
            class="banner_content d-md-flex justify-content-between align-items-center"
          >
            <div class="mb-3 mb-md-0">
                <?php
                    the_archive_title('<h2>','</h2>');
                    the_archive_description('<p>','</p>');
                ?>
            </div>
            <div class="page_link">
              <a href="index.html">Home</a>
              <a href="blog.html">Blog </a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================End Home Banner Area =================-->

  <!--================Blog Area =================-->
  <section class="blog_area section_gap">
      <div class="container">
          <div class="row">
              <div class="col-lg-8 mb-5 mb-lg-0">
                  <div class="blog_left_sidebar">
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
              <?php get_sidebar(); ?>
          </div>
      </div>
  </section>
  <!--================Blog Area =================-->
<?php get_footer(); ?>