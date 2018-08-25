<?php

global $DB_Helper, $DB_Content;

?>


<?php echo $DB_Content->get_section_spacer('10', ['d-md-none']); ?>


<?php foreach ( $var as $key => $val): ?>

    <?php if( $val['acf_fc_layout'] == 'how_it_works'): ?>

        <section class="layout-<?php echo $val['acf_fc_layout'] ?>">
            <div class="container">
                <div class="row">
                    
                    <div class="col-12 col-lg-10 offset-lg-1">
                        <h2 class="layout-h2">Here’s how it works…</h2>
                        <?php echo $DB_Content->get_section_spacer('10'); ?>
                    </div>
                    <div class="col-12 col-lg-5 offset-lg-1">
                        <?php 
                            if( $val['list'] ) {
                                echo '<ul>';
                                $count = 1;
                                foreach ( $val['list'] as $key => $list) {

                                    echo '<li>';
                                    echo '<span>'.$count.'</span>';
                                    echo $list['list_item']; 
                                    echo '</li>';

                                    $count++;

                                }
                                echo '</ul>';
                            }
                        ?>
                    </div>
                    
                    <div class="col-12 col-lg-5">
                        <?php if( isset($val['video']) ): ?>
                            <div class="video-container">
                                <iframe width="856" height="480" src="https://www.youtube.com/embed/<?php echo $val['video']; ?>?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                            </div>
                        <?php endif; ?>
                        <?php echo $DB_Content->get_section_spacer('30'); ?>
                    </div>

                </div>
            </div>
        </section>




    <?php elseif( $val['acf_fc_layout'] == 'quick_facts'): ?>


        <section class="layout-<?php echo $val['acf_fc_layout'] ?>">
            <div class="container">
                <div class="row">
                    
                    <div class="col-12 col-lg-10 offset-lg-1">
                        <h2 class="layout-h2">Quick Facts</h2>
                        <?php echo $DB_Content->get_section_spacer('10'); ?>
                    </div>
                    <div class="col-12 col-lg-10 offset-lg-1">
                        <ul>
                            <li>
                                <i class="material-icons">directions_run</i>
                                <span>Activity Level: <strong><?php echo $val['activity_level'] ?></strong></span>
                            </li>
                            <li>
                                <i class="material-icons">access_time</i>
                                <span>Duration: <strong><?php echo $val['duration'] ?></strong></span>
                            </li>
                            <li>
                                <i class="material-icons">help_outline</i>
                                <span>Team Size: <strong><?php echo $val['team_size'] ?></strong></span>
                            </li>
                            <li>
                                <i class="material-icons">supervisor_account</i>
                                <span>Group Size: <strong><?php echo $val['group_size'] ?></strong></span>
                            </li>
                            <li>
                                <i class="material-icons">store</i>
                                <span>Venue: <strong><?php echo $val['venue'] ?></strong></span>
                            </li>
                            <li>
                                <i class="material-icons">local_florist</i>
                                <span>Seasonal: <strong><?php echo $val['seasonal'] ?></strong></span>
                            </li>
                        </ul>
                    </div>
                
                </div>
            </div>
        </section>

        <?php echo $DB_Content->get_section_spacer('60'); ?>

    <?php elseif( $val['acf_fc_layout'] == 'activity_for'): ?>
    
        <section class="layout-<?php echo $val['acf_fc_layout'] ?>">
            <div class="container">
                <div class="row">
                    
                    <div class="col-12 text-center">
                        <h2 class="layout-h2">The Perfect Activity for Groups who are:</h2>
                    </div>


                        <?php if( $val['activity_for'] ): ?>
                        <?php foreach ( $val['activity_for'] as $activity): ?>

                            <div class="col-12 col-lg-4 text-center">

                                <?php $block = get_fields($activity); ?>

                                <div class="img-wrap">
                                    <?php 
                                        $banner_image_url = wp_get_attachment_image_src( $block['image'] , 'full');
                                        $placeholder = $DB_Helper->get_placeholder_image_url(143, 143);
                                        $banner_image = $banner_image_url ? $banner_image_url[0] : $placeholder;
                                    ?>
                                    <img src="<?php echo $banner_image; ?>" width="143">
                                </div>

                                <h3><?php echo $block['title']; ?></h3>
                                <?php echo $block['content']; ?>

                                <?php echo $DB_Content->get_section_spacer('30'); ?>
                            </div>

                        <?php endforeach; ?>
                        <?php endif; ?>

                        <?php echo $DB_Content->get_section_spacer('30'); ?>

                </div>
            </div>

             <?php echo $DB_Content->get_section_spacer('60'); ?>
        </section>

    <?php elseif( $val['acf_fc_layout'] == 'testimonials'): ?>
    
    
    <section class="layout-<?php echo $val['acf_fc_layout'] ?>">
            <div class="container-fluid">
                <div class="row no-gutters">

                    <?php $block = get_fields($val['testimonial']); ?>
                    
                    <div class="col-12 col-lg-6">

                        <div class="content-block">

                            <i class="quote-mark material-icons">format_quote</i>

                            <?php echo $block['content']; ?>
                            <h3><?php echo get_the_title($val['testimonial']); ?></h3>
                            
                            <div class="rating">

                                <?php 

                                    $rate = intval($block['rating']);
                                
                                    for ($i=1; $i <= 5; $i++) { 

                                        if( $rate > $i ) {
                                            echo '<i class="material-icons">star</i>';

                                        } elseif ($rate == $i) {

                                            if (strpos($block['rating'], '.') !== false) {
                                                echo '<i class="material-icons">star_half</i>';
                                            }

                                        } else {
                                            echo '<i class="material-icons">star_border</i>';
                                        }

                                    } 
                                
                                ?>

                            </div>

                        </div>
                    </div>

                    <?php 
                        $banner_image_url = wp_get_attachment_image_src( $block['image'] , 'banner-image');
                        $placeholder = $DB_Helper->get_placeholder_image_url(143, 143);
                        $banner_image = $banner_image_url ? $banner_image_url[0] : $placeholder;
                    ?>

                    <div class="col-12 col-lg-6 image-container" style="background-image: url(<?php echo $banner_image; ?>)">
                    </div>
                </div>
            </div>

            <?php echo $DB_Content->get_section_spacer('20'); ?>

    </section>

    
    <?php elseif( $val['acf_fc_layout'] == 'gallery'): ?>

    <section class="layout-<?php echo $val['acf_fc_layout'] ?>">

            <?php 
            
            if( $val['gallery'] ): 
            
            $modal_images = '';
            
            ?>
            <div class="image-gallery">
            <?php foreach ( $val['gallery'] as $key => $img): ?>

                <div class="slide">
                    <img src="<?php echo $img['sizes']['slide-thumb']; ?>" data-toggle="modal" data-target="#gallery-modal" data-img-id="<?php echo $key; ?>" >
                </div>

                <?php 
                    $modal_images .= '<img src="'. $img['url'] .'" id="gal-'.$key.'">';
                ?>

            <?php endforeach; ?>
            </div>

            <?php endif; ?>


            <?php echo $DB_Content->get_section_spacer('60'); ?>
    </section>

    <?php endif; ?>
<?php endforeach; ?>

<!-- Modal: Subscribe Form-->
<div class="modal fade gallery-modal" id="gallery-modal" tabindex="-1" role="dialog" aria-hidden="true">
<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
    <div class="modal-header text-right">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="material-icons">close</i> close
        </button>
    </div>
    <div class="modal-body">
        <?php echo $modal_images; ?>
    </div>
    </div>
</div>
</div>


<?php

// echo '<pre>';
// var_dump($var);
// echo '</pre>';
