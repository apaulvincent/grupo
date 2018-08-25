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
                
                // TODO: Get parent info...
                ?>
                    <a href="/team-building/" class="back-btn"> <i class="material-icons">keyboard_backspace</i> Back to Team Building</a>
                <?php endif; ?>

            </div>
        </div>
    </div>
</div>

<?php endif; ?>