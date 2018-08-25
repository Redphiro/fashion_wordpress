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
        <!--Contenedor Galeria-->
        <section id="galeria">
       
           <?php
		   $my_query = new WP_Query('pagename=galeria');
			while($my_query->have_posts()) : $my_query->the_post(); $do_not_duplicate = $post->ID;
           ?>
        	<h2><?php echo get_the_title(); ?></h2>
            <p><?php echo get_the_content(); ?></p>
			
			<?php endwhile; ?>
            <div class="contenedor" id="lightgallery">
            	
                 <a href="<?php echo get_bloginfo('template_url'); ?>/img/articulo-1.jpg">
            		<img src="<?php echo get_bloginfo('template_url'); ?>/img/articulo-1.jpg">
            	  </a>
            	
            
            	
                   <a href="<?php echo get_bloginfo('template_url'); ?>/img/articulo-2.jpg">
            		<img src="<?php echo get_bloginfo('template_url'); ?>/img/articulo-2.jpg">
            		</a>
            	
            
            	
                   <a href="<?php echo get_bloginfo('template_url'); ?>/img/articulo-3.jpg">
            		<img src="<?php echo get_bloginfo('template_url'); ?>/img/articulo-3.jpg">
            		</a>
            	
                
                
                   <a href="<?php echo get_bloginfo('template_url'); ?>/img/articulo-3.jpg">
            		<img src="<?php echo get_bloginfo('template_url'); ?>/img/articulo-3.jpg">
            		</a>
            	
                
              
                   <a href="<?php echo get_bloginfo('template_url'); ?>/img/articulo-3.jpg">
            		<img src="<?php echo get_bloginfo('template_url'); ?>/img/articulo-3.jpg">
            		</a>
            	
                
                
                   <a href="<?php echo get_bloginfo('template_url'); ?>/img/articulo-3.jpg">
            		<img src="<?php echo get_bloginfo('template_url'); ?>/img/articulo-3.jpg">
            		</a>
            	
            
        	</div>
            
        </section>
        
        <!--/Contenedor Galeria-->
     
   </main>



<?php get_footer ();?>