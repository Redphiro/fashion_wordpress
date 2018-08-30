<?php get_header ();?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
<section id="banner">
        	<img src="<?php echo get_bloginfo('template_url'); ?>/img/banner.jpg">
            <div class="contenedor">
            	<h2>Fashion Jeans</h2>
                <p>Moda de los 90s</p>
                <a href="#">Leer Mas</a>
        	</div>
        </section>
	<main>
    	<section id="noticia-interior">
            <hr />
           	<h2><?php echo get_the_title(); ?></h2>
            <hr />
           <div class="row">
              <article class="columnas">         
              <p><img src="<?php echo imageFeatured($post->ID,'full'); //tamaños son: thumbnail, medium, large, full ?>" class="img-responsive" style="width: 100%"></p>
			   </article>
            
              <article class="columnas">
              <p><?php echo get_the_content(); ?></p>
              <a class="boton-volver" href="<?php echo get_bloginfo('url'); ?>/noticias">&laquo; Listado noticias</a>
               </article>      
		   </div>
        </section>
        
      
   </main>

<?php endwhile; else: endif; ?>
<?php get_footer ();?>