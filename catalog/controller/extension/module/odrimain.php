<?php
class ControllerExtensionModuleOdrimain extends Controller {
	public function index($setting) {
		$this->load->language('extension/module/odrimain');
		
		$this->load->model('design/banner');
		$this->load->model('tool/image');
		$this->load->model('catalog/news');
		$this->load->model('catalog/manufacturer');
		$this->load->model('catalog/product');
		
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');
		
		//Banner
		static $module = 0;

		$data['banners'] = array();
		
		$all_banner = $this->model_design_banner->getBanner($setting['banner_id']);

		foreach ($all_banner as $banner) {
			if (is_file(DIR_IMAGE . $banner['image'])) {
				$data['banners'][] = array(
					'title' => $banner['title'],
					'link'  => $banner['link'],
					'image' => $this->model_tool_image->resize($banner['image'], $setting['width_banner'], $setting['height_banner'])
				);
			}
		}

		$data['module'] = $module++;
		
		//Html down banner
		$data['html'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['description'], ENT_QUOTES, 'UTF-8');
		
		//Action
		$news_data = array(
			'page' => 1,
			'limit' => 5,
			'start' => 0,
		);
		
		$all_news = $this->model_catalog_news->getModuleNews($news_data);
	 
		$data['all_news'] = array();
	 
		foreach ($all_news as $news) {
			$data['all_news'][] = array (
				'title' 		=> $news['title'],
				'description' 	=> (strlen(strip_tags(html_entity_decode($news['short_description']))) > 50 ? substr(strip_tags(html_entity_decode($news['short_description'])), 0, 50) . '...' : strip_tags(html_entity_decode($news['short_description']))),
				'view' 			=> $this->url->link('information/news/news', 'news_id=' . $news['news_id']),
				'date_added' 	=> date($this->language->get('date_format_short'), strtotime($news['date_added']))
			);
		}
		
		//Brands
		$brands_data = array(
			'page' => 1,
			'limit' => 8,
			'start' => 0,
		);
		
		$all_brands = $this->model_catalog_manufacturer->getManufacturers($news_data);
		
		$data['all_brands'] = array();
			 
		foreach ($all_brands as $brands) {
			if ($brands['image']) {
				$image = $this->model_tool_image->resize($brands['image'], 120, 70);
			} else {
				$image = $this->model_tool_image->resize('placeholder.png', 120, 70);
			}
			
			$data['all_brands'][] = array (
				'image' => $image,
				'view'  => $this->url->link('product/product', 'manufacturer_id=' . $brands['manufacturer_id'] )
			);
		}
		
		//Горячие новинки
		$data['products'] = array();

		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}

		if (!empty($setting['product'])) {
			$products = array_slice($setting['product'], 0, (int)$setting['limit']);

			foreach ($products as $product_id) {
				$product_info = $this->model_catalog_product->getProduct($product_id);

				if ($product_info) {
					if ($product_info['image']) {
						$image = $this->model_tool_image->resize($product_info['image'], $setting['width'], $setting['height']);
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
					}

					if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
						$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$price = false;
					}

					if ((float)$product_info['special']) {
						$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$special = false;
					}

					if ($this->config->get('config_tax')) {
						$tax = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price'], $this->session->data['currency']);
					} else {
						$tax = false;
					}

					$data['products'][] = array(
						'product_id'  => $product_info['product_id'],
						'thumb'       => $image,
						'name'        => $product_info['name'],
						'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
						'price'       => $price,
						'special'     => $special,
						'tax'         => $tax,
						'href'        => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
					);
				}
			}
		}
		
		//Bestseller
		$data['bestseller'] = array();

		$bs = $this->model_catalog_product->getBestSellerProducts($setting['limit_bestseller']);

		if ($bs) {
			foreach ($bs as $bests) {
				if ($bests['image']) {
					$image = $this->model_tool_image->resize($bests['image'], $setting['width_bestseller'], $setting['height_bestseller']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width_bestseller'], $setting['height_bestseller']);
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($bests['price'], $bests['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				if ((float)$bests['special']) {
					$special = $this->currency->format($this->tax->calculate($bests['special'], $bests['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$bests['special'] ? $bests['special'] : $bests['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				$data['bestseller'][] = array(
					'product_id'  => $bests['product_id'],
					'thumb'       => $image,
					'name'        => $bests['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($bests['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'href'        => $this->url->link('product/product', 'product_id=' . $bests['product_id'])
				);
			}
		}
		
		//Main title and text
		$data['main_title'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['main_title'], ENT_QUOTES, 'UTF-8');
		$data['main_html'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['main_description'], ENT_QUOTES, 'UTF-8');
		


		return $this->load->view('extension/module/odrimain', $data);

	}
}