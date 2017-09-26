<?php echo $header; ?>

    <!-- start main -->

    <div class="container">
        <div class="row">
            <main class="main-in">
                <div class="col-md-3">
                    <aside>
                        <section>
                            <?php echo $column_left; ?>
                        </section>
                    </aside>
                </div>
                <div class="col-md-9">
                    <article>
                        
                        <?php echo $content_top; ?>
                        
                        <h1 class="title-section"><?php echo $heading_title; ?></h1>
                        
                        <?php if ($products){ ?>
                        <ul class="list-products">
                            
                            <?php foreach ($products as $product) { ?>
                            <li>
                                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
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
                        </ul>
                        <?php }else{ ?>
                        <p>Товаров не найдено!</p>
                        <?php } ?>

                        <?php if ($pagination) { ?>
                        <article class="paggination-action">
                            <p>Страницы:</p>
                            <ul class="paggination-list">
                                <?php echo $pagination; ?>
                            </ul>
                        </article>
                        <?php } ?>
                    </article>
                </div>
            </main>
        </div>
    </div>

    <!-- end main -->
    
<?php echo $footer; ?>
