<!--<h3><?php echo $heading_title; ?></h3>
<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <p><?php echo $product['description']; ?></p>
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
    </div>
  </div>
  <?php } ?>
</div>-->







    <!-- start main -->

    <div class="container">
        <div class="row">
            <main class="main-index">
 

                <div class="col-md-9">
                    <article>
                        <section>
                            <p class="title-section">Горячие Новинки</p>

                            <ul class="list-products">
                                <li>
                                    <img class="photo-product" src="catalog/view/theme/odri/image/product.jpg" alt="">
                                    <p class="product-name">Пудра-румяна Multi Color Power Blush
                                    <b class="price-product">49,9 руб.</b></p>
                                    <a href="#">Купить</a>
                                </li>
                                <li>
                                    <img class="photo-product" src="catalog/view/theme/odri/image/product.jpg" alt="">
                                    <p class="product-name">Пудра-румяна Multi Color Power Blush
                                    <b class="price-product">49,9 руб.</b></p>
                                    <a href="#">Купить</a>
                                </li>
                                <li>
                                    <img class="photo-product" src="catalog/view/theme/odri/image/product.jpg" alt="">
                                    <p class="product-name">Пудра-румяна Multi Color Power Blush
                                    <b class="price-product">49,9 руб.</b></p>
                                    <a href="#">Купить</a>
                                </li>
                            </ul>
                        </section>

                        <section>
                            <p class="title-section">Хиты Продаж</p>

                            <ul class="list-products">
                                <li>
                                    <img class="photo-product" src="catalog/view/theme/odri/image/product.jpg" alt="">
                                    <p class="product-name">Пудра-румяна Multi Color Power Blush
                                    <b class="price-product">49,9 руб.</b></p>
                                    <a href="#">Купить</a>
                                </li>
                                <li>
                                    <img class="photo-product" src="catalog/view/theme/odri/image/product.jpg" alt="">
                                    <p class="product-name">Пудра-румяна Multi Color Power Blush
                                    <b class="price-product">49,9 руб.</b></p>
                                    <a href="#">Купить</a>
                                </li>
                                <li>
                                    <img class="photo-product" src="catalog/view/theme/odri/image/product.jpg" alt="">
                                    <p class="product-name">Пудра-румяна Multi Color Power Blush
                                    <b class="price-product">49,9 руб.</b></p>
                                    <a href="#">Купить</a>
                                </li>
                                <li>
                                    <img class="photo-product" src="catalog/view/theme/odri/image/product.jpg" alt="">
                                    <p class="product-name">Пудра-румяна Multi Color Power Blush
                                    <b class="price-product">49,9 руб.</b></p>
                                    <a href="#">Купить</a>
                                </li>
                                <li>
                                    <img class="photo-product" src="catalog/view/theme/odri/image/product.jpg" alt="">
                                    <p class="product-name">Пудра-румяна Multi Color Power Blush
                                    <b class="price-product">49,9 руб.</b></p>
                                    <a href="#">Купить</a>
                                </li>
                                <li>
                                    <img class="photo-product" src="catalog/view/theme/odri/image/product.jpg" alt="">
                                    <p class="product-name">Пудра-румяна Multi Color Power Blush
                                    <b class="price-product">49,9 руб.</b></p>
                                    <a href="#">Купить</a>
                                </li>
                            </ul>
                        </section>
                        <section>
                            <h1 class="black-title">Заголовок</h1>
                            <p>Это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>
                        </section>
                    </article>
                </div>
            </main>
        </div>

    </div>

    <!-- end main -->
