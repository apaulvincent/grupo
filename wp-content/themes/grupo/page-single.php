<?php

    /*
    * Template Name: Single Page
    */

	get_header();
	

?>

	<section class="main">
		<div class="container">
				<div class="row">

					<div class="col-12 col-lg-10 offset-lg-1">

						<?php 
							if ( have_posts() ) :
							while ( have_posts() ) : the_post();
						?>

							<div class="entry entry-single">
								<?php the_content(); ?>
							</div>

						<?php 
							endwhile;
							endif; 
						?>

					</div>

				</div>
		</div>
	</section>

<?php 



$single_page_setup = get_field('single_page_setup');

if( $single_page_setup ) {
	echo $DB_Content->pass_file_to_var('partials/content/single-page-setup.php', $single_page_setup);
}




$content_reusable_blocks = get_field('content_reusable_blocks');

if( $content_reusable_blocks ) {

	$block = get_fields( $content_reusable_blocks );
	echo $DB_Content->pass_file_to_var('partials/content/'. $block['reusable_block_setup'] .'.php', $block);

} else {

	$block2 = get_fields(154); // Reusable Block : Questions? We got answers!
	echo $DB_Content->pass_file_to_var('partials/content/standard-content.php', $block2);

}

get_footer();