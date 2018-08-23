<nav class="main-menu d-none d-xl-block">
	<ul>
	<?php
		wp_nav_menu(array(
			'menu' => 'Main Menu',
			'menu_class' => '',
			'container' => '',
			'container_class' => '',
			'before' => '',
			'after' => '',
			'link_before' => '',
			'link_after' => '<i class="material-icons">expand_more</i>',
			'items_wrap' => '%3$s',
		));
	?>
	</ul>
</nav>

<?php include(locate_template('partials/common/contact-info.php')); ?>

<nav class="mobile-toggles d-xl-none">
	<ul>
		<li>
			<button id="menu-toggle" class="menu-toggle material-icons">menu</button>
		</li>
	</ul>
</nav>
