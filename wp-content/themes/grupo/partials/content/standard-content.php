<?php

global $DB_Helper, $DB_Content;

// echo '<pre>';
// var_dump($var);
// echo '</pre>';

?>



<section class="<?php echo $var['reusable_block_setup'] . '-block' ?> <?php echo $var['class']?>">
<div class="container">
<div class="row">
<div class="col-12 offset-md-2 col-md-8 text-center">

    <h1 class="layout-h1"> <?php echo $var['title'] ?></h1>

    <?php echo $var['content']; ?>

    <?php echo $DB_Content->get_section_spacer('8'); ?>
    <?php if( $var['link_text'] && $var['link'] ): ?>
        <a href="<?php echo $var['link']; ?>" class="btn btn-jump"><?php echo $var['link_text']; ?></a>
    <?php endif; ?>

    <?php echo $DB_Content->get_section_spacer('60'); ?>

</div>
</div>
</div>
</section>


