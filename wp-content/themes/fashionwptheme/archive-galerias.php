<?php get_header ();?>


        <!--Contenedor Galeria-->
        <section id="galeria">
       
           <?php
		   $my_query = new WP_Query('pagename=galerias-page');
			while($my_query->have_posts()) : $my_query->the_post(); $do_not_duplicate = $post->ID;
           ?>
           
        	<h2><?php echo get_the_title(); ?></h2>
            <p><?php echo get_the_content(); ?></p>
			
			<?php endwhile; ?>
           <div class="contenedor">
          	     <?php
               	global $paged;
			   	$my_query_current = $paged ? $paged : 1;
			   	$my_query_args = array('paged' => $my_query_current,
			                          'post_type' => 'galerias',
									  'tipo_galerias' => $_GET['tipo'],
									  );
				$my_query = new WP_Query($my_query_args);
				while ($my_query->have_posts()) : $my_query->the_post(); $do_not_duplicate = $post->ID; 					  
            
            ?>
            <article>
            	<img src="<?php echo imageFeatured($post->ID,'full'); //tamaños son: thumbnail, medium, large, full ?>" class="img-responsive" style="width: 100%">
                <h3><?php echo get_the_title(); ?></h3>
                <a href="<?php echo get_permalink(); ?>"><div class="leer-mas-boton">Leer Más >></div></a>
            
            </article>
               <?php 
				endwhile; 
			  ?>
              </div>
              
              
              
            
            
        </section>
        
        <!--/Contenedor Galeria-->
     
   </main>


<?php get_footer ();?>