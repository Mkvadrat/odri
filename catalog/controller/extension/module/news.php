<?php  
class ControllerExtensionModuleNews extends Controller {
	public function index() {
		$this->language->load('extension/module/news');
		$this->load->model('catalog/news');
		
		$filter_data = array(
			'page' => 1,
			'limit' => 5,
			'start' => 0,
		);
	 
		$data['heading_title'] = $this->language->get('heading_title');
	 
		$all_news = $this->model_catalog_news->getModuleNews($filter_data);
	 
		$data['all_news'] = array();
	 
		foreach ($all_news as $news) {
			$data['all_news'][] = array (
				'title' 		=> $news['title'],
				'description' 	=> (strlen(strip_tags(html_entity_decode($news['short_description']))) > 50 ? substr(strip_tags(html_entity_decode($news['short_description'])), 0, 50) . '...' : strip_tags(html_entity_decode($news['short_description']))),
				'view' 			=> $this->url->link('information/news/news', 'news_id=' . $news['news_id']),
				'date_added' 	=> date($this->language->get('date_format_short'), strtotime($news['date_added']))
			);
		}
		
		return $this->load->view('extension/module/news', $data);
	}
}