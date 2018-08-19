<?php

global $DB_Content;

get_header(); 

// $content = get_fields($post->ID);

// if( $content['content_reusable_blocks'] ) {
// 	foreach ( $content['content_reusable_blocks'] as $key => $id) {

// 		$block = get_fields($id);

// 		echo $DB_Content->pass_file_to_var('partials/content/'. $block['reusable_block_setup'] .'.php', $block);

// 	}
// }

?>

<section>
	<div class="container">
			<div class="row">

				<div class="col-12">

					<?php if ( have_posts() ) :

						while ( have_posts() ) : the_post();

							the_content();

						endwhile;

					endif; ?>

				</div>
			</div>
	</div>
</section>



<?php 

$home_columns = get_field('home_columns', $post->ID);
$fancy_boxes = get_field('fancy_boxes', $post->ID);


if( $home_columns ) {

	echo $DB_Content->pass_file_to_var('partials/content/home-columns.php', $home_columns);

}


if( $fancy_boxes ) {

	echo $DB_Content->pass_file_to_var('partials/content/fancy-boxes.php', $fancy_boxes);

}



?>

<?php






get_footer();
