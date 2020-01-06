<?php
/* Smarty version 3.1.32, created on 2020-01-06 03:13:57
  from 'C:\xampp\tpl_jamzonline\contenido6.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5e1297e5a9d412_62494530',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '44b5e0a22d077f1512226c84a5fe1af7be3346cc' => 
    array (
      0 => 'C:\\xampp\\tpl_jamzonline\\contenido6.tpl',
      1 => 1578276834,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e1297e5a9d412_62494530 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['opcion']->value != '') {?>
		<?php if ($_smarty_tpl->tpl_vars['modulo']->value != '') {?>
		<?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['modulo']->value).((string)$_smarty_tpl->tpl_vars['VERSION']->value).".tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
	<?php } else { ?>
		<img src="imagenes/perro_bravo.jpg" width="80%">
	<?php }
} else { ?>
	 	<!-- 	<img src="imagenes/fondo.jpg" width="80%"> -->
		<div class="container">
		<h2>Ver Perfil del Creador Sitio Web.</h2>
		<p>Los programadores del mañana son los magos del futuro. Gabe Newell</p>

		<!-- Button to Open the Modal -->
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
		Abrir Perfil
		</button>

		<!-- The Modal -->
		<div class="modal fade" id="myModal">
		<div class="modal-dialog">
		  <div class="modal-content">
		  
		    <!-- Modal Header -->
		    <div class="modal-header">
		      <h4 class="modal-title"><?php echo $_smarty_tpl->tpl_vars['AUTOR']->value;?>
</h4>
		          <br>
		          <div class="card" style="width:400px">
		            <img class="card-img-top" src="imagenes/photo.png" alt="Card image">
		          </div>
		      <button type="button" class="close" data-dismiss="modal">&times;</button>
		    </div>
		    
		    <!-- Modal body -->
		    <div class="modal-body">
		       <div class="card-body">
		          <p class="card-text">Hola Amigos, Soy <?php echo $_smarty_tpl->tpl_vars['AUTOR']->value;?>
Desarrollador Junior especializado en el lenguaje de Programacion PHP (Hypertext Pre-Processor), para ser sincero les comento que me encanta la Programacion, ya que bien pueden verlo les demuestro todo mi talento con lo aprendido y desarrollado en los utimos meses, hago mencion especial al al SENA y a el Insituto <a href="https://www.intecap.edu.co" >INTECAP</a> se los recomiendo es muy bueno para hacer capacitaciones en Desarrollo Software. 
		          <br> 
		          Quiero Expresarles mis mas sinceros agradecimientos por haber ingresado y leido este comentario, 
		          <strong> de ante mano que todo lo que quiera le sea consedido si es con disciplina y esfuerzo que lucho por ello. <strong>
		          <br>
		          By. Jamz Garcia
		          <br>
		          <strong>Feliz Dia.</strong>
		          <br>
		          <small> Publicacado el 05 de Enero de 2020.</small></p>
		        </div>
		    </div>
		    
		    <!-- Modal footer -->
		    <div class="modal-footer">
		      <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		    </div>
		    
		  </div>
		</div>
		</div>

		</div>
		<br>

		<div class="container">
		<h2>Instituto Tecnico de Capacitacion INTECAP</h2>
		<p>#SmartyPHP</p>
		<div class="card img-fluid" style="width:300px height: 600px">
		<img class="card-img-top" src="imagenes/WEBAVANZADO2.jpg" alt="Card image" style="width:100%">
		<div class="card-img-top">
		  <h4 class="card-title">#PHP_AVANZADO</h4>
		  <p class="card-text" style="color: red;">Curso WEB PHP 2018 - 2020</p>
		</div>
		</div>
		</div>

		<br>
<?php }
}
}
