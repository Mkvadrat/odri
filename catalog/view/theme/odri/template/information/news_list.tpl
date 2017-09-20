<?php echo $header; ?>
	
	<!-- start main -->
	
	<div class="container">
		<div class="row">
			<main class="main-akcii">
				<div class="col-md-3">
					<aside>
						<section>
							<?php echo $column_left; ?>
						</section>
					</aside>
				</div>
				<div class="col-md-6">
					<?php foreach ($all_news as $news) { ?>
					<?php if ($news['image']) { ?>
					<article>
						<h2 class="title-section"><?php echo $news['title']; ?></h2>
						<p class="end-date-promotion">Окончание: <time><?php echo $news['date_ended']; ?></time></p>
						<img src="<?php echo $news['image']; ?>" class="text-photo" />
						<p><?php echo $news['description']; ?>
						<a class="more-info" href="<?php echo $news['view']; ?>">Подробнее</a></p>
					</article>
					<?php }else{ ?>
					<article>
						<h2 class="title-section"><?php echo $news['title']; ?></h2>
						<p class="end-date-promotion">Окончание: <time><?php echo $news['date_ended']; ?></time></p>
						<p><?php echo $news['description']; ?>
						<a class="more-info" href="<?php echo $news['view']; ?>">Подробнее</a></p>
					</article>
					<?php } ?>
					<?php } ?>
					
					<article class="paggination-action">
						<p>Страницы:</p>
						<ul class="paggination-list">
							<?php echo $pagination; ?>
                        </ul>
					</article>	
				</div>
	
				<div class="col-md-3">
					<aside>
						<section>
							<?php echo $column_right; ?>
						</section>
					</aside>
				</div>
			</main>
		</div>
	</div>
	
	<!-- end main -->
		
<?php echo $footer; ?> 