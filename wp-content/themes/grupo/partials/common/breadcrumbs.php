<?php if ( function_exists('yoast_breadcrumb') && !is_front_page() ): ?>


<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="breadcrumbs">

                <?php yoast_breadcrumb(); ?>

                <?php if( is_single() ): ?>
                    <a href="/blog" class="back-btn"> <i class="material-icons">keyboard_backspace</i> Back to blog</a>
                <?php endif; ?>

                <?php 
                
                if( is_page_template('page-listing.php') ): 
                
                    $parent = wp_get_post_parent_id( $post->ID );
                    $parent_post = get_post($parent);

                    $parent_post_title = $parent_post->post_title;

                ?>
                    <a href="<?php echo get_permalink($parent); ?>" class="back-btn"> <i class="material-icons">keyboard_backspace</i> Back to <?php echo $parent_post_title; ?></a>
                <?php endif; ?>

            </div>
        </div>
    </div>
</div>

<?php endif; ?>