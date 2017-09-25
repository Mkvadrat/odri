  <!-- start main -->
  
  <div class="container">
    <div class="row">
        <main class="main-index">
            <div class="col-md-12">
  
                <div class="slider">
                    <?php if($banners){ ?>
                    <div id="banner<?php echo $module; ?>" class="owl-carousel owl-theme">
                      <?php foreach ($banners as $banner) { ?>
                      <div class="item">
                        <?php if ($banner['link']) { ?>
                        <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
                        <?php } else { ?>
                        <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
                        <?php } ?>
                      </div>
                      <?php } ?>
                    </div>
                    <?php } ?>
                </div>
  
                <?php echo $html; ?>
            </div>
            <div class="col-md-3">
                <aside>
                    <section>
                        <p class="title-section">Акции</p>
                        <ul class="list-text-items">
                          <?php if($all_news){ ?>
                          <?php foreach ($all_news as $news) { ?>
                            <li><a href="<?php echo $news['view']; ?>"><?php echo $news['title']; ?></a></li>
                          <?php } ?>
                          <?php } ?>
                        </ul>
                    </section>
                </aside>
  
                <aside>
                    <section>
                        <p class="title-section">Новые бренды</p>
                        <ul class="list-brands-aside">
                          <?php if($all_brands){ ?>
                          <?php foreach ($all_brands as $brands) { ?>
                            <li><a href="<?php echo $brands['view']; ?>"><img src="<?php echo $brands['image']; ?>" alt=""></a></li>
                          <?php } ?>
                          <?php } ?>
                        </ul>
                    </section>
                </aside>
            </div>
            <div class="col-md-9">
                <article>
                    <section>
                        <p class="title-section">Горячие Новинки</p>
  
                        <ul class="list-products">
                          <?php if($products){ ?>
                          <?php foreach ($products as $product) { ?>
                            <li>
                                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                                <p class="product-name"><?php echo $product['name']; ?>
                                <?php if ($product['price']) { ?>
                                  <?php if (!$product['special']) { ?>
                                  <b class="price-product"><?php echo $product['price']; ?></b>
                                  <?php } else { ?>
                                  <b class="price-product"><?php echo $product['special']; ?> <strike><sup><?php echo $product['price']; ?></sup></strike></b>
                                  <?php } ?>
                                  <?php if ($product['tax']) { ?>
                                  <b class="price-product"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></b>
                                  <?php } ?>
                                <?php } ?></p>
                                <a onclick="cart.add('<?php echo $product['product_id']; ?>');">Купить</a>
                            </li>
                          <?php } ?>
                          <?php } ?>
                        </ul>
                    </section>
  
                    <section>
                        <p class="title-section">Хиты Продаж</p>
  
                        <ul class="list-products">
                          <?php if($bestseller){ ?>
                          <?php foreach ($bestseller as $seller) { ?>
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
                    </section>
                    <section>
                        <h1 class="black-title"><?php echo $main_title; ?></h1>
                        <?php echo $main_html; ?>
                    </section>
                </article>
            </div>
        </main>
    </div>
  
  </div>
  
  <!-- end main -->
  
<script type="text/javascript"><!--
$('#banner<?php echo $module; ?>').owlCarousel({
	autoPlay: 3000,
	singleItem: true,
	navigation: false,
	pagination: false,
	transitionStyle: 'fade',
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
--></script>