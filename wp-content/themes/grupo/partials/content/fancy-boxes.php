<?php

global $DB_Helper, $DB_Content;

// $banner_image_url = wp_get_attachment_image_src( get_post_thumbnail_id( $latest_post->ID ) , 'listing-image');
// $placeholder = $DB_Helper->get_placeholder_image_url(600, 600);
// $banner_image = $banner_image_url ? $banner_image_url[0] : $placeholder;


$large = $var['large_layout'];


if( !isset($var['fancy_boxes']) ) {
    return;
}

?>



<?php if($large): ?>
<?php echo $DB_Content->get_section_spacer('60'); ?>
<section class="eq-blocks eq-blocks-lg">
<?php else: ?>
<section class="eq-blocks">
<?php endif; ?>



<div class="container">

    <?php if( $var['fancy_boxes_title']){ ?>
    <div class="row">
        <div class="col-12 text-center"> 
            <h1 class="layout-h1"><?php echo $var['fancy_boxes_title'] ?></h1>
            <?php echo $DB_Content->get_section_spacer('20'); ?>
        </div>
    </div>
    <?php } ?>


    <?php if(!$large): ?>
    <div class="row">
    <div class="col-12 col-lg-10 offset-lg-1">  
    <?php endif; ?>


    <div class="wide-gutter row">
    <?php if($var['fancy_boxes']): foreach ( $var['fancy_boxes'] as $key => $val): ?>
    
            <?php 
                
                $banner_image_url = wp_get_attachment_image_src( $val['background_image'], 'listing-image');
                $banner_image = $banner_image_url ? 'background-image: url('.$banner_image_url[0].');' : '';
                    
            ?>

            <div class="col-12 col-md-6 eq-block-wrap text-center">   
                <a href="<?php echo $val['button_url']; ?>" class="eq-block"style="background: <?php echo $val['background_color']; ?>;">

                    <div class="eq-overlay" style="<?php echo $banner_image; ?>"></div>

                    <div class="eq-content">
                        <?php echo $val['writeup']; ?>
                        <?php echo $DB_Content->get_section_spacer('20', array('d-none', 'd-lg-block')); ?>
                        <span class="btn btn-1 btn-full"><?php echo $val['button_text']; ?></span>
                    </div>
                </a>
            </div>


    <?php endforeach; endif;?>
    </div>

    <?php if(!$large): ?>
    </div>
    </div>
    <?php endif; ?>

</div>
</section>

<?php echo $DB_Content->get_section_spacer('60'); ?>


<?php

// echo '<pre>';
// var_dump($var);
// echo '</pre>';



