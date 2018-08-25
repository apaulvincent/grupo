<?php

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

						<?php 

						// if ( has_post_thumbnail() ) {
						// 	echo '<div class="featured-image">';
						// 	the_post_thumbnail('feat-banner-image');
						// 	echo '</div>';
						// }

						?>

							<div class="entry">
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

$fancy_boxes = array();
$fancy_boxes['fancy_boxes'] = get_field('fancy_boxes', $post->ID);
$fancy_boxes['fancy_boxes_title'] = get_field('fancy_boxes_title', $post->ID);

if( $fancy_boxes ) {
	echo $DB_Content->pass_file_to_var('partials/content/fancy-boxes.php', $fancy_boxes);
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