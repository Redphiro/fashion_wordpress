<?php get_header ();?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
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
            	
                     
               
                 
                  
                   
        	</div>
            
        </section>
        
        <!--/Contenedor Galeria-->
     
   </main>
<?php endwhile; else: endif; ?>

<?php get_footer ();?>