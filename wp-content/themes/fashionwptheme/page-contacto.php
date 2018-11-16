<?php get_header ();?>

        
        <section id="contacto">
           <h3>Contacto</h3>
        	<div class="contenedor">
				
				<?php
				$formulario_vacio = false;
				$formulario_enviado = false;
				
				//Ckeck si se envio el formulario
				if( isset($_POST['nombre']) &&
				    isset($_POST['apellido']) &&
				    isset($_POST['correo']) &&
				    isset($_POST['telefono']) &&
				    isset($_POST['mensaje']) )
				{
					//Check si estan vacios los campos
					if( empty($_POST['nombre']) &&
					    empty($_POST['apellido']) &&
					    empty($_POST['correo']) && 
					    empty($_POST['telefono']) &&
					    empty($_POST['mensaje']) )
					{
						$formulario_vacio = true;
						$formulario_enviado = false;
					}
					else //Si no estan vacios continuar
					{
						$formulario_vacio = false;
						$formulario_enviado = true;
						
						$correo_destinatario = 'admin@gznetwork.com';
						$correo_cabeceras = array('Content-Type: text/html; charset=UTF-8');
						$correo_asunto = 'Contacto sitio web de '.$_POST['correo'];
						$correo_html = '<h1>Contacto sitio web</h1>
										<hr>
										<ul>
											<li>Nombre: '.$_POST['nombre'].'</li>
											<li>apellido: '.$_POST['apellido'].'</li>
											<li>correo: '.$_POST['correo'].'</li>
											<li>telefono: '.$_POST['telefono'].'</li>
											<li>mensaje: '.str_replace("\n",'<br>',$_POST['mensaje']).'</li>
										</ul>'; //Comillas dobles aceptan simbolos como \n
					
						wp_mail($correo_destinatario, $correo_asunto, $correo_html, $correo_cabeceras);
					}
				}
				?>
				
				<?php if($formulario_enviado == true): ?>
				
				<p>Se han enviado los datos correctamente</p>
				
				<?php else: ?>
				
					<?php if($formulario_vacio == true): ?>
				
					<p>Por favor rellene los campos</p>
				
					<?php endif; ?>
				
					<form action="<?php echo get_bloginfo('url'); ?>/contacto" method="post">
						<!-- Campos -->
						<input type="text" name="nombre" class="nombre" placeholder="Nombres" value="<?php echo $_POST['nombre']; ?>">
						<input type="text" name="apellido" class="apellido" placeholder="Apellidos" value="<?php echo $_POST['apellido']; ?>">
						<input type="email" name="correo" class="correo" placeholder="Correo" value="<?php echo $_POST['correo']; ?>">
						<input type="tel" name="telefono" class="telefono" placeholder="Telefono" value="<?php echo $_POST['telefono']; ?>">
						<textarea name="mensaje" id="" class="mensaje" placeholder="Mensaje:"><?php echo $_POST['mensaje']; ?></textarea>
						<!-- Campos -->
						<button name="enviar" id="boton" class="boton_envio">Enviar</button>
					</form>
				
				<?php endif; ?>
		   </div>
        </section>
        
      
   </main>


<?php get_footer ();?>