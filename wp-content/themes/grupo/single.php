<?php

get_header();


$content = get_fields($page->ID);
                                
// if ( has_post_thumbnail() ) {
//     echo '<div class="featured-image">';
//     the_post_thumbnail('feat-banner-image');
//     echo '</div>';
// }

?>

	<section class="main">
		<div class="container">
				<div class="row">

					<div class="col-12 col-lg-8 offset-lg-2">

						<?php 
							if ( have_posts() ) :
							while ( have_posts() ) : the_post();
						?>

                                <div class="entry blog-entry">
                                    <h1><?php the_title(); ?></h1>
                                    <?php the_content(); ?>
								</div>
								

						<?php  endwhile; ?>
						<?php endif; ?>
						

					</div>
					
				</div>
		</div>
	</section>

<?php

get_footer();