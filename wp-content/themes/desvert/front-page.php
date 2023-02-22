<?php
/**
 * Template Name: Home
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
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
            <div class="col-lg-8 col-sm-12">
                <div class="row mb-4">
                    <div class="col-lg-12 col-sm-12">
                        <h4 class="section-sub-title"><?php echo __('our key services','desvert') ?></h4>
                        <h3 class="section-title"><?php echo __('what we offer','desvert') ?></h3>
                    </div>
                </div>
                <div class="row">
                    <?php
                        $taxonomy = 'service_category';
                        $terms = get_terms($taxonomy);
                        if ( $terms && !is_wp_error( $terms ) ) :
                            foreach ( $terms as $term ) { ?>
                                <div class="col-lg-6">
                                    <a href="<?php echo get_term_link($term->slug, $taxonomy); ?>" class="wrapper-link">
                                        <div class="single-services-wrap">
                                            <h4><?php echo $term->name; ?></h4>
                                            <p><?php echo wp_trim_words( $term->description, 18, '...' ); ?></p>
                                        </div>
                                    </a>
                                </div>
                            <?php } 
                        endif;
                    ?>
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>
    </div>
    <div class="services-slider-wrapper">
        <div class="owl-carousel services-slider">
            <?php
                $DesVert_services = new WP_Query(array(
                    'post_type' => 'desvert_services',
                    'posts_per_page' =>10,
                    'order' => 'DESC',
                    'offset' => 0,
                    //'category_name' => $category_name,
                ));
                while ($DesVert_services->have_posts()) : $DesVert_services->the_post();
            ?>
            <div class="slider-item">
                <?php the_post_thumbnail(); ?>
                <h3 class="slider-item-text"><?php esc_html__(the_title(),'desvert'); ?></h3>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
</section>
<section id="make-appoinment">
    <div class="container">
        <div class="row">
            <div class="col-lg-11 offset-lg-1">
                <h4 class="section-sub-title"><?php echo $desvert_opt['desvert-appoinment-subtitle']; ?></h4>
                <h3 class="section-title"><?php echo $desvert_opt['desvert-appoinment-title']; ?></h3>
                <button class="appoinment-btn" type="button" data-toggle="modal"><?php echo $desvert_opt['desvert-appoinment-button-text']; ?><i class="fas fa-arrow-right"></i></button>
            </div>
        </div>
    </div>
</section>
<div class="appoinment-poppup">
	<div class="appoinment-poppup-form">
		<button id="appoinment-close-btn" type="button" class="btn"><i class="fas fa-xmark"></i></button>
		<h4 class="section-sub-title"><?php echo $desvert_opt['desvert-appoinment-form-subtitle']; ?></h4>
		<h3 class="section-title"><?php echo $desvert_opt['desvert-appoinment-form-title']; ?></h3>
        <?php
            echo do_shortcode( '[contact-form-7 id="35" title="Make Appopiment"]' );
        ?>
<!-- 		<form>
			<div class="row">
				<div class="form-group col-md-6">
					<label for="name">Name</label>
					<input type="text" class="form-control" id="name" placeholder="enter your name">
				</div>
				<div class="form-group col-md-6">
					<label for="phone">Phone</label>
					<input type="text" class="form-control" id="phone" placeholder="enter your phone">
				</div>
			</div>
			<div class="form-group">
				<label for="email">Email</label>
				<input type="email" class="form-control" id="email" placeholder="example@gmail.com">
			</div>
			<div class="form-group">
				<label for="services">Our services</label>
				<select name="services" id="services" class="form-control">
					<option selected>Choose our services</option>
					<option value="Email Newsletter Design">Email Newsletter Design</option>
					<option value="Banner Ads Design">Banner Ads Design</option>
					<option value="Publishing Design">Publishing Design</option>
					<option value="UX/UI Design">UX/UI Design</option>
					<option value="WordPress Development">WordPress Development</option>
					<option value="Graphic Design">Graphic Design</option>
				</select>
			</div>
			<div class="form-group">
				<label for="message">Message</label>
				<textarea class="form-control" id="message" rows="3" placeholder="message here....."></textarea>
			</div>
			<button type="submit" class="btn btn-primary">Order Now</button>
		</form> -->
	</div>
</div>
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
?>
