<?php echo $header; ?>

    <!-- start main -->

    <div class="container">
        <div class="row">
            <main class="main-in">
                <div class="col-md-3">
                    <aside>
                        <section>
                            <?php if ($all_manufacturer) { ?>
                            <p class="title-section">Бренды</p>
                            <ul class="list-text">
                                <?php $i = 0; ?>
                                <?php foreach ($all_manufacturer as $manufacturers) { ?>
                                <?php $i++; ?>
                                <?php if($i >6) break; ?>
                                <li><a href="<?php echo $manufacturers['href']; ?>"><?php echo $manufacturers['name']; ?></a></li>
                                <?php } ?>
                                <li class="all-manufacturer"><a href="<?php echo $all_manufacturers; ?>">Все</a></li>
                            </ul>
                            <?php } ?>
                        </section>
                    </aside>
                </div>
                <div class="col-md-9">
                    <article>
                        <h1 class="title-section"><?php echo $heading_title; ?></h1>

                        <div class="brand-logo">
                            <a href="#">
                                <img class="photo-product" src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>">
                                <p class="product-name"><?php echo $heading_title; ?></p>
                            </a>
                        </div>

                        <div class="description-brand">
                            <?php echo $description; ?>
                            
                            <?php if($country){?>
                            <p class="country-of-origin">Страна происхождения: <?php echo $country; ?></p>
                            <?php } ?>
                        </div>

                        <?php if($popular){ ?>
                        <h2 class="title-section">Лидеры продаж бренда</h2>

                        <div class="owl-carousel owl-carousel-brands owl-theme">
                            <?php foreach($popular as $list){ ?>
                            <div class="owl-brands">
                                <a href="<?php echo $list['href']; ?>"><img src="<?php echo $list['thumb']; ?>" alt="<?php echo $list['name']; ?>" title="<?php echo $list['name']; ?>" /></a>
                                <p class="product-name"><?php echo $list['name']; ?>
                                <?php if ($list['price']) { ?>
                                  <?php if (!$list['special']) { ?>
                                  <b class="price-product"><?php echo $list['price']; ?></b>
                                  <?php } else { ?>
                                  <b class="price-product"><?php echo $list['special']; ?> <strike><sup><?php echo $list['price']; ?></sup></strike></b>
                                  <?php } ?>
                                <?php } ?></p>
                                <a onclick="cart.add('<?php echo $list['product_id']; ?>');">Купить</a>
                            </div>
                            <?php } ?>
                        </div>
                        <?php } ?>
                    </article>
                </div>
            </main>
        </div>
    </div>

    <!-- end main -->
    
<script>
$(document).ready(function(){
    $('.owl-carousel-brands').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    autoplay:true,
    smartSpeed:2000,
    autoplayTimeout:5000,
    dots:false,
    stopOnHover:true,
    navigationText:["",""],
    rewindNav:true,
    pagination:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:3
        }
    }
    });
});
</script>

<?php echo $footer; ?>