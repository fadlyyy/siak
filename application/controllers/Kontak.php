<?php
defined('BASEPATH') OR exit('No direct scripts access allowed');

class Kontak extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$this->load->view('home/kontak');
	}
}