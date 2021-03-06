<?php

include_once('inc/Base.php');
include_once('inc/Content.php');
include_once('inc/Helper.php');

include_once('inc/walkers/walkers.php');

// Remove admin bar on site
add_filter('show_admin_bar', '__return_false');

// *********************** Post Thumbnails
add_theme_support( 'post-thumbnails' );

add_image_size( 'banner-image', 1400, 500, true );

add_image_size( 'listing-image', 560, 560, true );
add_image_size( 'single-image', 560, 360, true );

add_image_size( 'slide-thumb', 460, 342, true );

add_image_size( 'thumb-sm', 140, 140, true );
add_image_size( 'thumb-md', 510, 340, true );
add_image_size( 'thumb-lg', 600, 600, true );
// add_image_size( 'news-thumb', 790, 99999, false ); // false -> resize no crop


// Pagination
function wp_pagination() {
  if( is_singular() )
    return;
  global $wp_query;
  /** Stop execution if there's only 1 page */
  if( $wp_query->max_num_pages <= 1 )
    return;
  $paged = get_query_var( 'paged' ) ? absint( get_query_var( 'paged' ) ) : 1;
  $max   = intval( $wp_query->max_num_pages );
  /** Add current page to the array */
  if ( $paged >= 1 )
    $links[] = $paged;
  /** Add the pages around the current page to the array */
  if ( $paged >= 3 ) {
    $links[] = $paged - 1;
    $links[] = $paged - 2;
  }
  if ( ( $paged + 2 ) <= $max ) {
    $links[] = $paged + 2;
    $links[] = $paged + 1;
  }
  echo '<div class="pagination"><ul>' . "\n";
  /** Previous Post Link */
  if ( get_previous_posts_link() ){
    printf( '<li class="prev">%s</li>' . "\n", get_previous_posts_link('<i class="material-icons">chevron_left</i>') );
  } else {
    printf( '<li class="prev disabled">%s</li>' . "\n", '<span><i class="material-icons">chevron_left</i></span>');
  }
  /** Link to first page, plus ellipses if necessary */
  if ( ! in_array( 1, $links ) ) {
    $class = 1 == $paged ? ' class="active"' : '';
    printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( 1 ) ), '1' );
    if ( ! in_array( 2, $links ) )
      echo '<li class="ellip">…</li>';
  }
  /** Link to current page, plus 2 pages in either direction if necessary */
  sort( $links );
  foreach ( (array) $links as $link ) {
    $class = $paged == $link ? ' class="active"' : '';
    printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( $link ) ), $link );
  }
  /** Link to last page, plus ellipses if necessary */
  if ( ! in_array( $max, $links ) ) {
    if ( ! in_array( $max - 1, $links ) )
      echo '<li class="ellip">…</li>' . "\n";
    $class = $paged == $max ? ' class="active"' : '';
    printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( $max ) ), $max );
  }
  /** Next Post Link */
  if ( get_next_posts_link() ){

    printf( '<li class="next">%s</li>' . "\n", get_next_posts_link('<i class="material-icons">chevron_right</i>') );
  } else {
    printf( '<li class="next disabled">%s</li>' . "\n", '<span><i class="material-icons">chevron_right</i></span>' );
  }
  echo '</ul></div>' . "\n";
}



function excerpt($text, $limit) {
	$excerpt = explode(' ',$text , $limit);
	if (count($excerpt)>=$limit) {
	  array_pop($excerpt);
	  $excerpt = implode(" ",$excerpt).'...';
	} else {
	  $excerpt = implode(" ",$excerpt);
	} 
	// $excerpt = preg_replace('`\[[^\]]*\]`','',$excerpt);
	$excerpt = str_replace(']]>', ']]&gt;', $excerpt);
	return $excerpt;
}



// Sidebar main content
function sidebar_content( $atts) {

  global $DB_Content;

  extract(shortcode_atts(array(
    'ids' => '14502|14504',
  ), $atts));

  $ids_arr = explode('|', $ids);

  $args = array( 
      'post_type'         => 'reusable-block',
      'post__in'          => $ids_arr, 
      'orderby'           => array( 'post__in' )
  );

  $query = new WP_Query($args);

  if ( $query->have_posts() ) :
  
      while ( $query->have_posts() ) : $query->the_post();

          $block = get_fields($post->ID);

          echo $DB_Content->pass_file_to_var('partials/content/'. $block['reusable_block_setup'] .'.php', $block);
  
      endwhile;
  
  endif;
  
  // Restore original post data.
  wp_reset_postdata();

}

add_shortcode( 'sidebar_content', 'sidebar_content' );



// Add Widget Area
function widgets_init() {

  register_sidebar( array(
      'name'          => __( 'Sidebar Widgets', 'dfp' ),
      'id'            => 'sidebar-widget',
      'description'   => __( '', 'dfp' ),
      'before_widget' => '<section id="%1$s" class="standard-content-block widget-block %2$s">',
      'after_widget'  => '</section>',
      'before_title'  => '<h4>',
      'after_title'   => '</h4>',
  ));

}
add_action( 'widgets_init', 'widgets_init' );


//Register tag cloud filter callback
function tag_widget_limit($args){

  if(isset($args['taxonomy']) && $args['taxonomy'] == 'post_tag'){
    $args['number'] = 16; //Limit number of tags
  }

 return $args;
}

add_filter('widget_tag_cloud_args', 'tag_widget_limit');





//  ACF Google Map API key
function dfp_acf_init() {
	acf_update_setting('google_api_key', 'AIzaSyCj3H1hUZKVCKqi15bIs1xK4EuxIBf2F5s');
}

add_action('acf/init', 'dfp_acf_init');


//to fix WP's admin double login bug
setcookie(TEST_COOKIE, 'WP Cookie check', 0, COOKIEPATH, COOKIE_DOMAIN);
if ( SITECOOKIEPATH != COOKIEPATH ) setcookie(TEST_COOKIE, 'WP Cookie check', 0, SITECOOKIEPATH, COOKIE_DOMAIN);
