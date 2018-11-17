<?php get_header(); ?>
    
        <section id="bienvenidos">
        	<h2>Bienvenido</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu quam laoreet, lacinia lectus vitae, efficitur lorem. Etiam vel rutrum elit, quis sodales erat. Sed congue urna ut libero egestas cursus. Suspendisse turpis nulla, mollis sit amet ullamcorper et, placerat quis lacus. Sed vel arcu scelerisque.</p>
        </section>
        
        <section id="blog">
        
        	<h3>Lo ultimo de nuestro blog</h3>
            <div class="contenedor">
            <!--<article>
            	<img src="<?php echo get_bloginfo('template_url'); ?>/img/articulo-1.jpg">
            	<h4>Articulo 1</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </article>
            
            <article>
            	<img src="<?php echo get_bloginfo('template_url'); ?>/img/articulo-2.jpg">
            	<h4>Articulo 2</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </article>
            
            <article>
            	<img src="<?php echo get_bloginfo('template_url'); ?>/img/articulo-3.jpg">
            	<h4>Articulo 3</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </article>-->
            
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
               <div class="img-noticia" style="background-image: url('<?php echo imageFeatured($post->ID,'full'); //tamaños son: thumbnail, medium, large, full ?>');">
            	<!--<img src="<?php //echo imageFeatured($post->ID,'medium'); //tamaños son: thumbnail, medium, large, full ?>">-->
                </div>
                <h4><?php echo get_the_title(); ?></h4>
                <p><?php echo get_the_excerpt(); ?></p>
                <a href="<?php echo get_permalink(); ?>"><div class="btn leer-mas-boton">Leer Más >></div></a>
            
            </article>
               <?php 
				endwhile; 
			  ?>
            </div>
        </section>
        <section id="info">
        	<h3>Nuestras Marcas Asociadas</h3>
            <div class="contenedor">
             <!--
            		<div class="info-fashion">
                    	<img src="<?php echo get_bloginfo('template_url'); ?>/img/calvinklein.jpg">
                        <h4>Calvin Klein</h4>
                    </div>
                    
                    <div class="info-fashion">
                    	<img src="<?php echo get_bloginfo('template_url'); ?>/img/lee.jpg">
                        <h4>Lee</h4>
                    </div>
                    
                    <div class="info-fashion">
                        <img src="<?php echo get_bloginfo('template_url'); ?>/img/wrangler.jpg">
                        <h4>Wrangler</h4>
                    </div>
                    
                    <div class="info-fashion">
                       <img src="<?php echo get_bloginfo('template_url'); ?>/img/levis.jpg">
                       <h4>Levis</h4>
                    </div>
                   -->
             <?php
               global $paged;
			   $my_query_current = $paged ? $paged : 1;
			   $my_query_args = array('paged' => $my_query_current,
			                          'post_type' => 'marcas',
									  'tipo_marcas' => $_GET['tipo'],
									  );
				$my_query = new WP_Query($my_query_args);
				while ($my_query->have_posts()) : $my_query->the_post(); $do_not_duplicate = $post->ID; 					  
            
            ?>
             <div class="info-fashion">
                <img src="<?php echo imageFeatured($post->ID,'full'); //tamaños son: thumbnail, medium, large, full ?>">
                <h4><?php echo get_the_title(); ?></h4>
             </div>      
            
            <?php
			 endwhile;
			
			?>
                   
            </div>
        
        </section>
	</main>
 <?php get_footer(); ?>   