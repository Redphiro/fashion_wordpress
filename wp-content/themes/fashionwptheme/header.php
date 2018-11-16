<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
<link rel="stylesheet" type="text/css" href="<?php echo get_bloginfo('template_url');?>/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<?php echo get_bloginfo('template_url');?>/lightgallery/css/lightgallery.css">
<link rel="stylesheet" type="text/css" href="<?php echo get_bloginfo('template_url');?>/css/fontello.css">
<link rel="stylesheet" type="text/css" href="<?php echo get_bloginfo('template_url');?>/css/estilos.css">
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
            <nav class="menu">
              <!--
                <a href="<?php echo get_bloginfo('url'); ?>">Inicio</a>
                <a href="<?php echo get_bloginfo('url'); ?>/#galeria">Galeria</a>
                <a href="<?php echo get_bloginfo('url'); ?>/#blog">Blog</a>
                <a href="<?php echo get_bloginfo('url'); ?>/#contacto">Contacto</a>
                -->
                <?php wp_nav_menu(
					array(
					  'container' => false,
					  'items_wrap' => '<ul>%3$s</ul>',
					  'theme_location' =>'menu'
					  						
				     ));
				?>
            </nav>
         </div>
     </header>
	
<main>
	<?php if(is_home()): ?>
    	
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="3000">
			<ol class="carousel-indicators">
				<?php
				$contador = 0;
		   		$my_query = new WP_Query('post_type=banners');
				while($my_query->have_posts()) : $my_query->the_post(); $do_not_duplicate = $post->ID;
				
				if($contador == 0){
					$active = 'active';
				}
				else{
					$active = '';
				}
           		?>
				<li data-target="#carousel-example-generic" data-slide-to="<?php echo $contador; ?>" class="<?php echo $active; ?>"></li>
				<?php $contador++; endwhile; ?>
			</ol>
			<div class="carousel-inner" role="listbox">
				<?php
				$contador = 0;
		   		$my_query = new WP_Query('post_type=banners');
				while($my_query->have_posts()) : $my_query->the_post(); $do_not_duplicate = $post->ID;
				
				if($contador == 0){
					$active = 'active';
				}
				else{
					$active = '';
				}
           		?>
				<div class="item <?php echo $active; ?>">
					<!-- -->
					<section id="banner" class="home">
						<?php
						$imagen = get_field('banner_imagen');
						?>
						<div class="fondo" style="background-image: url('<?php echo $imagen['url']; ?>'); background-position: center <?php echo get_field('banner_alineacion'); ?>%"></div>
						<div class="contenedor">
							<div class="items">
								<h2><?php echo get_the_title(); ?></h2>
								<p><?php echo get_field('banner_subtitulo'); ?></p>
								<a href="<?php echo get_field('banner_link'); ?>">Leer Mas</a>
							</div>
						</div>
					</section>
					<!-- -->
				</div>
				<?php $contador++; endwhile; ?>
			</div>
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
		
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	
	<?php else: ?>
		<section id="banner">
        	<!--<img src="<?php echo get_bloginfo('template_url'); ?>/img/banner.jpg">-->
			<div class="fondo" style="background-image: url('<?php echo get_bloginfo('template_url'); ?>/img/banner.jpg'); background-position: center top"></div>
            <div class="contenedor">
            	<div class="items">
					<h2>Fashion Jeans 3</h2>
					<p>Moda de los 90s</p>
					<a href="#">Leer Mas</a>
				</div>
        	</div>
        </section>
	<?php endif; ?>