<?php

$contact_info = get_field('contact_info_fields', 'option');

?>

<nav class="contact-info">
	<ul>
	<?php 
		if( $contact_info ) {
			foreach ( $contact_info as $info) {

				// echo $info['contact_name'];

				echo '<li>';
				echo '<img src="'.$info['contact_flag'].'" width="35">';
				echo '<a href="tel:'.$info['contact_phone'].'"><strong>'.$info['contact_phone'].'</strong></a>';
				echo '</li>';

			}
		}
	?>
	</ul>
</nav>