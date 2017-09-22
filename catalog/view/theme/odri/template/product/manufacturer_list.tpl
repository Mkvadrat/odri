<?php echo $header; ?>

    <!-- start main -->

    <div class="container">
        <div class="row">
            <main class="main-brands">
                <div class="col-md-3">
                    <aside>
                        <section>
                            <?php if ($manufacturer) { ?>
                            <p class="title-section">Бренды</p>
                            <ul class="list-text">
                                <?php $i = 0; ?>
                                <?php foreach ($manufacturer as $manufacturers) { ?>
                                <?php $i++; ?>
                                <?php if($i >6) break; ?>
                                <li><a href="<?php echo $manufacturers['href']; ?>"><?php echo $manufacturers['name']; ?></a></li>
                                <?php } ?>
                                <li class="all-manufacturer"><a href="<?php echo $all_manufacturer; ?>">Все</a></li>
                            </ul>
                            <?php } ?>
                        </section>
                    </aside>
                </div>
                <div class="col-md-9">
                    <article>
                        <?php echo $content_top; ?>
                        
                        <ul class="list-brands">
                        <?php if ($manufacturer) { ?>
                        <?php foreach ($manufacturer as $manufacturers) { ?>
                        <li>
                            <a href="<?php echo $manufacturers['href']; ?>">
                                <img class="photo-product" src="<?php echo $manufacturers['image']; ?>" alt="<?php echo $manufacturers['name']; ?>">
                                <p class="product-name"><?php echo $manufacturers['name']; ?></p>
                            </a>
                        </li>
                        <?php } ?>
                        <?php }else{ ?>
                        <li><h2 class="title-section">Брендов не найдено!</h2></li>
                        <?php } ?>
                        </ul>
                        
                        <?php if($pagination){ ?>
                        <p>Страницы:</p>
                        <ul class="paggination-list">
                            <?php echo $pagination; ?>
                        </ul>
                        <?php } ?>
                    </article>
                </div>
            </main>
        </div>
    </div>

    <!-- end main -->
    
<?php echo $footer; ?>