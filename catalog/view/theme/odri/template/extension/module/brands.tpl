<p class="title-section">Новые бренды</p>
<ul class="list-brands-aside">
	<?php if($all_brands){ ?>
	<?php foreach ($all_brands as $brands) { ?>
	  <li><a href="<?php echo $brands['view']; ?>"><img src="<?php echo $brands['image']; ?>" alt=""></a></li>
	<?php } ?>
	<?php } ?>
</ul>