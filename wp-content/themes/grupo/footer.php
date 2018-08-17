<?php global $DB_Content; ?>

</div><!-- Site Wrap -->

<?php 

$page_setup = get_fields();


if( $page_setup['content_reusable_blocks'] ) {

	foreach ( $page_setup['content_reusable_blocks'] as $key => $value) {

		$block = get_fields($value);

		if( is_front_page() ) {
			if( $block['class'] == 'download-strip' || $block['reusable_block_setup'] == 'page-grid') {
				continue;
			}
		}

		//echo $DB_Content->pass_file_to_var('partials/content/'. $block['reusable_block_setup'] .'.php', $block);

	}
}

?>


<footer class="site-footer">

	<?php echo $DB_Content->get_section_spacer('60'); ?>
	
		<div class="container">
			<div class="row">

				<div class="col-12 col-lg-2">
					<a href="<?php echo home_url(); ?>">
						<?php

							$site_logo = get_field('desktop_site_logo', 'option');

							if($site_logo):
								echo "<img src='".$site_logo."' width='160'/>";
							else:
								echo get_bloginfo('name');
							endif;
						?>
					</a>
				</div>

				<div class="col-12 col-lg-5">
					<ul class="footer-menu">
						<?php 
							wp_nav_menu(
								array(  
										'menu' => 'Footer 01',
										'menu_class' => '',
										'container' => '',
										'container_class' => '',
										'before' => '',
										'after' => '',
										'link_before' => '',
										'link_after' => '',
										'items_wrap' => '%3$s',
									)
							);
						?>
					</ul>
				</div>

				<div class="col-12 col-lg-5">
					
					<div class="social">
						<h5>Follow Us</h5>
						<?php include(locate_template('partials/common/socials.php')); ?>
					</div>

					<?php include(locate_template('partials/common/contact-info.php')); ?>

				</div>

			</div>
		</div>

		<?php echo $DB_Content->get_section_spacer('20'); ?>

		<div class="copyright">

			<?php echo $DB_Content->get_section_spacer('10'); ?>

			<div class="container">
				<div class="row">
					<div class="col-12 col-md-6">

						<?php echo $DB_Content->get_section_spacer('10'); ?>

						<ul>
							<li><span><?php echo get_field('site_copyright', 'option'); ?> </span></li>
							<?php 
								wp_nav_menu(
									array(  
											'menu' => 'Footer 02',
											'menu_class' => '',
											'container' => '',
											'container_class' => '',
											'before' => '',
											'after' => '',
											'link_before' => '',
											'link_after' => '',
											'items_wrap' => '%3$s',
										)
								);
							?>
						</ul>

						<?php echo $DB_Content->get_section_spacer('10'); ?>

					</div>
					<div class="col-12 col-md-6">

						<?php

						$partners_field = get_field('partners_fields', 'option');

						if( $partners_field ):
							echo '<ul class="partners">';
								foreach ($partners_field as $field) {
									echo '<li><img src="'.$field['partner_logo'].'" width="92"></li>';
								}
							echo "</ul>";
						endif;
						?>


					</div>
				</div>
			</div>
		</div>

	<?php echo $DB_Content->get_section_spacer('100'); ?>

</footer>

<!-- Modal: SF Form-->
<?php if ( !is_page('contact') ): ?>
<div class="modal fade" id="dfp-sf-form-modal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span class="pe-7s-close"></span>
		</button>
	  </div>
      <div class="modal-body">
		<i class="fas fa-comment"></i>
	  	<?php echo do_shortcode('[sidebar_content ids="14555"]'); ?>
      </div>
    </div>
  </div>
</div>
<?php endif ?>



<div class="social-share d-none d-lg-block">
	<?php //echo do_shortcode('[ssba-buttons]'); ?>
</div>

<?php wp_footer(); ?>

</body>
</html>
