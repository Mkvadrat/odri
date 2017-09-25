<?php  
class ControllerExtensionModuleBrands extends Controller {
	public function index() {
		
		$this->load->model('catalog/manufacturer');
		$this->load->model('tool/image');
		
		//Brands
		$brands_data = array(
			'page' => 1,
			'limit' => 8,
			'start' => 0,
		);
		
		$all_brands = $this->model_catalog_manufacturer->getManufacturers($brands_data);
		
		$data['all_brands'] = array();
			 
		foreach ($all_brands as $brands) {
			if ($brands['image']) {
				$image = $this->model_tool_image->resize($brands['image'], 120, 70);
			} else {
				$image = $this->model_tool_image->resize('placeholder.png', 120, 70);
			}
			
			$data['all_brands'][] = array (
				'image' => $image,
				'view'  => $this->url->link('product/manufacturer/info/', 'manufacturer_id=' . $brands['manufacturer_id'] )
			);
		}
		
		return $this->load->view('extension/module/brands', $data);
	}
}