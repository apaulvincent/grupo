<?php

    /*
    * Template Name: DFP Contact
    */

	get_header();

?>

	<?php //echo $DB_Content->get_section_spacer('20'); ?>

	<!-- <section class="title-bar">
		<div class="container">
			<div class="row">
				<div class="col-12 col-md-8 offset-md-2 text-center">

				
				</div>
			</div>
		</div>
	</section> -->


	<section class="main">
		<div class="container">
				<div class="row">
					<div class="col-12 col-md-8 offset-md-2 text-center">
						<?php 

							if ( have_posts() ) :
								while ( have_posts() ) : the_post();
							
								the_content();

								endwhile;
							endif; 
						?>

					</div>
				</div>
		</div>
	</section>


<?php 

get_footer();

?>