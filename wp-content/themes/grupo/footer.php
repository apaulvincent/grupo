<?php global $DB_Content; ?>

</div><!-- Site Wrap -->

<footer class="site-footer">

	<?php echo $DB_Content->get_section_spacer('60', ['d-none', 'd-lg-block']); ?>
	<?php echo $DB_Content->get_section_spacer('30', ['d-lg-none']); ?>
	
		<div class="container">
			<div class="row">

				<div class="col-12 col-lg-2 d-none d-xl-block">
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


				<div class="col-12 col-md-12 col-lg-5 order-lg-3">

					<?php include(locate_template('partials/common/contact-info.php')); ?>

					<div class="social">
						<h5 class="d-none d-lg-block">Follow Us</h5>
						<?php include(locate_template('partials/common/socials.php')); ?>
					</div>

				</div>


				<div class="col-12 col-lg-7 col-xl-5 ">
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


			</div>
		</div>

		<?php echo $DB_Content->get_section_spacer('20', ['d-none', 'd-lg-block']); ?>
		<?php echo $DB_Content->get_section_spacer('30', ['d-lg-none']); ?>


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


<button class="floating-btn btn btn-2 btn-lg grupo-form-modal-btn"><i class="material-icons">message</i>Enquire</button>

<!-- Modal: Form-->
<div class="modal fade grupo-form-modal" id="grupo-form-modal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-mdx modal-dialog-centered" role="document">
    <div class="modal-content">
	<div class="modal-header text-right">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<i class="material-icons">close</i>
		</button>
	  </div>
      <div class="modal-body">
	  	<?php echo do_shortcode('[contact-form-7 id="355" title="Send us an enquiry"]'); ?>
      </div>
    </div>
  </div>
</div>

<?php wp_footer(); ?>

</body>
</html>