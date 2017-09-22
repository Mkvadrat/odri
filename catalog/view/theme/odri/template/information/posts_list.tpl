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
					<?php if($all_posts){ ?>
					<?php foreach ($all_posts as $post) { ?>
					<?php if ($post['image']) { ?>
					<article>
						<h2 class="title-section"><?php echo $post['title']; ?></h2>
						<p class="end-date-promotion">Дата публикации: <time><?php echo $post['date_added']; ?></time></p>
						<img src="<?php echo $post['image']; ?>" class="text-photo" />
						<p><?php echo $post['description']; ?>
						<a class="more-info" href="<?php echo $post['view']; ?>">Подробнее</a></p>
					</article>
					<?php }else{ ?>
					<article>
						<h2 class="title-section"><?php echo $post['title']; ?></h2>
						<p class="end-date-promotion">Дата публикации: <time><?php echo $post['date_added']; ?></time></p>
						<p><?php echo $post['description']; ?>
						<a class="more-info" href="<?php echo $post['view']; ?>">Подробнее</a></p>
					</article>
					<?php } ?>
					<?php } ?>
					<?php }else{ ?>
					<article>
					<h2 class="title-section">Статей не найдено!</h2>
					</article>
					<?php } ?>
					
					<?php if ($pagination) { ?>
					<article class="paggination-action">
						<p>Страницы:</p>
						<ul class="paggination-list">
							<?php echo $pagination; ?>
                        </ul>
					</article>
					<?php } ?>
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