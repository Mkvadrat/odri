<p class="title-section">Горячие Новинки</p>
<ul class="list-products">
  <?php if($products){ ?>
  <?php foreach ($products as $hot) { ?>
    <li>
        <a href="<?php echo $hot['href']; ?>"><img src="<?php echo $hot['thumb']; ?>" alt="<?php echo $hot['name']; ?>" title="<?php echo $hot['name']; ?>" /></a>
        <p class="product-name"><?php echo $hot['name']; ?>
        <?php if ($hot['price']) { ?>
          <?php if (!$hot['special']) { ?>
          <b class="price-product"><?php echo $hot['price']; ?></b>
          <?php } else { ?>
          <b class="price-product"><?php echo $hot['special']; ?> <strike><sup><?php echo $hot['price']; ?></sup></strike></b>
          <?php } ?>
          <?php if ($hot['tax']) { ?>
          <b class="price-product"><?php echo $text_tax; ?> <?php echo $hot['tax']; ?></b>
          <?php } ?>
        <?php } ?></p>
        <a onclick="cart.add('<?php echo $hot['product_id']; ?>');">Купить</a>
    </li>
  <?php } ?>
  <?php } ?>
</ul>