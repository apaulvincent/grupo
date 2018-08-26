<?php

    /*
    * Template Name: Listing Page
    */

	get_header();
	

	$parent = $post->ID;
?>

	<section class="main">
		<div class="container">
				<div class="row card-collection">

						<?php 

							$cat = $content['post_category'] ? $content['post_category'] : '';
							$paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : '1';


							$parents = array($post->ID);

							// List all teambuilding..
							if( is_page('all-team-building-activities') ) {
								$parents = array(619, 621, 617, 615, 90);
							}

							$args = array(
								'post_type'      => 'page',
								'posts_per_page' => -1, 
								'paged'          => $paged,
								'post_parent__in'    => $parents,
								'order'          => 'ASC',
								'orderby'        => 'menu_order'
							);
							  
							$wp_query = new WP_Query( $args );

							if ( $wp_query->have_posts()):
							while ( $wp_query->have_posts() ): $wp_query->the_post();
						  
						?>

                            <div class="col-12 col-md-4 card-wrap">

							<?php 

								$thumb = get_field('banner_image', $post->ID);
								$banner_img =  $thumb ? $thumb : get_post_thumbnail_id();
								$banner_image_url = wp_get_attachment_image_src( $banner_img , 'thumb-md');
								$placeholder = $DB_Helper->get_placeholder_image_url(345, 230);
								$banner_image = $banner_image_url ? $banner_image_url[0] : $placeholder;
							?>

							<a href="<?php echo get_permalink(); ?>" class="card">
							<img class="card-img-top" src="<?php echo $banner_image; ?>" alt="">
							<div class="card-body">
								<h2 class="card-title"><?php the_title(); ?></h2>
								<?php 
									$content = get_the_excerpt();
									echo '<span>'.excerpt($content, 30) . '</span>'; 
								?>
							</div>
							</a>

							</div>
        
						<?php endwhile; ?>

                        <div class="col-12">
                            <?php //echo $DB_Content->get_section_spacer('30', ['d-lg-none']); ?>
                            <?php echo $DB_Content->get_section_spacer(30); ?>
                            <?php wp_pagination(); ?>
                        </div>

						<?php  endif; wp_reset_postdata(); ?>

					</div>
					

				</div>
		</div>
	</section>


<?php 


$content_reusable_blocks = get_field('content_reusable_blocks', $parent);

if( $content_reusable_blocks ) {

	$block = get_fields( $content_reusable_blocks );
	echo $DB_Content->pass_file_to_var('partials/content/'. $block['reusable_block_setup'] .'.php', $block);

} else {

	$block2 = get_fields(154); // Reusable Block : Questions? We got answers!
	echo $DB_Content->pass_file_to_var('partials/content/standard-content.php', $block2);

}

get_footer();