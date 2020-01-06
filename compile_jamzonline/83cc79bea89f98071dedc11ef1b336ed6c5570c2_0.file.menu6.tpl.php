<?php
/* Smarty version 3.1.32, created on 2020-01-06 01:46:40
  from 'C:\xampp\tpl_jamzonline\menu6.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5e128370f32ff6_31870814',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '83cc79bea89f98071dedc11ef1b336ed6c5570c2' => 
    array (
      0 => 'C:\\xampp\\tpl_jamzonline\\menu6.tpl',
      1 => 1578266827,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e128370f32ff6_31870814 (Smarty_Internal_Template $_smarty_tpl) {
?><!-- Sidebar -->
<ul class="sidebar navbar-nav">
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['tabla_menus']->value, 'fila');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['fila']->value) {
?>
	<li class="nav-item active">
	  <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['fila']->value['url'];?>
">
	    <?php echo $_smarty_tpl->tpl_vars['fila']->value['icono'];?>

	    <span><?php echo $_smarty_tpl->tpl_vars['fila']->value['titulo'];?>
</span>
	  </a>
	</li>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</ul><?php }
}
