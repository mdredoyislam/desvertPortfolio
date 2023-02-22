<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package DesVert
 */
global $desvert_opt;
?>

	<footer id="colophon" class="site-footer">
		<div class="container">
			<div class="footer-top">
				<div class="row align-items-center">
					<div class="col-lg-3">
						<div class="site-branding">
							<?php
								if ( is_front_page() && is_home() ) :
									?>
									<div class="site-logo">
										<a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home">
											<?php
											if(isset($desvert_opt['home-one-logo'])){ ?>
												<img src="<?php echo $desvert_opt['home-one-logo']['url']; ?>" alt="SiteLogo">
											<?php }else{
												the_custom_logo(); 
											}
											?>
										</a>
									</div>
									<?php
								else :
									?>
									<p class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></p>
									<?php
								endif;
							?>
						</div><!-- .site-branding -->
					</div>
					<div class="col-lg-9">
						<div class="partner-sec text-end partner-sec text-end text-sm-start">
							<h4><?php echo $desvert_opt['desvert-concerns-title'] ?></h4>
							<div class="concerns-sec">
							<?php 
								$partnerItems = explode(',', $desvert_opt['desvert-partners']);
								foreach($partnerItems as $partnerlogoID):
									//$galleySrray = wp_get_attachment($galleyphotoID);
								?>
								<a href="<?php echo wp_get_attachment_url( $partnerlogoID ); ?>"><img src="<?php echo wp_get_attachment_url( $partnerlogoID ); ?>" alt="partner Item"></a>
							<?php endforeach; ?>
<!-- 								<a href="#"><img src="<?php echo get_template_directory_uri(); ?>/img/partner1.png" alt="partner Item"></a>
								<a href="#"><img src="<?php echo get_template_directory_uri(); ?>/img/partner2.png" alt="partner Item"></a>
								<a href="#"><img src="<?php echo get_template_directory_uri(); ?>/img/partner3.png" alt="partner Item"></a>
								<a href="#"><img src="<?php echo get_template_directory_uri(); ?>/img/partner4.png" alt="partner Item"></a> -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-main">
				<div class="row">
					<div class="col-lg-4 col-sm-12">
						<div class="footer-widgets footer-widgets-1">
							<h3>About us</h3>
							<div class="site-branding footer-mobile-logo d-none">
								<?php
									if ( is_front_page() && is_home() ) :
										?>
										<div class="site-logo">
											<a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home">
												<?php
												if(isset($desvert_opt['home-one-logo'])){ ?>
													<img src="<?php echo $desvert_opt['home-one-logo']['url']; ?>" alt="SiteLogo">
												<?php }else{
													the_custom_logo(); 
												}
												?>
											</a>
										</div>
										<?php
									else :
										?>
										<p class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></p>
										<?php
									endif;
								?>
							</div><!-- .site-branding -->
							<div class="footer-text">
								<h4>We’re Creative and Professional</h4>
								<p>Desvert is Highly experienced outsourcing company and served clients all over the world. We are specialized in creative designs, web design and development. We keep us updated with the latest trends and technologies.</p>
								<a class="btn footer-btn" href="#">know more</a>
							</div>
						</div>
					</div>
					<div class="col-lg-5 col-sm-12">
						<div class="footer-widgets footer-nav-sec">
							<h3>useful links</h3>
							<div class="footer-navigation">
								<ul class="nav">
									<li><a href="#"><i class="fas fa-angles-right"></i> about desvert</a></li>
									<li><a href="#"><i class="fas fa-angles-right"></i> testimonials</a></li>
									<li><a href="#"><i class="fas fa-angles-right"></i> fAQ’s</a></li>
									<li><a href="#"><i class="fas fa-angles-right"></i> careers</a></li>
									<li><a href="#"><i class="fas fa-angles-right"></i> contact us</a></li>
									<li><a href="#"><i class="fas fa-angles-right"></i> view all service</a></li>
								</ul>
								<ul class="nav">
									<li><a href="#"><i class="fas fa-angles-right"></i> email newsletter</a></li>
									<li><a href="#"><i class="fas fa-angles-right"></i> banner ads design</a></li>
									<li><a href="#"><i class="fas fa-angles-right"></i> publishing design</a></li>
									<li><a href="#"><i class="fas fa-angles-right"></i> ui/ux design</a></li>
									<li><a href="#"><i class="fas fa-angles-right"></i> wordpress development</a></li>
									<li><a href="#"><i class="fas fa-angles-right"></i> graphic design</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-12">
						<div class="footer-widgets">
							<h3>want to touch with us?</h3>
							<a target="_blank" href="https://api.whatsapp.com/send?phone=+8801714862596" class="whatsapp-wrap-link">
								<div class="contact-whatsapp">
									<img src="<?php echo get_template_directory_uri(); ?>/img/whatsapp.png" alt="whatsapp">
									<div class="whatsapp-info">
										<p>Whatsapp</p>
										<h3>+8801714862596</h3>
									</div>
								</div>
							</a>
							<div class="contact-loc">
								<h4>contact us</h4>
								<p>meher plaza (4th floor), house - 13/a road - 05, dhaka 1205, Bangladesh</p>
							</div>
							<div class="contact-mail">
								<a href="mailto:support@desvert.com" target="_blank">
									<h4>Email</h4>
									<p>support@desvert.com</p>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="row">
					<div class="col-lg-12">
						<div class="footer-site-info">
							<p>
								<?php printf( esc_html__( 'copyright @ 2022, all rights reserved by %2$s.', 'desvert' ), 'desvert', '<a href="https://www.desvert.com/">DesVert</a>' ); ?>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer><!-- #colophon -->
</div><!-- #page -->
<?php wp_footer(); ?>
</body>
</html>
