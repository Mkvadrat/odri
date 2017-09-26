<?php if($categories){ ?>
<p class="title-section">Категория</p>
<ul class="list-text">
<?php foreach ($categories as $category) { ?>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <li><a href="<?php echo $child['href']; ?>" class="active">&nbsp;&nbsp;&nbsp; <?php echo $child['name']; ?></a></li>
  <?php } else { ?>
  <li><a href="<?php echo $child['href']; ?>">&nbsp;&nbsp;&nbsp; <?php echo $child['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } ?>
</ul>
<?php } ?>










