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

get_footer();