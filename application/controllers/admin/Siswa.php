<?php
defined('BASEPATH') OR exit('No direct scripts access allowed');

class Siswa extends CI_Controller
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
		if($level != 'admin')
		{
			redirect('auth/login');
		}
	}

	//Memanggil form untuk tambah siswa
	public function create()
	{
		$data['kelas'] = $this->db->get('ruang_kelas')->result();

		$this->load->view('admin/siswa/create',$data);
	}

	//Menyimpan data baru siswa ke database
	public function store()
	{
		$config['upload_path']          = './assets/upload/siswa';
		$config['allowed_types']        = 'gif|jpg|png';
		$config['max_size']             = 2000;
		$config['max_width']            = 2000;
		$config['max_height']           = 2000;

		$this->load->library('upload', $config);

		if ( ! $this->upload->do_upload('userfile'))
		{
			$data['error'] = $this->upload->display_errors();

			$data['kelas'] = $this->db->get('ruang_kelas')->result();

			$this->load->view('admin/siswa/create',$data);
		}
		else
		{
			$namaphoto = $this->upload->data('file_name');

			do{
			$id = random_string('alnum',15);
			$cek = $this->db->where('id',$id)->get('guru')->result();
			$cek_id = count($cek);
		}while($cek_id > 0);

		$data['id'] = $id;
		$data['nik'] = $this->input->post('nik',true);
		$data['id_kelas'] = $this->input->post('id_kelas',true);
		$data['jk'] = $this->input->post('jk',true);
		$data['nama'] = $this->input->post('nama',true);
		$data['thn_ajaran'] = $this->input->post('thn_ajaran',true);
		$data['alamat'] = $this->input->post('alamat',true);
		$data['nope'] = $this->input->post('nope',true);
		$ttl1 = $this->input->post('ttl1',true);
		$ttl2 = $this->input->post('ttl2',true);
		$data['ttl'] = $ttl1.' '.$ttl2;
		$data['photo'] = $namaphoto;

		$this->db->insert('siswa',$data);

		$siswakelas['id'] = $id;
		$siswakelas['nik'] = $this->input->post('nik',true);
		$siswakelas['id_kelas'] = $this->input->post('id_kelas',true);

		$this->db->insert('siswa_has_kelas',$siswakelas);

		$user['id'] = $id;
		$user['nik'] = $this->input->post('nik',true);
		$user['nama'] = $this->input->post('nama');
		$user['username'] = $this->input->post('nik',true);
		$user['password'] = md5($ttl2);
		$user['level'] = 'siswa';

		$this->db->insert('user',$user);

		$this->session->set_flashdata('berhasil','Siswa berhasil ditambahkan');
			redirect('admin/siswa/create');
		}

		//=================== ************************** =================================
	}

	
}