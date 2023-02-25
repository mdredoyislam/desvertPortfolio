<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package DesVert
 */
global $desvert_opt;
?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<link rel="shortcut icon" href="<?php echo $desvert_opt['fav-icon']['url']; ?>" />

	<?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="page" class="site">

	<header id="masthead" class="site-header">
		<div class="container-fluid">
			<div class="row">
			<div class="col-lg-9 offset-lg-3 col-sm-12 offset-sm-0">
			<div class="row align-items-center">
				<div class="col-lg-6 col-sm-6">
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
					</div>
				</div>
				<div class="col-lg-4 d-block social-sm-none">
					<div class="header-top-social">
						<ul class="nav header-social-list justify-content-center">
							<?php
								$facebook_url = $desvert_opt['desvert-social-list']['facebook'];
								$linkedin_url = $desvert_opt['desvert-social-list']['linkedin'];
								$pintarest_url = $desvert_opt['desvert-social-list']['pintarest'];
								$instagram_url = $desvert_opt['desvert-social-list']['instagram'];
							?>
							<?php if(!empty($facebook_url)){ ?>
								<li><a target="_blank" href="<?php echo $facebook_url; ?>"><i class="fa-brands fa-facebook-f"></i></a></li>
							<?php } ?>
							<?php if(!empty($linkedin_url)){ ?>
							<li><a target="_blank" href="<?php echo $linkedin_url; ?>"><i class="fa-brands fa-linkedin-in"></i></a></li>
							<?php } ?>
							<?php if(!empty($pintarest_url)){ ?>
							<li><a target="_blank" href="<?php echo $pintarest_url; ?>"><i class="fa-brands fa-pinterest-p"></i></a></li>
							<?php } ?>
							<?php if(!empty($instagram_url)){ ?>
							<li><a target="_blank" href="<?php echo $instagram_url; ?>"><i class="fa-brands fa-instagram"></i></a></li>
							<?php } ?>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 text-center button-sm-right">
				<button id="humbargarbtn" type="button" class="btn btn-nav-toggle" data-toggle="modal" data-target=".bd-example-modal-sm"><i class="fa-solid fa-bars"></i></button>
				</div>
			</div>
			</div>
		</div>
	</header><!-- #masthead -->
	<!-- Humbarger Menu -->
	<div class="humbargur-nav">
	<button id="closebtn" type="button" class="btn" data-toggle="modal" data-target=".bd-example-modal-sm"><i class="fas fa-xmark"></i></button>
	<div class="site-brand">
		<div class="row">
			<div class="col-lg-12">
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
				</div>
			</div>
		</div>
	</div>
	<div class="desvert-menu">
		<?php
		wp_nav_menu(
			array(
				'theme_location'	=> "primary",
				'menu'				=> "primary",
				'menu_class'		=> "nav",
				'menu_id'			=> "desvert-primary",
			) 
		);
		?>
	</div>
	<div class="desvert-social-links">
		<h4><?php echo $desvert_opt['desvert-header-info-title']; ?></h4>
		<p><?php echo $desvert_opt['desvert-header-info-desc']; ?></p>
		<ul class="nav header-social-list">
			<?php
				$facebook_url = $desvert_opt['desvert-social-list']['facebook'];
				$linkedin_url = $desvert_opt['desvert-social-list']['linkedin'];
				$pintarest_url = $desvert_opt['desvert-social-list']['pintarest'];
				$instagram_url = $desvert_opt['desvert-social-list']['instagram'];
			?>
			<?php if(!empty($facebook_url)){ ?>
				<li><a target="_blank" href="<?php echo $facebook_url; ?>"><i class="fa-brands fa-facebook-f"></i></a></li>
			<?php } ?>
			<?php if(!empty($linkedin_url)){ ?>
			<li><a target="_blank" href="<?php echo $linkedin_url; ?>"><i class="fa-brands fa-linkedin-in"></i></a></li>
			<?php } ?>
			<?php if(!empty($pintarest_url)){ ?>
			<li><a target="_blank" href="<?php echo $pintarest_url; ?>"><i class="fa-brands fa-pinterest-p"></i></a></li>
			<?php } ?>
			<?php if(!empty($instagram_url)){ ?>
			<li><a target="_blank" href="<?php echo $instagram_url; ?>"><i class="fa-brands fa-instagram"></i></a></li>
			<?php } ?>
		</ul>
	</div>
</div>
