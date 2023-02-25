<?php
/**
 * Template Name : About Us
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
                    <h1 style="color: #f00;text-align: center;font-weight: 800;"><?php echo "404"; ?></h1>
					<h3 style="text-align: center;"><?php echo "Back To Home"; ?></h3>
                </div>
            </div>
        </div>
    </div>
</section>

<?php
get_footer();
