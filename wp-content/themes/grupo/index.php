<?php

	get_header();

	if ( have_posts() ) :

		while ( have_posts() ) : the_post();

			the_title();
			the_content(); 

		endwhile;

		the_posts_pagination();


	endif;


get_footer();