<?php get_header ();?>

<main>
    	<section id="banner">
        	<img src="<?php echo get_bloginfo('template_url'); ?>/img/banner.jpg">
            <div class="contenedor">
            	<h2>Fashion Jeans</h2>
                <p>Moda de los 90s</p>
                <a href="#">Leer Mas</a>
        	</div>
        </section>
        <section id="blog">
             <?php
		   $my_query = new WP_Query('pagename=noticias');
			while($my_query->have_posts()) : $my_query->the_post(); $do_not_duplicate = $post->ID;
           ?>
        	<h2><?php echo get_the_title(); ?></h2>
            <p><?php echo get_the_content(); ?></p>
			
			<?php endwhile; ?>
        	
            <div class="contenedor">
            <!--
            <article>
            	<img src="img/articulo-1.jpg">
            	<h4>Articulo 1</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </article>
            
            <article>
            	<img src="img/articulo-2.jpg">
            	<h4>Articulo 2</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </article>
            
            <article>
            	<img src="img/articulo-3.jpg">
            	<h4>Articulo 3</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </article>
            -->
            <?php
               global $paged;
			   $my_query_current = $paged ? $paged : 1;
			   $my_query_args = array('paged' => $my_query_current,
			                          'post_type' => 'noticias',
									  'tipo_noticias' => $_GET['tipo'],
									  );
				$my_query = new WP_Query($my_query_args);
				while ($my_query->have_posts()) : $my_query->the_post(); $do_not_duplicate = $post->ID; 					  
            
            ?>
            <article>
            	<img src="<?php echo imageFeatured($post->ID,'medium'); //tamaños son: thumbnail, medium, large, full ?>">
                <h4><?php echo get_the_title(); ?></h4>
                <p><?php echo get_the_excerpt(); ?></p>
                <a href="<?php echo get_permalink(); ?>"><div class="leer-mas-boton">Leer Más >></div></a>
            
            </article>
               <?php 
				endwhile; 
			  ?>
            
            
            
            </div>
            
            
        </section>
        
        
     
   </main>

<?php get_footer ();?>