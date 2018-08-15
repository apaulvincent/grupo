<nav class="main-menu">
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


<nav class="mobile-toggles">
	<ul>
		<li>
			<button class="mobile-main-nav-toggle">
				<span></span>
			</button>
		</li>
	</ul>
</nav>
