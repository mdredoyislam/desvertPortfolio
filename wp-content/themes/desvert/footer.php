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
							<h3><?php echo $desvert_opt['footer-about-title']; ?></h3>
							<div class="site-branding footer-mobile-logo d-none">
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
							</div><!-- .site-branding -->
							<div class="footer-text">
								<h4><?php echo $desvert_opt['footer-about-sub-title']; ?></h4>
								<p><?php echo $desvert_opt['footer-about-text']; ?></p>
								<a class="btn footer-btn" href="<?php echo $desvert_opt['footer-about-btn-url']; ?>"><?php echo $desvert_opt['footer-about-btn-text']; ?></a>
							</div>
						</div>
					</div>
					<div class="col-lg-5 col-sm-12">
						<div class="footer-widgets footer-nav-sec">
							<h3>useful links</h3>
							<div class="footer-navigation">
								<?php
									$footerMenuOne = wp_nav_menu(
										array(
											'theme_location'	=> "footermenuone",
											'menu'				=> "footermenuone",
											'menu_class'		=> "nav",
											'menu_id'			=> "desvert-footer-menu",
											'echo'              => false,
											'container'         => false,
										) 
									);
									$footerMenuOne = str_replace('</a>','<i class="fas fa-angles-right"></i></a>', $footerMenuOne);
									echo $footerMenuOne;
								?>
								<?php
									$footerMenuTwo = wp_nav_menu(
										array(
											'theme_location'	=> "footermenutwo",
											'menu'				=> "footermenutwo",
											'menu_class'		=> "nav",
											'menu_id'			=> "desvert-footer-menu",
											'echo'              => false,
											'container'         => false,
										) 
									);
									$footerMenuTwo = str_replace('</a>','<i class="fas fa-angles-right"></i></a>', $footerMenuTwo);
									echo $footerMenuTwo;
								?>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-12">
						<div class="footer-widgets">
							<h3><?php echo $desvert_opt['footer-wrapper-title']; ?></h3>
							<a target="_blank" href="https://api.whatsapp.com/send?phone=<?php echo $desvert_opt['footer-whatsapp-number']; ?>" class="whatsapp-wrap-link">
								<div class="contact-whatsapp">
									<img src="<?php echo $desvert_opt['footer-whatsapp-icon-img']['url']; ?>" alt="whatsapp">
									<div class="whatsapp-info">
										<p><?php echo $desvert_opt['footer-whatsapp-title']; ?></p>
										<h3><?php echo $desvert_opt['footer-whatsapp-number']; ?></h3>
									</div>
								</div>
							</a>
							<div class="contact-loc">
								<h4><?php echo $desvert_opt['footer-contact-title']; ?></h4>
								<p><?php echo $desvert_opt['footer-contact-address']; ?></p>
							</div>
							<div class="contact-mail">
								<a href="mailto:<?php echo $desvert_opt['footer-email']; ?>" target="_blank">
									<h4><?php echo $desvert_opt['footer-email-title']; ?></h4>
									<p><?php echo $desvert_opt['footer-email']; ?></p>
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
