<?php
defined('BASEPATH') OR exit('No direct scripts access allowed');

class Inputdata extends CI_Controller
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

	public function index()
	{


	}

	public function inputguru()
	{
		$this->load->view('admin/inputdata/inputguru');
	}

	public function storeguru()
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

			$this->load->view('admin/inputdata/inputguru',$data);
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
			$data['nip'] = $this->input->post('nip',true);
			$data['nama'] = $this->input->post('nama',true);
			$nama = $this->input->post('nama',true);

			$ttl1 = $this->input->post('ttl1',true);
			$ttl2 = $this->input->post('ttl2',true);
			$data['ttl'] = $ttl1.' '.$ttl2;
			$data['jabatan'] = $this->input->post('jabatan',true);
			$data['nope'] = $this->input->post('nope',true);
			$data['jk'] = $this->input->post('jk',true);
			$data['photo'] = $namaphoto;
			
			$data['alamat'] = $this->input->post('alamat',true);

			$this->db->insert('guru',$data);

		// Insert ke Tabel User ====================================================

			$data2['id'] = $id;
			$data2['nik'] = $this->input->post('nip',true);
			$data2['nama'] = $this->input->post('nama',true);
			$data2['username'] = $this->input->post('nip',true);
			$data2['password'] = md5($ttl2);
			$data2['level'] = 'guru';

			$this->db->insert('user',$data2);

			$this->session->set_flashdata('berhasil','Data guru dengan nama <b>'.$nama.' </b>berhasil ditambahkan');

			redirect('admin/inputdata/inputguru');
		}
	}

	public function inputmapel()
	{
		$this->load->view('admin/inputdata/inputmapel');
	}

	public function storemapel()
	{
		do{
			$id = random_string('alnum',15);
			$cek = $this->db->where('id',$id)->get('mapel')->result();
			$cek_id = count($cek);
		}while($cek_id > 0);

		$data['id'] = $id;
		$data['kode_mapel'] = $this->input->post('kode_mapel',true);
		$data['nama_mapel'] = $this->input->post('nama_mapel',true);
		$nama = $this->input->post('nama_mapel',true);

		$this->db->insert('mapel',$data);
		$this->session->set_flashdata('berhasil','Data Mata Pelajaran dengan nama <b>'.$nama.'</b> berhasil ditambahkan');

		redirect('admin/inputdata/inputmapel');
	}

	public function inputruangkelas()
	{
		$this->load->view('admin/inputdata/inputruangkelas');
	}

	public function storeruangkelas()
	{
		$nama1 = $this->input->post('nama1',true);
		$nama2 = $this->input->post('nama2',true);
		$nama_ruangan = $nama1.' '.$nama2;

		do{
			$id = random_string('alnum', 10);
			$cek_id = $this->db->where('id',$id)->get('ruang_kelas')->result();
			$cek_id2 = count($cek_id);
		}while($cek_id2 > 0);

		$data['id'] = $id;
		$data['nama_ruangan'] = $nama_ruangan;
		$data['jumlah_siswa'] = $this->input->post('jumlah_siswa',true);

		$this->db->insert('ruang_kelas',$data);

		$this->session->set_flashdata('berhasil','Ruangan kelas berhasil ditambahkan');

		redirect('admin/inputdata/inputruangkelas');
	}

	public function inputwalimurid()
	{
		$data['siswa'] = $this->db->get('siswa')->result();

		$this->load->view('admin/inputdata/inputwalimurid',$data);
	}

	public function storewalimurid()
	{
		do{
			$id = random_string('alnum',15);
			$cek_id = $this->db->where('id',$id)->get('wali_murid')->result();
			$cek_id2 = count($cek_id);
		}while($cek_id2 > 0);

		$data['id'] = $id;
		$data['nama'] = $this->input->post('nama',true);
		$data['nik'] = $this->input->post('nik',true);

		$this->db->insert('wali_murid',$data);

		$this->session->set_flashdata('berhasil', 'Wali murid berhasil ditambahkan');

		redirect('admin/inputdata/inputwalimurid');
	}

	public function inputwalikelas()
	{
		$data['guru'] = $this->db->get('guru')->result();
		$data['kelas'] = $this->db->get('ruang_kelas')->result();

		$this->load->view('admin/inputdata/inputwalikelas',$data);
	}

	public function storewalikelas()
	{
		do{
			$id = random_string('alnum',15);
			$cek_id = $this->db->where('id',$id)->get('wali_kelas')->result();
			$cek = count($cek_id);
		}while($cek > 0);

		$data['id'] = $id;
		$data['NIP'] = $this->input->post('id_nip',true);
		$data['id_kelas'] = $this->input->post('id_kelas',true);

		$this->db->insert('wali_kelas',$data);

		$this->session->set_flashdata('berhasil','Data berhasil di Input');
		redirect('admin/inputdata/inputwalikelas');
	}

	// Eksul

	public function ekskul()
	{
		$this->load->view('admin/inputdata/inputekskul');
	}

	public function storeekskul()
	{
		do{
			$id = random_string('alnum',15);
			$cek_id = $this->db->where('id',$id)->get('ekskul')->result();
			$cek = count($cek_id);
		}while($cek > 0);

		$data['id'] = $id;
		$data['nama'] = $this->input->post('nama',true);

		$this->db->insert('ekskul',$data);

		$this->session->set_flashdata('berhasil','Data berhasil ditambahkan');
		redirect('admin/inputdata/ekskul');
	}
}