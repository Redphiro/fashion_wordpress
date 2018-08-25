
<?php

//Habilitar campos para editor de template
$customize_theme_fields = array( //slug - titulo boton - descripcion - instruccion - valor x defecto
								array('header-titulo' => array('Titulo Sitio Web','Titulo general del sitio','Ingrese titulo','Mi Sitio Web')),
								array('header-subtitulo' => array('Texto Banner','Texto inicial del header','Ingrese sub titulo','Bienvenido')),
								array('header-banner' => array('URL Foto Banner','URL de la foto de fondo del header','Ingrese URL foto','#')),
								array('footer-texto' => array('Texto Footer','Texto del footer','Ingrese texto','Sitio web 2018')),
								);

//Funcion para leer los campos de editor de template
function custom_theme_settings($wp_customize)
{
	global $customize_theme_fields;
	
	foreach ($customize_theme_fields as $items)
	{
		foreach ($items as $key => $value)
		{
			$wp_customize->add_section(
				$key,
				array(
					'title' => $value[0],
					'description' => $value[1],
				)
			);
			$wp_customize->add_setting(
				$key,
				array(
					'default' => $value[3],
				)
			);
			$wp_customize->add_control(
				$key,
				array(
					'label' => $value[2],
					'section' => $key,
					'type' => 'text',
				)
			);
		}
	}
}
add_action('customize_register', 'custom_theme_settings');


/*function css_para_admin(){
	echo '<style type="text/css">
			body{
				background:red !important;
			}
		</style>';
}
add_action('admin_head', 'css_para_admin');*/

//Habilitar Menu para nuestro template
register_nav_menus(array('menu' => 'Menu Principal', ));




//Habilitar paginaciones para posttype
function custom_posts_per_page($query)
{
    if(!is_admin()){
        switch ($query->query_vars['post_type'])
        {
            case 'noticias':
                $query->query_vars['posts_per_page'] = 3;
                $query->query_vars['order'] = 'DESC';
                $query->query_vars['orderby'] = 'date';
                break;
				
			case 'galerias':
                $query->query_vars['posts_per_page'] = 3;
                $query->query_vars['order'] = 'DESC';
                $query->query_vars['orderby'] = 'date';
                break;
        }
        return $query;
    }
}
add_filter( 'pre_get_posts', 'custom_posts_per_page' );


//Obtener datos de taxonomia (term_id, name, slug, term_group, term_taxonomy_id, taxonomy, description, parent, count, etc...)
function get_taxonomy_data($type, $taxonomy, $id = null){
	$post_id = empty($id) ? get_the_ID() : $id;
	$post_terms = array_reverse(get_terms($taxonomy));
	$current_terms = wp_get_post_terms($post_id, $taxonomy, array('fields' => 'slugs')); 

	foreach($post_terms as $post_term){
		if (in_array($post_term->slug, $current_terms)){
			return $post_term->$type;
		}
	} 
}


//Habilitar imagenes destacadas
add_theme_support('post-thumbnails');



//Mostrar imagen destacada
function imageFeatured($featuredPost, $size = 'full')
{
    $src = wp_get_attachment_image_src( get_post_thumbnail_id($featuredPost), $size, false); //$post->ID
    return $src[0];
}


//OBtener ID de videos
function getVideoID($url)
{
	$videoCode = '';
	$videoID = '';

	if(strpos($url,'youtube') !== false){
		preg_match('/^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/', $url, $videoCode);
		$videoID = $videoCode[7];
	}
	elseif(strpos($url,'vimeo') !== false){
		preg_match('/^.*(vimeo\.com\/)((channels\/[A-z]+\/)|(groups\/[A-z]+\/videos\/))?([0-9]+)/', $url, $videoCode);
		$videoID = $videoCode[5];
	}
	elseif(strpos($url,'facebook') !== false){
		$videoID = $url;
	}

	return $videoID;
}





















//No cerrar con  ? >