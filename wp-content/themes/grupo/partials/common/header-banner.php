<?php

if($page_setup['show_banner'] == 0) {
	return;
}

$image = $page_setup['banner_image'];
$content = $page_setup['banner_content'];

$btn_type = $page_setup['button_type'];
$button_text = $page_setup['button_text'];
$button_url = $page_setup['button_url'];
$video_url = $page_setup['video_url'];

$bg_color = $page_setup['banner_background_color'];


// Banner opaque if no writeups...
$solid_banner = $content ? '' : 'solid';


$banner_image_url = wp_get_attachment_image_src($image, 'banner-image');

?>


<!-- Full width banner on hompage -->

<?php if( is_front_page() ): ?>
<div class="container-fluid">
<?php else: ?>
<div class="container">
<?php endif; ?>

    <div class="row">
        <div class="col-12">

            <div id="main-banner" class="main-banner" style="background-color: <?php echo $bg_color ?>">


                <div class="banner-overlay <?php echo $solid_banner; ?>" style="background-image: url(<?php echo $banner_image_url[0]; ?>);"></div>


                <!-- Video Banner -->
                <?php if($btn_type == 'video' && $video_url != ''): ?>

                <div id="vid-banner" class="vid-banner">
                    <div class="video-container">
                        <iframe width="856" id="vid-modal-frame" height="480" src="https://www.youtube.com/embed/<?php echo $video_url; ?>?rel=0&amp;controls=0&amp;showinfo=0&amp;enablejsapi=1&version=3&playerapiid=ytplayer" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen allowscriptaccess="always"></iframe>
                    </div>
                </div>

                <?php endif; ?>

                <div class="banner-content">
                    <?php echo $content; ?>

                    <?php if($btn_type == 'video'): ?>

                        <button class="btn btn-icon btn-outline" id="vid-banner-btn"><i class="material-icons">play_arrow</i></button>

                    <?php elseif($btn_type == 'default'): ?>

                        <a href="<?php echo $button_url; ?>" class="btn"><?php echo $button_text; ?></a>

                    <?php endif; ?>

                </div>

                <?php if($btn_type == 'share'): ?>
                    <div class="util-drawer">
                        <button class="btn btn-icon btn-share toggle">
                                <i class="material-icons icon-toggle-on">share</i>
                                <i class="material-icons icon-toggle-off">close</i>
                        </button>

                        <div class="social-share">
                            <?php echo do_shortcode('[ssba-buttons]'); ?>
                        </div>
                    </div>
                <?php endif; ?>

            </div>
            
        </div>
    </div>
</div>


<?php

// echo '<pre>';
// var_dump($slides);
// echo '</pre>';
