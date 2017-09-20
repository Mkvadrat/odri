<p class="title-section">Хиты Продаж</p>
<ul class="list-products">
  <?php if($products){ ?>
  <?php foreach ($products as $seller) { ?>
    <li>
      <a href="<?php echo $seller['href']; ?>"><img src="<?php echo $seller['thumb']; ?>" alt="<?php echo $seller['name']; ?>" title="<?php echo $seller['name']; ?>" /></a>
      <p class="product-name"><?php echo $seller['name']; ?>
      <?php if ($seller['price']) { ?>
        <?php if (!$seller['special']) { ?>
        <b class="price-product"><?php echo $seller['price']; ?></b>
        <?php } else { ?>
        <b class="price-product"><?php echo $seller['special']; ?> <strike><sup><?php echo $seller['price']; ?></sup></strike></b>
        <?php } ?>
        <?php if ($seller['tax']) { ?>
        <b class="price-product"><?php echo $text_tax; ?> <?php echo $seller['tax']; ?></b>
        <?php } ?>
      <?php } ?></p>
      <a onclick="cart.add('<?php echo $seller['product_id']; ?>');">Купить</a>
    </li>
  <?php } ?>
  <?php } ?>
</ul>
