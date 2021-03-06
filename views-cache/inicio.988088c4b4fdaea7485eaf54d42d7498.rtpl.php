<?php if(!class_exists('Rain\Tpl')){exit;}?><?php require $this->checkTemplate("topo-inicio");?>

	<?php if( $mensagemSucessoSugestao != '' ){ ?>
		<script>
			swal({
				title: "<?php echo htmlspecialchars( $mensagemSucessoSugestao, ENT_COMPAT, 'UTF-8', FALSE ); ?>",
			  	text: 'Obrigado pela sugestão.',
			  	icon: "success",
			});
		</script>
	<?php } ?>

	<!--<a rel="nofollow" href="/login" title="Login">-->
		<!--<div class="bg-home">-->
			<!-- <img src="/res/img/banner-01.jpg" alt="Curriculo" title="Curriculo"> -->
		<!--</div>-->
	<!--</a>-->

	<div class="titulo-page">
		<div class="wrapper">
			<h1 class="text-center">Currículo</h1>

			<p class="text-center">Crie currículos com muita facilidade, em um tempo curto. Com regras, templates utilizados no mercado de trabalho.</p>

			<div class="centralize">
				<a href="/como-funciona" class="btn" title="Saiba mais">Saiba mais</a>
			</div>
		</div>
	</div>

	<div class="crie-curriculo">
		<div class="wrapper">
			<h2 class="text-center">Crie já o seu currículo</h2>
			<ul class="thumb">
				<li class="dados-pessoais">
					<a rel="nofollow" href="/login" title="Dados pessoais" style="display: none;"><h2>Dados pessoais</h2></a>
				</li>

				<li class="nascionalidade">
					<a rel="nofollow" href="/login" title="Nascionalidade" style="display: none;"><h2>Nascionalidade</h2></a>
				</li>

				<li class="formacao-academica">
					<a rel="nofollow" href="/login" title="Formação academica" style="display: none;"><h2>Formação academica</h2></a>
				</li>
			</ul>

			<br class="clear">

			<div class="centralize">
				<a href="/cadastro" class="btn" title="Saiba mais">Faça seu cadastro</a>
			</div>
		</div>
	</div>

	<div class="clear"></div>

	<div class="contato-home">
		<div class="wrapper">
			<div class="entre-em-contato">
				<div class="grid">
					<div class="row">
						<div class="col-9 col-m-12 centralize">
							<h2>Entre em contato para nos dar sugestões.</h2>
						</div>
						<div class="centralize entre-em-contato-home col-3 col-m-12">
							<a href="/sugestao" title="Entre em contato" class="btn">Contato</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		
<?php require $this->checkTemplate("footer-inicio");?>