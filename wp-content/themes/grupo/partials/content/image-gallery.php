<?php

global $DB_Helper, $DB_Content;

?>

<section class="reusable-block trusted-block">
    <div class="container">
        <div class="row">
            <div class="col-12">    
                <h5 class="text-center"><?php echo $var['title'] ?></h5>
            </div>
        </div>
        <div class="row odd-grid text-center">
            <?php  foreach ($var['images'] as $logo) { ?>
                <div class="col">
                    <div class="img-wrap">
                        <img src="<?php echo $logo['url']; ?>" width="120" class="img-fluid">
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</section>

<?php echo $DB_Content->get_section_spacer('40'); ?>

<?php

// echo '<pre>';
// var_dump($var);
// echo '</pre>';

?>


