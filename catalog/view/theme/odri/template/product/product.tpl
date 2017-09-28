<?php echo $header; ?>
    
    <!-- start main -->
    
    <div class="container">
        <div class="row">
            <main class="main-object">
                <div class="col-md-3">
                    <aside>
                        <section>
                            <?php echo $column_left; ?>
                        </section>
                    </aside>
                </div>
                <div class="col-md-9">
                    <article>
                        
                       <h1 class="title-section"><?php echo $heading_title; ?></h1>

                        <div class="short-description">
                            <?php if ($images) { ?>
                            <div class="zoom-image-block">
                                <div class="zoom-wrapper">
                                    <div class="zoom-left">
                                        <?php $i = 0; ?>
                                        <?php foreach($images as $image) { ?>
                                            <?php $i++; ?>
                                            <?php if($i > 1) break; ?>
                                            <img class="zoom-img" id="product-image" src="<?php echo $image['popup']; ?>" data-zoom-image="<?php echo $image['popup']; ?>" width="411"/>
                                        <?php } ?>
                                        
                                        <div id="gallery_01">
                                            <?php foreach ($images as $image) { ?>
                                                <a href="#" class="elevatezoom-gallery active" data-update="" data-image="<?php echo $image['popup']; ?>" data-zoom-image="<?php echo $image['popup']; ?>">
                                                    <img src="<?php echo $image['popup']; ?>" width="100"/>
                                                </a>
                                            <?php }?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php }else{ ?>
                            <div class="zoom-image-block">
                                <div class="zoom-wrapper">
                                    <div class="zoom-left">
                                        <img class="zoom-img" id="thumb" src="<?php echo $thumb; ?>" data-zoom-image="<?php echo $thumb; ?>" width="411"/>
                                    </div>
                                </div>
                            </div>
                            <?php } ?>
    
                            <?php if ($manufacturer) { ?>
                                <p class="manufacturer">Производитель: <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></p>
                            <?php } ?>
                            
                            
                            <div id="product">
                                <?php if ($options) { ?>
                                    <?php foreach ($options as $option) { ?>
                                    <?php if ($option['type'] == 'select') { ?>
                                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"></label>
                                        <p class="form-group<?php echo ($option['required'] ? ' required' : ''); ?> amount" id="input-option<?php echo $option['product_option_id']; ?>">
                                            <?php echo $option['name']; ?>
                                            <select name="option[<?php echo $option['product_option_id']; ?>]"  class="form-control">
                                            <option value=""><?php echo $text_select; ?></option>
                                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                            <?php if ($option_value['price']) { ?>
                                            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                            <?php } ?>
                                            </option>
                                            <?php } ?>
                                            </select>
                                        </p>
                                    <?php } ?>
                                    
                                    <?php if ($option['type'] == 'text') { ?>
                                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"></label>
                                        <p class="form-group<?php echo ($option['required'] ? ' required' : ''); ?> amount"><?php echo $option['name']; ?>: <span id="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['value']; ?></span></p>
                                    <?php } ?>
                                    
                                    <?php } ?>
                                <?php } ?>
                                
                                <?php if ($price) { ?>
                                <?php if (!$special) { ?>
                                    <p class="price"><b><?php echo $price; ?></b></p>
                                <?php } else { ?>
                                    <p class="price"><b><?php echo $special; ?> <sup><strike><?php echo $price; ?></strike></sup></b></p>
                                <?php } ?>
                                <?php } ?>
                                
                                <?php if ($minimum > 1) { ?>
                                    <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
                                <?php } ?>

                                <div class="form-group add-form">
                                    <label for="quantity">Кол-во:</label>
                                    <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
                                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                    
                                    <input type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" value="Добавить в корзину">
                                </div>
                            </div>
                        </div>

                        <div class="tab-block">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#panel1">Описание</a></li>
                                <?php if ($review_status) { ?>
                                <li><a data-toggle="tab" href="#tab-review">Отзывы</a></li>
                                <?php } ?>
                            </ul>
    
                            <div class="tab-content">
                                <div id="panel1" class="tab-pane fade in active">
                                  <?php echo $description; ?>
                                </div>
                                
                                <?php if ($review_status) { ?>
                                <div id="tab-review" class="tab-pane fade">
                                    <form class="form-horizontal" id="form-review">
                                        <div id="review"></div>
                                        <h2><?php echo $text_write; ?></h2>
                                        <?php if ($review_guest) { ?>
                                        <div class="form-group required">
                                        <div class="col-sm-12">
                                        <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                        <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
                                        </div>
                                        </div>
                                        <div class="form-group required">
                                        <div class="col-sm-12">
                                        <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                                        <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                                        <div class="help-block"><?php echo $text_note; ?></div>
                                        </div>
                                        </div>
                                        <div class="form-group required">
                                        <div class="col-sm-12">
                                        <label class="control-label"><?php echo $entry_rating; ?></label>
                                        &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                                        <input type="radio" name="rating" value="1" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="2" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="3" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="4" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="5" />
                                        &nbsp;<?php echo $entry_good; ?></div>
                                        </div>
                                        <?php echo $captcha; ?>
                                        <div class="buttons clearfix">
                                        <div class="pull-right">
                                        <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                                        </div>
                                        </div>
                                        <?php } else { ?>
                                        <?php echo $text_login; ?>
                                        <?php } ?>
                                    </form>
                                </div>
                                <?php } ?>
                                
                            </div>
                        </div>
                        
                        <?php if($products || !empty($descr_featured)){ ?>
                        <h2 class="title-section">с этим товаром покупают</h2>

                        <?php echo $descr_featured; ?>
                      
                        <div class="owl-carousel owl-carousel-brands owl-theme">
                            <?php foreach ($products as $product) { ?>
                            <div class="owl-brands">
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
    
<script type="text/javascript"><!--
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
//--></script>

<script type="text/javascript">
$(document).ready(function () {
    $("#thumb").ezPlus({
      cursor: 'pointer',
      galleryActiveClass: "active",
      imageCrossfade: true,
      loadingIcon: "https://www.elevateweb.co.uk/spinner.gif"
    });
    
    $("#thumb").bind("click", function (e) {
      var ez = $('#thumb').data('ezPlus');
      ez.closeAll(); //NEW: This function force hides the lens, tint and window
      $.fancybox(ez.getGalleryList());
        return false;
    });
});
</script>

<script type="text/javascript">
$(document).ready(function () {
    $("#product-image").ezPlus({
      gallery: 'gallery_01',
      cursor: 'pointer',
      galleryActiveClass: "active",
      imageCrossfade: true,
      loadingIcon: "https://www.elevateweb.co.uk/spinner.gif"
    });
    
    $("#product-image").bind("click", function (e) {
      var ez = $('#product-image').data('ezPlus');
      ez.closeAll(); //NEW: This function force hides the lens, tint and window
      $.fancybox(ez.getGalleryList());
        return false;
    });
});
</script>

<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.bread-crumbs').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > a').html('<span>Корзина:</span> <em id="cart-total">' + json['total'] + '</em>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>

<script type="text/javascript"><!--
$('#review').delegate('.paggination-list li a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
    
    ////grecaptcha.reset();
});

$(document).ready(function() {
	var hash = window.location.hash;
	if (hash) {
		var hashpart = hash.split('#');
		var  vals = hashpart[1].split('-');
		for (i=0; i<vals.length; i++) {
			$('#product').find('select option[value="'+vals[i]+'"]').attr('selected', true).trigger('select');
			$('#product').find('input[type="radio"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
			$('#product').find('input[type="checkbox"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
		}
	}
})
//--></script>
    
<?php echo $footer; ?>
