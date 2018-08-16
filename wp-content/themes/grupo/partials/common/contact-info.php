<?php

if($page_setup['show_banner'] == 0) {
	return;
}


$contact_info = get_field('contact_info_fields', 'option');


?>


<nav>
	<ul>

    <?php 
        echo $contact_info;
    ?>

		<li>
		</li>
	</ul>
</nav>