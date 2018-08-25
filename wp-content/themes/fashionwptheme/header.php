<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
<link rel="stylesheet" type="text/css" href="<?php echo get_bloginfo('template_url');?>/css/fontello.css">
<link rel="stylesheet" type="text/css" href="<?php echo get_bloginfo('template_url');?>/css/estilos.css">
<link rel="stylesheet" type="text/css" href="<?php echo get_bloginfo('template_url');?>/lightgallery/css/lightgallery.css">
<title>Fashion Wordpress</title>
</head>

<body>
	<header>
		<div class="contenedor">
        	<h1 class="logo">Jeans</h1>
             <input type="checkbox" id="menu-bar">
            <label class="icon-menu" for="menu-bar"></label>
            <!--<label class="fontawesome-align-justify" for="menu-bar"></label>-->
            <!--<nav class="menu">-->
            <nav>
              <!--
                <a href="<?php echo get_bloginfo('url'); ?>">Inicio</a>
                <a href="<?php echo get_bloginfo('url'); ?>/#galeria">Galeria</a>
                <a href="<?php echo get_bloginfo('url'); ?>/#blog">Blog</a>
                <a href="<?php echo get_bloginfo('url'); ?>/#contacto">Contacto</a>
                -->
                <?php wp_nav_menu(
					array(
					  'container' => false,
					  'items_wrap' => '<ul class="menu">%3$s</ul>',
					  'theme_location' =>'menu'
					  						
				     ));
				?>
            </nav>
         </div>
     </header>