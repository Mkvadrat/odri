<?php
class ControllerInformationPosts extends Controller {
	public function index() {
		$this->language->load('information/posts');
		
		$this->load->model('catalog/posts');
	 
		$this->document->setTitle($this->language->get('heading_title')); 
	 
		$data['breadcrumbs'] = array();
		
		$data['breadcrumbs'][] = array(
			'text' 		=> 'Главная',
			'href' 		=> $this->url->link('common/home')
		);
		$data['breadcrumbs'][] = array(
			'text' 		=> $this->language->get('heading_title'),
			'href' 		=> $this->url->link('information/posts')
		);
		  
		$url = '';
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}	

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else { 
			$page = 1;
		}
		
		$filter_data = array(
			'page' 	=> $page,
			'limit' => 2,
			'start' => 2 * ($page - 1),
		);
		
		$total = $this->model_catalog_posts->getTotalPosts();
		
		$pagination = new Pagination();
		$pagination->total = $total;
		$pagination->page = $page;
		$pagination->limit = 2;
		$pagination->url = $this->url->link('information/posts', 'page={page}');
		
		$data['pagination'] = $pagination->render();
	 
		$data['results'] = sprintf($this->language->get('text_pagination'), ($total) ? (($page - 1) * 2) + 1 : 0, ((($page - 1) * 2) > ($total - 2)) ? $total : ((($page - 1) * 2) + 2), $total, ceil($total / 2));

		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_title'] = $this->language->get('text_title');
		$data['text_description'] = $this->language->get('text_description');
		$data['text_date'] = $this->language->get('text_date');
		$data['text_view'] = $this->language->get('text_view');
	 
		$all_posts = $this->model_catalog_posts->getAllPosts($filter_data);
	 
		$data['all_posts'] = array();
		
		$this->load->model('tool/image');
	 
		foreach ($all_posts as $posts) {
			$data['all_posts'][] = array (
				'title' 		=> $posts['title'],
				'image'			=> $this->model_tool_image->resize($posts['image'], 732, 412),
				'description' 	=> strip_tags(html_entity_decode($posts['short_description'])),
				'view' 			=> $this->url->link('information/posts/posts', 'posts_id=' . $posts['posts_id']),
				'date_added' 	=> date($this->language->get('date_format_short'), strtotime($posts['date_added']))
			);
		}
	 
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		
		$this->response->setOutput($this->load->view('information/posts_list', $data));
	}
 
	public function posts() {
		$this->load->model('catalog/posts');
	  
		$this->language->load('information/posts');
 
		if (isset($this->request->get['posts_id']) && !empty($this->request->get['posts_id'])) {
			$posts_id = $this->request->get['posts_id'];
		} else {
			$posts_id = 0;
		}
 
		$posts = $this->model_catalog_posts->getPosts($posts_id);
 
		$data['breadcrumbs'] = array();
	  
		$data['breadcrumbs'][] = array(
			'text' 			=> 'Главная',
			'href' 			=> $this->url->link('common/home')
		);
	  
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/posts')
		);
 
		if ($posts) {
			$data['breadcrumbs'][] = array(
				'text' 		=> $posts['title'],
				'href' 		=> $this->url->link('information/posts/posts', 'posts_id=' . $posts_id)
			);
 
			$this->document->setTitle($posts['title']);
			
			$this->load->model('tool/image');
			
			$data['image'] = $this->model_tool_image->resize($posts['image'], 200, 200);
 
			$data['heading_title'] = $posts['title'];
			$data['description'] = html_entity_decode($posts['description']);
			$data['date_added'] = date('d.m.Y', strtotime($posts['date_added']));
	 
			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('information/posts', $data));
		} else {
			$data['breadcrumbs'][] = array(
				'text' 		=> $this->language->get('text_error'),
				'href' 		=> $this->url->link('information/posts', 'posts_id=' . $posts_id)
			);
	 
			$this->document->setTitle($this->language->get('text_error'));
	 
			$data['heading_title'] = $this->language->get('text_error');
			$data['text_error'] = $this->language->get('text_error');
			$data['button_continue'] = $this->language->get('button_continue');
			$data['continue'] = $this->url->link('common/home');
	 
			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');
			
			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}
}