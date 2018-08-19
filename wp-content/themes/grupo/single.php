<?php

get_header();


$content = get_fields($page->ID);
                                
?>

	<?php if ( has_post_thumbnail() ): $banner = get_the_post_thumbnail_url($page->ID, 'banner-image'); ?>

	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="main-banner">
					<div class="banner-overlay solid" style="background-image: url(<?php echo $banner; ?>);"></div>

					<div class="util-drawer">
						<button class="btn btn-icon btn-share toggle">
								<i class="material-icons icon-toggle-on">share</i>
								<i class="material-icons icon-toggle-off">close</i>
						</button>

						<div class="social-share">
							<?php echo do_shortcode('[ssba-buttons]'); ?>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<?php endif; ?>

	<section class="main">
		<div class="container">
				<div class="row">

					<div class="col-12 col-lg-8 offset-lg-2">

						<?php  if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

							<div class="entry blog-entry">
								<h1><?php the_title(); ?></h1>
								<?php the_content(); ?>
							</div>

						<?php  endwhile; endif; ?>
						
					</div>
					
				</div>
		</div>
	</section>

<?php

get_footer();