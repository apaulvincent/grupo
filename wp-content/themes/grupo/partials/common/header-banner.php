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


                    <?php if($btn_type == 'video'): ?>

                    <button class="btn btn-icon btn-outline" data-toggle="modal" data-target="#vid-modal"><i class="material-icons">play_arrow</i></button>

                    <?php elseif($btn_type == 'share'): ?>


                    <?php else: ?>

                    <a href="<?php echo $button_url; ?>" class="btn"><?php echo $button_text; ?></a>

                    <?php endif; ?>

                </div>
            </div>
            
        </div>
    </div>
</div>



<?php if($btn_type == 'video' && $video_url != ''): ?>
<!-- Modal: Subscribe Form-->
<div class="modal fade vid-modal" id="vid-modal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header text-right">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<i class="material-icons">close</i> close
		</button>
	  </div>
      <div class="modal-body text-center">
	
	  	<iframe width="856" height="480" src="https://www.youtube.com/embed/<?php echo $video_url; ?>?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

      </div>
    </div>
  </div>
</div>
<?php endif; ?>



<?php

endif;

// echo '<pre>';
// var_dump($slides);
// echo '</pre>';
