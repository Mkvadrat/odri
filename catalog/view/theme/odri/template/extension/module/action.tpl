<p class="title-section">Акции</p>
<ul class="list-text">
	<?php if($all_news){ ?>
	<?php foreach ($all_news as $news) { ?>
		<li><a href="<?php echo $news['view']; ?>"><?php echo $news['title']; ?></a></li>
	<?php } ?>
	<?php } ?>
</ul>
               