<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<link href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.ico" rel="shortcut icon" type="image/x-icon" />

<?php wp_head(); ?>

<?php if (is_page('contact')): ?>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCj3H1hUZKVCKqi15bIs1xK4EuxIBf2F5s"></script>
<?php endif ?>

<!-- <script src="https://www.google.com/recaptcha/api.js"></script> -->

<script type='text/javascript'>
(function (d, t) {
  var bh = d.createElement(t), s = d.getElementsByTagName(t)[0];
  bh.type = 'text/javascript';
  bh.src = 'https://www.bugherd.com/sidebarv2.js?apikey=1omxgirz3j653hswfraitg';
  s.parentNode.insertBefore(bh, s);
  })(document, 'script');
</script>

</head>

<body <?php body_class(); ?>>

<?php

global $DB_Content;

$page_setup = get_fields();

?>

<div id="site-wrap" class="site-wrap">

	<header class="site-header">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="inner">

							<a href="<?php echo home_url(); ?>" class="branding">
								<?php

									$site_logo = get_field('desktop_site_logo', 'option');
								
									if($site_logo) {
										echo "<img src='".$site_logo."' width='126'/>";
									} else{
										echo get_bloginfo('name');
									}
								?>
							</a>

							<?php include(locate_template('partials/common/header-main-nav.php')); ?>

						</div>
					</div>
				</div>
			</div>
	</header><!-- #masthead -->

	<?php echo $DB_Content->get_section_spacer('76', array('header-spacer')); ?>

	<?php include(locate_template('partials/common/header-mobile-nav.php')); ?>

	<?php include(locate_template('partials/common/breadcrumbs.php')); ?>

	<?php include(locate_template('partials/common/header-banner.php')); ?>
