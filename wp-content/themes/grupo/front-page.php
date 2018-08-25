<?php

global $DB_Content;

get_header(); 


echo $DB_Content->get_section_spacer('40');

$block1 = get_fields(128); // Reusable Block : Trusted by 

echo $DB_Content->pass_file_to_var('partials/content/image-gallery.php', $block1);


$home_columns = get_field('home_columns', $post->ID);

if( $home_columns ) {
	echo $DB_Content->pass_file_to_var('partials/content/home-columns.php', $home_columns);
}


$fancy_boxes = array();
$fancy_boxes['fancy_boxes'] = get_field('fancy_boxes', $post->ID);
$fancy_boxes['fancy_boxes_title'] = get_field('fancy_boxes_title', $post->ID);
$fancy_boxes['large_layout'] = true;

if( $fancy_boxes ) {
	echo $DB_Content->pass_file_to_var('partials/content/fancy-boxes.php', $fancy_boxes);
}



$block2 = get_fields(154); // Reusable Block : Questions? We got answers!
echo $DB_Content->pass_file_to_var('partials/content/standard-content.php', $block2);




get_footer();
