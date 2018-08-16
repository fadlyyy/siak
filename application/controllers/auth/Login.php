<?php
defined('BASEPATH') OR exit('No direct scripts access allowed');

class Login extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$this->load->view('auth/login');
	}

	public function cek_login()
	{
		$username = $this->input->post('username',true);
		$password = $this->input->post('password',true);

		$cek = $this->db->where('username',$username)->where('password',$password)->get('user')->row();
		$cek2 = count($cek);

		if($cek2 > 0)
		{
			$data['logged_in'] = true;
			$data['nama'] = $cek->nama;
			$data['level'] = $cek->level;
			$data['nik'] = $cek->nik;

			$this->session->set_userdata($data);

			if($this->session->userdata('level')=='admin')
			{
				redirect('admin/dashboard');
			}
			elseif($this->session->userdata('level')=='siswa')
			{
				redirect('user/dashboard');
			}
			elseif($this->session->userdata('level')=='guru')
			{
				redirect('guru/dashboard');
			}
		}
		else
		{
			$this->session->set_flashdata('gagal','Gagal login: Username dan Password tidak sesuai');

			redirect('auth/login');
		}
	}

	public function logout()
	{
		$this->session->unset_userdata('username');
		$this->session->unset_userdata('level');
		session_destroy();

		redirect('home');
	}
}