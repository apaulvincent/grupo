<?php

if($page_setup['show_banner'] == 0) {
	return;
}

$image = $page_setup['banner_image'];
$content = $page_setup['banner_content'];

$bg_color = $page_setup['banner_background_color'];

?>

<?php if($image): ?>



    <?php 

        $banner_image_url = wp_get_attachment_image_src($image, 'banner-image');

    ?>

<div class="container-fluid">
    <div class="row">
        <div class="col-12">

            <div class="main-banner" style="background-color: <?php echo $bg_color ?>">
                <div class="banner-overlay" style="background-image: url(<?php echo $banner_image_url[0]; ?>);"></div>
                <div class="banner-content">
                    <?php echo $content; ?>
                </div>
            </div>
            
        </div>
    </div>
</div>


<?php

endif;

// echo '<pre>';
// var_dump($slides);
// echo '</pre>';
