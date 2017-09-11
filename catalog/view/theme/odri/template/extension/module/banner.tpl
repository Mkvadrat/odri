<div class="container">
	<div class="row">
		<main class="main-index">
			<div class="col-md-12">
				<div class="slider">
					<div class="owl-carousel owl-theme">
						<?php foreach ($banners as $banner) { ?>
						<div class="item">
							<?php if ($banner['link']) { ?>
							<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
							<?php } else { ?>
							<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
							<?php } ?>
						</div>
						<?php } ?>
					</div>
				</div>
				<div class="banner">
					<div class="enter-shop">
						<a href="<?php echo $login; ?>"><span>Войти</span>в магазин</a>
					</div>
					<img src="catalog/view/theme/odri/image/banner.jpg" alt="">
				</div>			
			</div>
		</main>
	</div>
</div>
		
<script>
$(document).ready(function(){
	$('.owl-carousel').owlCarousel({
		loop:true,
		margin:10,
		nav:false,
		autoplay:true,
		smartSpeed:2000,
		autoplayTimeout:5000,
		dots:true,
		stopOnHover:true,
		navigationText:["",""],
		rewindNav:true,
		pagination:true,
		responsive:{
			0:{
					items:1
			},
			600:{
					items:1
			},
			1000:{
					items:1
			}
		}
	});
});
</script>

