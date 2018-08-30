<?php
/*
Template name: Galeria
*/
get_header ();?>
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
       
  
        	<h2><?php echo get_the_title(); ?></h2>
            <p><?php echo get_the_content(); ?></p>
			
			<?php endwhile; ?>
            <div class="contenedor" id="lightgallery">
            	<?php if( get_post_field('galerias_tipo', $post->ID) == 'galerias'): ?>	
        				<!--Fotos-->
                        <?php 

							$images = get_fields('');
							
							print_r($images);
						
							if( $images ): ?>
								
									<?php foreach( $images as $image ): ?>
										<a href="<?php /*echo $image['url'];*/ /*print_r($image);*/ ?>">
											 <img src="<?php echo $image['sizes']['thumbnail']; ?>" style="width: 100%">
										</a>
									<?php endforeach; ?>
                        
                        <!--/Fotos-->
            
                	<?php endif; ?>
                <?php endif;?>
            
            </div>
            
        </section>
        
        <!--/Contenedor Galeria-->
     
   </main>
<?php  else: endif; ?>

<?php get_footer ();?>