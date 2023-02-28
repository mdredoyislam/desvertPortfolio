<?php
/**
 * Template Name: Team
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
<section id="team-section">
    <div class="container">
        <div class="row mb-5 align-items-center clearfix">
            <div class="col-lg-12">
                <h4 class="section-sub-title"><?php echo esc_html__('Meet Our Team','desvert'); ?></h4>
                <h3 class="section-title mb-3"><?php echo esc_html__('Professional & Expert Team','desvert'); ?></h3>
                <div class="team-text">
                    <p>Our team is highly experienced and professional. We are always ready to take the challenge</p>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <?php
                if(have_posts()):
                    $DesVert_teams = new WP_Query(array(
                        'post_type' => 'teams',
                        'posts_per_page' =>-1,
                        'order' => 'ASC',
                        'offset' => 0,
                        //'category_name' => $category_name,
                    ));
                    while ($DesVert_teams->have_posts()) : $DesVert_teams->the_post();
            ?>
            <div class="col-lg-4 col-md-6 col-md-12 col-sm-12">
                <div class="single-team-member">
                    <div class="img-holder">
                        <?php echo get_the_post_thumbnail(); ?>
                        <div class="share-box">
                            <a href="#"><i class="fas fa-share-alt"></i></a>
                            <ul class="fix">
                                <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="name text-center">
                        <a href="<?php the_permalink(); ?>"><?php __( the_title('<h3>','</h3>'),'desvert' ); ?></a>
                        <p>
                            <?php __( the_field('designation'),'desvert' ); ?>
                        </p>
                    </div>
                </div>
            </div>
            <?php
                    endwhile;
                endif
            ?>
        </div>
    </div>
</section>
<section id="portfolio-gallery">
    <div class="portfolio-gallery-wrapper">
        <?php 
            $galleyItems = explode(',', $desvert_opt['desvert-gallery']);
            foreach($galleyItems as $galleyphotoID):
                //$galleySrray = wp_get_attachment($galleyphotoID);
            ?>
            <a href="<?php echo wp_get_attachment_url( $galleyphotoID ); ?>" class="portfolio-item">
                <img src="<?php echo wp_get_attachment_url( $galleyphotoID ); ?>" alt="gallery-item">
            </a>
        <?php endforeach; ?>
    </div>
</section>
<section id="explore-more">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-7 col-sm-12">
                <div class="explore-text">
                    <p><?php echo $desvert_opt['desvert-gallery-title']; ?></p>
                </div>
            </div>
            <div class="col-lg-5 col-sm-12 sm-text-center">
                <div class="explore-button text-end text-sm-center">
                    <a target="_blank" href="<?php echo $desvert_opt['desvert-gallery-btn-url']; ?>" class="btn explore-more"><?php echo $desvert_opt['desvert-gallery-btn-text']; ?> <i class="fas fa-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="testimonial">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <h4 class="section-sub-title"><?php echo $desvert_opt['testimonials-subtitle']; ?></h4>
                <h3 class="section-title"><?php echo $desvert_opt['testimonials-title']; ?></h3>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-9 offset-lg-1" style="padding-left: 90px">
            <div class="slide-content">
                <div class="owl-carousel">
                    <?php
                        $test_per_pages = $desvert_opt['show-testimonials'];
                        $DesVert_testimonial = new WP_Query(array(
                            'post_type' => 'testimonials',
                            'posts_per_page' => $test_per_pages,
                            'order' => 'DESC',
                            'offset' => 0,
                            //'category_name' => $category_name,
                        ));
                        while ($DesVert_testimonial->have_posts()) : $DesVert_testimonial->the_post();
                    ?>
                    <div class="testimonial-items">
                        <p class="test-desc">
                            <?php
                                $client_message = esc_html__( get_the_content() );
                                echo wp_trim_words( $client_message, 30, '...' ); 
                            ?>
                        </p>
                        <h4 class="user-name"><?php esc_html__( the_field('client_name') ); ?></h4>
                        <span class="user-designation"><?php esc_html__( the_field('client_designation') ); ?></span>
                    </div>
                    <?php endwhile; ?>
                </div>
                <div id="testslidecounter"></div>
            </div>
        </div>
    </div>
</section>
<section id="counter-section">
    <div class="container">
        <div class="row">
            <div class="counter-item">
                <div class="row">
                    <div class="col-lg-6 col-sm-6">
                        <?php
                            $counterNumber1 = $desvert_opt['counter-total-projects']['Counter Number'];
                            $projectstext = $desvert_opt['counter-total-projects']['Projects Text'];
                            $CompleteText = $desvert_opt['counter-total-projects']['Completed Text'];
                            $BeforeKey1 = $desvert_opt['counter-total-projects']['Before Key'];
                            $AfterKey1 = $desvert_opt['counter-total-projects']['After Key'];
                        ?>
                        <span class="counter"><?php if(isset($BeforeKey1) && !empty($BeforeKey1)){echo $BeforeKey1;} ?><span class="counterup"><?php if(isset($counterNumber1) && !empty($counterNumber1)){echo $counterNumber1; }else{echo "2.5";} ?></span><?php if(isset($AfterKey1) && !empty($AfterKey1)){echo $AfterKey1;} ?></span>
                    </div>
                    <div class="col-lg-6 col-sm-6">
                        <div class="counter-text">
                            <span><?php if(isset($projectstext) && !empty($projectstext)){echo $projectstext; }else{echo "projects";} ?></span>
                            <h4><?php if(isset($CompleteText) && !empty($CompleteText)){echo $CompleteText; }else{echo "completed";} ?></h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="counter-item">
                <div class="row">
                    <div class="col-lg-6 col-sm-6">
                        <?php
                            $counterNumber2 = $desvert_opt['served-customers']['Counter Number'];
                            $servedtext = $desvert_opt['served-customers']['Served Text'];
                            $customersText = $desvert_opt['served-customers']['Customer Text'];
                            $BeforeKey2 = $desvert_opt['served-customers']['Before Key'];
                            $AfterKey2 = $desvert_opt['served-customers']['After Key'];
                        ?>
                        <span class="counter"><?php if(isset($BeforeKey2) && !empty($BeforeKey2)){echo $BeforeKey2;} ?><span class="counterup"><?php if(isset($counterNumber2) && !empty($counterNumber2)){echo $counterNumber2; }else{echo "500";} ?></span><?php if(isset($AfterKey2) && !empty($AfterKey2)){echo $AfterKey2;} ?></span>
                    </div>
                    <div class="col-lg-6 col-sm-6">
                        <div class="counter-text">
                            <span><?php if(isset($servedtext) && !empty($servedtext)){echo $servedtext; }else{echo "served";} ?></span>
                            <h4><?php if(isset($customersText) && !empty($customersText)){echo $customersText; }else{echo "customers";} ?></h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="counter-item">
                <div class="row">
                    <div class="col-lg-6 col-sm-6">
                        <?php
                            $counterNumber3 = $desvert_opt['master-minds']['Counter Number'];
                            $mastertext = $desvert_opt['master-minds']['Master Text'];
                            $mindText = $desvert_opt['master-minds']['Minds Text'];
                            $BeforeKey3 = $desvert_opt['master-minds']['Before Key'];
                            $AfterKey3 = $desvert_opt['master-minds']['After Key'];
                        ?>
                        <span class="counter"><?php if(isset($BeforeKey3) && !empty($BeforeKey3)){echo $BeforeKey3;} ?><span class="counterup"><?php if(isset($counterNumber3) && !empty($counterNumber3)){echo $counterNumber3; }else{echo "30";} ?></span><?php if(isset($AfterKey3) && !empty($AfterKey3)){echo $AfterKey3;} ?></span>
                    </div>
                    <div class="col-lg-6 col-sm-6">
                        <div class="counter-text">
                            <span><?php if(isset($mastertext) && !empty($mastertext)){echo $mastertext; }else{echo "Master";} ?></span>
                            <h4><?php if(isset($mindText) && !empty($mindText)){echo $mindText; }else{echo "Minds";} ?></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php
get_footer();