<?php echo $header; ?>

    <!-- start main -->

    <div class="container">
        <div class="row">
            <main class="main-in">
                <div class="col-md-3">
                    <aside>
                        <section>
                            <p class="title-section">Пол</p>
                            <ul class="list-text">
                                <li><a href="#">Для женщин</a></li>
                                <li><a href="#">Для мужчин</a></li>
                                <li><a href="#">Для детей</a></li>
                                <li class="all"><a href="#">Все</a></li>
                            </ul>
                        </section>
                    </aside>

                    <aside>
                        <section>
                            <p class="title-section">Категория</p>
                            <ul class="list-text">
                                <li><a href="#">Для ванн и душа</a></li>
                                <li><a href="#">Увлажнение</a></li>
                                <li><a href="#">Cкрабы, маски, коррекция</a></li>
                                <li><a href="#">Уход за руками и ногтями</a></li>
                                <li><a href="#">Уход за ногами</a></li>
                                <li><a href="#">Для загара</a></li>
                                <li><a href="#">Автозагары, бронзаты, солнечный макияж</a></li>
                                <li><a href="#">Антиперспиранты</a></li>
                                <li><a href="#">Интимная гигиена</a></li>
                                <li><a href="#">Удаление волос</a></li>
                                <li><a href="#">Спа-процедуры и массаж</a></li>
                                <li><a href="#">Гигиена полости рта</a></li>
                                <li class="all"><a href="#">Все</a></li>
                            </ul>
                        </section>
                    </aside>

                    <aside>
                        <section>
                            <p class="title-section">Бренд</p>
                            <ul class="list-text">
                                <li><a href="#">Adidas</a></li>
                                <li><a href="#">Anna Lotan</a></li>
                                <li><a href="#">Be Natural</a></li>
                                <li><a href="#">Caudalie</a></li>
                                <li><a href="#">Collistar</a></li>
                                <li><a href="#">Dr.Sea</a></li>
                                <li><a href="#">EOS</a></li>
                                <li><a href="#">Essence</a></li>
                                <li><a href="#">Estel Professional</a></li>
                                <li><a href="#">Eva Esthetic</a></li>
                                <li class="all"><a href="#">Все</a></li>
                            </ul>
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
