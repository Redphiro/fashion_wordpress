<?php

/*
 * Custom excerpt word limit
 * Info: It will affect to get_the_excerpt();
 */
function custom_excerpt_length($length)
{
	global $typenow;
	$amount = 25;
	
	//if("page" == $typenow){ 
	//	$amount = 150; 
	//}
	
	return $amount;
}
add_filter('excerpt_length', 'custom_excerpt_length', 999);
/*
 * Custom excerpt append word
 * Info: It will affect to get_the_excerpt();
 */
function custom_excerpt_more($more)
{
    return ' ...';
}
add_filter('excerpt_more', 'custom_excerpt_more');

//Paginador galerias
function custom_paginator($offset, $limit, $totalnum)
	{
		
		if ($totalnum > $limit)
		{
			$pages = intval($totalnum / $limit);

			if ($totalnum % $limit){
				$pages++;
			}
			if(($offset + $limit) > $totalnum){
				$lastnum = $totalnum;
			}
			else{
				$lastnum = ($offset + $limit);
			}
			if(isset($_GET['pag'])){ 
				$pageCurrent = $_GET['pag'];
			}
			else{
				$pageCurrent = 1;
			}
			
			$pagePrev = $pageCurrent-1; $pageNumPrev = ($pageCurrent*$limit)-$limit*2;
			$pageNext = $pageCurrent+1; $pageNumNext = $pageCurrent*$limit;
			
			if($pagePrev <= 1){
				$pagePrev = 1;
				$pageNumPrev = 0;
			} 
			if($pageNext > $pages){
				$pageNext = $_GET['pag'];
				$pageNumNext = $_GET['num'];
			}
			echo '<li><a class="prev" href="?pag='.$pagePrev.'&num='.$pageNumPrev.'">&laquo;</a></li>';	
				for($i = 1; $i <= $pages; $i++)
				{
					$newoffset = $limit * ($i - 1);

					if($newoffset != $offset) 
					{
						echo '<li><a href="?pag='.$i.'&num='.$newoffset.'">'.$i.'</a></li>';
					} 
					else
					{
						echo '<li><a href="?pag='.$i.'&num='.$newoffset.'" class="active">'.$i.'</a></li>';
					}
				}
			echo '<li><a class="next" href="?pag='.$pageNext.'&num='.$pageNumNext.'">&raquo;</a></li>';
		}
		return;
	}

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