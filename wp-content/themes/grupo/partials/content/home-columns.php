<?php

global $DB_Helper, $DB_Content;

?>


<?php foreach ( $var as $key => $val): ?>



    <?php if( $val['acf_fc_layout'] == 'text_image_row'): ?>

        <?php echo $DB_Content->get_section_spacer('60', ['d-none', 'd-md-block']); ?>

        <section class="home-column">
            <div class="container">
                <div class="row">

                    <div class="col-12 col-md-6 align-self-center text-center">   
                        <div class="content-wrap">
                            <?php echo $val['text_content']; ?>
                            <?php echo $DB_Content->get_section_spacer('20'); ?>
                            <a href="<?php echo $val['button_url']; ?>" class="btn btn-jump"><?php echo $val['button_text']; ?></a>
                            <?php echo $DB_Content->get_section_spacer('30'); ?>
                        </div>
                    </div>

                    <div class="col-12 col-md-6 text-center">    
                            <?php 
                                $banner_image_url = wp_get_attachment_image_src( $val['image_content'], 'listing-image');
                                $placeholder = $DB_Helper->get_placeholder_image_url(500, 500);
                                $banner_image = $banner_image_url ? $banner_image_url[0] : $placeholder;
                            ?>
                            <div class="img-wrap offset-img-right">
                                <div class="img-clip circle">
                                    <img src="<?php echo $banner_image; ?>" width="500">
                                </div>
                                <?php echo $DB_Content->get_section_spacer('30'); ?>
                            </div>
                    </div>

                </div>
            </div>
        </section>

    <?php elseif( $val['acf_fc_layout'] == 'image_text_row'): ?>

        <?php echo $DB_Content->get_section_spacer('60', ['d-none', 'd-md-block']); ?>

        <section class="home-column">
            <div class="container">
                <div class="row">

                    <div class="col-12 col-md-6 order-md-2 align-self-center text-center">   
                        <div class="content-wrap">
                            <?php echo $val['text_content']; ?>
                            <?php echo $DB_Content->get_section_spacer('20'); ?>
                            <a href="<?php echo $val['button_url']; ?>" class="btn btn-jump"><?php echo $val['button_text']; ?></a>
                            <?php echo $DB_Content->get_section_spacer('20'); ?>
                        </div>
                    </div>


                    <div class="col-12 col-md-6 text-center">    
                        <?php 
                            
                            $banner_image_url = wp_get_attachment_image_src( $val['image_content'], 'listing-image');
                            $placeholder = $DB_Helper->get_placeholder_image_url(500, 500);
                            $banner_image = $banner_image_url ? $banner_image_url[0] : $placeholder;
                                
                        ?>
                        <div class="img-wrap offset-img-left">
                            <div class="img-clip circle">
                                <img src="<?php echo $banner_image; ?>" width="500">
                            </div>
                            <?php echo $DB_Content->get_section_spacer('30'); ?>
                        </div>
                    </div>


                </div>
            </div>
        </section>

    <?php elseif( $val['acf_fc_layout'] == 'testimonial'): ?>

        <?php echo $DB_Content->get_section_spacer('60', ['d-none', 'd-md-block']); ?>

        <section class="home-column">
            <div class="container">
                <div class="row">
                    
                    <div class="col-12 col-md-10 offset-md-1 text-center">

                        <?php 
                        
                            $testimonials = get_fields($val['select_testimonial']); 

                            // var_dump($testimonials);

                            $banner_image_url = wp_get_attachment_image_src( $testimonials['image'], 'thumb-sm');
                            $placeholder = $DB_Helper->get_placeholder_image_url(62, 62);
                            $banner_image = $banner_image_url ? $banner_image_url[0] : $placeholder;
                        
                        ?>

                        <p><?php echo $testimonials['content']; ?></p>
                        <h5><?php echo get_the_title( $val['select_testimonial'] ); ?></h5>
                        <p><?php //echo $testimonials['rating']; ?></p>

                        <div class="img-wrap">
                            <div class="img-clip circle">
                                <img src="<?php echo $banner_image; ?>" width="62">
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </section>

    <?php echo $DB_Content->get_section_spacer('60', ['d-md-none']); ?>

    <?php endif; ?>

<?php endforeach; ?>



<?php


// echo '<pre>';
// var_dump($var);
// echo '</pre>';

?>


