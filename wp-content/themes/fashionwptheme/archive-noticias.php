<?php get_header ();?>

        <section id="blog">
             <?php
		   $my_query = new WP_Query('pagename=noticias-page');
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
                <a href="<?php echo get_permalink(); ?>"><div class="btn leer-mas-boton">Leer Más >></div></a>
            
            </article>
               <?php 
				endwhile; 
			  ?>
              <section class="paginacion">
              	<ul>
                	<!--<li><a href="#">&laquo;</a></li>
					<li><a href="pagina1.html" class="active">1</a></li>
					<li><a href="pagina2.html">2</a></li>
					<li><a href="pagina3.html">3</a></li>
					<li><a href="pagina4.html">4</a></li>
					<li><a href="pagina5.html">5</a></li>
                    <li><a href="#">&raquo;</a></li>-->
                    <?php
					   $totalPageLimit = $my_query->query_vars['posts_per_page'];
					   $totalPosts = $my_query->found_posts;
					   if($totalPosts > $totalPageLimit):
			$botonAnterior = get_pagenum_link(($my_query_current-1 > 0 ? $my_query_current-1 : 1));
			$botonSiguiente = get_pagenum_link(($my_query_current+1 <= $my_query->max_num_pages ? $my_query_current+1 : $my_query->max_num_pages));
				echo '<li><a href="'.$botonAnterior.'">
						&laquo;
					  </a> </li>';
					  
					    for($numPagina=1;$numPagina<=$my_query->max_num_pages;$numPagina++)
						{
						$paginaActiva = ($numPagina == $my_query_current ? 'active' : '');
						
                    	echo '<li><a class="'.$paginaActiva.'" href="'.get_pagenum_link($numPagina).'">'.$numPagina.'</a></li>';
                    	}
						 echo '<li>
					  <a href="'.$botonSiguiente.'">
						&raquo;
					  </a>
					</li>';
           			 wp_reset_postdata();
        			endif;
						
			
					?>
                   
                  
                    
                    
			   </ul>
              
               
            
              </section>
            </div>
            
            
        </section>
        
        
     
   </main>

<?php get_footer ();?>