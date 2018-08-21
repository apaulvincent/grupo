<?php

global $DB_Content;

get_header(); 

$block1 = get_fields(128); // Reusable Block : Trusted by 

echo $DB_Content->pass_file_to_var('partials/content/image-gallery.php', $block1);

$home_columns = get_field('home_columns', $post->ID);
$fancy_boxes = get_field('fancy_boxes', $post->ID);


if( $home_columns ) {

	echo $DB_Content->pass_file_to_var('partials/content/home-columns.php', $home_columns);

}


if( $fancy_boxes ) {

	echo $DB_Content->pass_file_to_var('partials/content/fancy-boxes.php', $fancy_boxes);

}




$block2 = get_fields(154); // Reusable Block : Questions? We got answers!
echo $DB_Content->pass_file_to_var('partials/content/standard-content.php', $block2);




get_footer();
