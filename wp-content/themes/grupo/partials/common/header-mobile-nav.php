<div id="mobile-main-nav-drawer" class="mobile-main-nav-drawer">

	<button class="menu-toggle material-icons">close</button>

	<?php
		wp_nav_menu(array(
			'menu' => 'Main Menu',
			'menu_class' => 'menu-inner',
			'container' => '',
			'container_class' => '',
			'before' => '', 
			'after' => '',
			'link_before' => '<span class="nav-text">',
			'link_after' => '</span>',
		));
	?>
</div>
<div id="mobile-nav-overlay" class="mobile-nav-overlay"></div>