<?php get_header ();?>
<main>
    	<section id="banner">
        	<img src="img/banner.jpg">
            <div class="contenedor">
            	<h2>Fashion Jeans</h2>
                <p>Moda de los 90s</p>
                <a href="#">Leer Mas</a>
        	</div>
        </section>
        
        <section id="contacto">
           <h3>Contacto</h3>
        	<div class="contenedor">
				<form action="">
				<input type="text" name="nombre" class="nombre" placeholder="Nombres">
				<input type="text" name="apellido" class="apellido" placeholder="Apellidos">
				<input type="email" name="correo" class="correo" placeholder="Correo">
				<input type="tel" name="telefono" class="telefono" placeholder="Telefono">
				<textarea name="mensaje" id="" class="mensaje" placeholder="Mensaje:"></textarea>
				<button  name="enviar" id="boton" class="boton_envio">Enviar</button>
			
			</form>
		   </div>
        </section>
        
      
   </main>


<?php get_footer ();?>