<?php
/*
Template name: Galeria
*/
get_header ();?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

        <!--Contenedor Galeria-->
        <section id="galeria">
       
  
        	<h2><?php echo get_the_title(); ?></h2>
            <p><?php echo get_the_content(); ?></p>
			
			<?php endwhile; ?>
            <div class="contenedor" id="lightgallery">
            	<?php if( get_post_field('galerias_tipo', $post->ID) == 'galerias'): ?>	
        				<!--Fotos-->
                        <?php 

							$images = get_field('galerias_fotos');
				
							$gallery_item = $images;
							$gallery_limit = intval(get_field('galerias_fotos_paginas')); // 4
							$gallery_number = ((int)$_GET['num']) ? $_GET['num'] : 0; 
							$gallery_page = ((int)$_GET['pag']) ? $_GET['pag'] : 1; 
							$gallery_total = sizeof($gallery_item);
							$gallery_pages = ($gallery_total % $gallery_limit) ? intval($gallery_total / $gallery_limit) + 1 : intval($gallery_total / $gallery_limit);
							$gallery_counter = (($gallery_number + $gallery_limit) <= sizeof($gallery_item)) ? ($gallery_number + $gallery_limit) : sizeof($gallery_item);
							
							//print_r($images);
						
							if( $images ): ?>
								
								<?php for($num = $gallery_number; $num < $gallery_counter; $num++): $image = $gallery_item[$num]; ?>
									<div class="col-md-3">
                                    <a href="<?php echo $image['url']; /*print_r($image);*/ ?>">
										 <img src="<?php echo $image['sizes']['thumbnail']; ?>" style="width: 100%;">
									</a>
                                    </div>
								<?php endfor; ?>

                			<?php endif; ?>
				
                <?php endif;?>
            </div>
            
            
        </section>
	    
		<section class="paginacion">
			<ul>
				<?php custom_paginator($gallery_number, $gallery_limit, $gallery_total); ?>
			</ul>
		</section>
        
        <!--/Contenedor Galeria-->
     
   </main>
<?php  else: endif; ?>

<?php get_footer ();?>