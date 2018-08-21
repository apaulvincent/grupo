<?php

get_header();

$posts_page = get_option( 'page_for_posts' );
$content = get_fields($posts_page);

?>

    <?php echo $DB_Content->get_section_spacer('60'); ?>

    <section class="title-bar">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-8 offset-md-2 text-center">
                    <?php echo get_field('blog_content', 87); ?>
                </div>
            </div>
        </div>
    </section>


	<section class="main">
		<div class="container">
				<div class="row card-collection">


						<?php 
							if ( have_posts() ) :
							while ( have_posts() ) : the_post();
						?>

                            <div class="col-12 col-md-4 card-wrap">

                                <?php 
                                    $banner_image_url = wp_get_attachment_image_src( get_post_thumbnail_id() , 'thumb-md');
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

						<?php  endwhile; ?>

                        
                        <div class="col-12">
                            <?php //echo $DB_Content->get_section_spacer('30', ['d-lg-none']); ?>
                            <?php echo $DB_Content->get_section_spacer(30); ?>
                            <?php wp_pagination(); ?>
                        </div>
                        
                        
                        <?php endif; ?>

				</div>
		</div>
	</section>

<?php

// $block2 = get_fields(154); // Reusable Block : Questions? We got answers!
// echo $DB_Content->pass_file_to_var('partials/content/standard-content.php', $block2);


get_footer();