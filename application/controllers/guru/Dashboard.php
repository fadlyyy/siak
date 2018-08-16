<?php
defined('BASEPATH') OR exit('No direct scripts access allowed');

class Dashboard extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$logged_in = $this->session->userdata('logged_in');
		$level = $this->session->userdata('level');
		if(empty($logged_in))
		{
			redirect('auth/login');
		}
		if($level != 'guru')
		{
			redirect('auth/login');
		}
	}

	public function index()
	{
		$this->load->view('guru/layouts/template');
	}
}