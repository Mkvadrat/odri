<?php echo $header; ?>

    <!-- start main -->
    <div class="container">
        <div class="row">
            <main class="main-in">
                <div class="col-md-12">
                    <article>
                        <p class="title-section"><?php echo $heading_title; ?></p>
                        
                        <label class="control-label" for="input-search"><?php echo $entry_search; ?></label>
                        <div class="row" id="content">
                          <div class="col-sm-4">
                            <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
                          </div>
                          <div class="col-sm-3">
                            <select name="category_id" class="form-control">
                              <option value="0"><?php echo $text_category; ?></option>
                              <?php foreach ($categories as $category_1) { ?>
                              <?php if ($category_1['category_id'] == $category_id) { ?>
                              <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
                              <?php } else { ?>
                              <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
                              <?php } ?>
                              <?php foreach ($category_1['children'] as $category_2) { ?>
                              <?php if ($category_2['category_id'] == $category_id) { ?>
                              <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                              <?php } else { ?>
                              <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                              <?php } ?>
                              <?php foreach ($category_2['children'] as $category_3) { ?>
                              <?php if ($category_3['category_id'] == $category_id) { ?>
                              <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                              <?php } else { ?>
                              <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                              <?php } ?>
                              <?php } ?>
                              <?php } ?>
                              <?php } ?>
                            </select>
                          </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-9">
                                <label class="checkbox-inline">
                                <?php if ($sub_category) { ?>
                                <input type="checkbox" name="sub_category" value="1" checked="checked" />
                                <?php } else { ?>
                                <input type="checkbox" name="sub_category" value="1" />
                                <?php } ?>
                                <?php echo $text_sub_category; ?></label>
                                
                                <label class="checkbox-inline">
                                <?php if ($description) { ?>
                                <input type="checkbox" name="description" value="1" id="description" checked="checked" />
                                <?php } else { ?>
                                <input type="checkbox" name="description" value="1" id="description" />
                                <?php } ?>
                                <?php echo $entry_description; ?></label>
                            </div>
                        </div>
                        
                        <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-primary button-search" />
                        
                        <h2 class="text-search"><?php echo $text_search; ?></h2>
                        
                        <?php if ($products) { ?>
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

                        <?php if ($pagination) { ?>
                        <article class="paggination-action">
                            <p>Страницы:</p>
                            <ul class="paggination-list">
                                <?php echo $pagination; ?>
                            </ul>
                        </article>
                        <?php } ?>
                        <?php } else { ?>
                        <p><?php echo $text_empty; ?></p>
                        <?php } ?>
                    </article>
                </div>
            </main>
        </div>
    </div>
    <!-- end main -->
    
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
    
<?php echo $footer; ?>