<?php
defined('BASEPATH') OR exit('No direct scripts access allowed');

class Akademik extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$logged_in = $this->session->userdata('logged_in');
		$level = $this->session->userdata('level');
		if(empty($logged_in))
		{
			redirect('home');
		}
		if($level != 'admin')
		{
			redirect('home');
		}
	}

	public function index()
	{

	}

	public function jadwal()
	{
		$data['kelas'] = $this->db->get('ruang_kelas')->result();

		$this->load->view('admin/akademik/jadwal/index',$data);
	}

	public function carijadwalkelas()
	{
		$kelas = $this->input->post('kelas',true);

		$data['senin'] = $this->db->select('jadwal_pelajaran.*, ruang_kelas.nama_ruangan, mapel.nama_mapel, guru.nama')->from('jadwal_pelajaran')->join('ruang_kelas', 'ruang_kelas.id=jadwal_pelajaran.id_kelas', 'INNER')->join('mapel','mapel.kode_mapel=jadwal_pelajaran.kode_mapel','INNER')->join('guru','guru.NIP=jadwal_pelajaran.nip')->where('jadwal_pelajaran.id_kelas',$kelas)->where('hari','senin')->order_by('jam_awal','ASC')->get()->result();

		$data['selasa'] = $this->db->select('jadwal_pelajaran.*, ruang_kelas.nama_ruangan, mapel.nama_mapel, guru.nama')->from('jadwal_pelajaran')->join('ruang_kelas', 'ruang_kelas.id=jadwal_pelajaran.id_kelas', 'INNER')->join('mapel','mapel.kode_mapel=jadwal_pelajaran.kode_mapel','INNER')->join('guru','guru.NIP=jadwal_pelajaran.nip')->where('jadwal_pelajaran.id_kelas',$kelas)->where('hari','selasa')->order_by('jam_awal','ASC')->get()->result();

		$data['rabu'] = $this->db->select('jadwal_pelajaran.*, ruang_kelas.nama_ruangan, mapel.nama_mapel, guru.nama')->from('jadwal_pelajaran')->join('ruang_kelas', 'ruang_kelas.id=jadwal_pelajaran.id_kelas', 'INNER')->join('mapel','mapel.kode_mapel=jadwal_pelajaran.kode_mapel','INNER')->join('guru','guru.NIP=jadwal_pelajaran.nip')->where('jadwal_pelajaran.id_kelas',$kelas)->where('hari','rabu')->order_by('jam_awal','ASC')->get()->result();

		$data['kamis'] = $this->db->select('jadwal_pelajaran.*, ruang_kelas.nama_ruangan, mapel.nama_mapel, guru.nama')->from('jadwal_pelajaran')->join('ruang_kelas', 'ruang_kelas.id=jadwal_pelajaran.id_kelas', 'INNER')->join('mapel','mapel.kode_mapel=jadwal_pelajaran.kode_mapel','INNER')->join('guru','guru.NIP=jadwal_pelajaran.nip')->where('jadwal_pelajaran.id_kelas',$kelas)->where('hari','kamis')->order_by('jam_awal','ASC')->get()->result();

		$data['jumat'] = $this->db->select('jadwal_pelajaran.*, ruang_kelas.nama_ruangan, mapel.nama_mapel, guru.nama')->from('jadwal_pelajaran')->join('ruang_kelas', 'ruang_kelas.id=jadwal_pelajaran.id_kelas', 'INNER')->join('mapel','mapel.kode_mapel=jadwal_pelajaran.kode_mapel','INNER')->join('guru','guru.NIP=jadwal_pelajaran.nip')->where('jadwal_pelajaran.id_kelas',$kelas)->where('hari','jumat')->order_by('jam_awal','ASC')->get()->result();

		$data['sabtu'] = $this->db->select('jadwal_pelajaran.*, ruang_kelas.nama_ruangan, mapel.nama_mapel, guru.nama')->from('jadwal_pelajaran')->join('ruang_kelas', 'ruang_kelas.id=jadwal_pelajaran.id_kelas', 'INNER')->join('mapel','mapel.kode_mapel=jadwal_pelajaran.kode_mapel','INNER')->join('guru','guru.NIP=jadwal_pelajaran.nip')->where('jadwal_pelajaran.id_kelas',$kelas)->where('hari','sabtu')->order_by('jam_awal','ASC')->get()->result();

		$this->load->view('admin/akademik/carijadwal/kelas',$data);
	}

	public function carijadwalguru()
	{
		$guru = $this->input->post('guru',true);

		$data['senin'] = $this->db->select('jadwal_pelajaran.*, ruang_kelas.nama_ruangan, mapel.nama_mapel, guru.nama')->from('jadwal_pelajaran')->join('ruang_kelas', 'ruang_kelas.id=jadwal_pelajaran.id_kelas', 'INNER')->join('mapel','mapel.kode_mapel=jadwal_pelajaran.kode_mapel','INNER')->join('guru','guru.NIP=jadwal_pelajaran.nip')->where('hari','senin')->like('guru.nama',$guru)->get()->result();

		$data['selasa'] = $this->db->select('jadwal_pelajaran.*, ruang_kelas.nama_ruangan, mapel.nama_mapel, guru.nama')->from('jadwal_pelajaran')->join('ruang_kelas', 'ruang_kelas.id=jadwal_pelajaran.id_kelas', 'INNER')->join('mapel','mapel.kode_mapel=jadwal_pelajaran.kode_mapel','INNER')->join('guru','guru.NIP=jadwal_pelajaran.nip')->where('hari','selasa')->like('guru.nama',$guru)->get()->result();

		$data['rabu'] = $this->db->select('jadwal_pelajaran.*, ruang_kelas.nama_ruangan, mapel.nama_mapel, guru.nama')->from('jadwal_pelajaran')->join('ruang_kelas', 'ruang_kelas.id=jadwal_pelajaran.id_kelas', 'INNER')->join('mapel','mapel.kode_mapel=jadwal_pelajaran.kode_mapel','INNER')->join('guru','guru.NIP=jadwal_pelajaran.nip')->where('hari','rabu')->like('guru.nama',$guru)->get()->result();

		$data['kamis'] = $this->db->select('jadwal_pelajaran.*, ruang_kelas.nama_ruangan, mapel.nama_mapel, guru.nama')->from('jadwal_pelajaran')->join('ruang_kelas', 'ruang_kelas.id=jadwal_pelajaran.id_kelas', 'INNER')->join('mapel','mapel.kode_mapel=jadwal_pelajaran.kode_mapel','INNER')->join('guru','guru.NIP=jadwal_pelajaran.nip')->where('hari','kamis')->like('guru.nama',$guru)->get()->result();

		$data['jumat'] = $this->db->select('jadwal_pelajaran.*, ruang_kelas.nama_ruangan, mapel.nama_mapel, guru.nama')->from('jadwal_pelajaran')->join('ruang_kelas', 'ruang_kelas.id=jadwal_pelajaran.id_kelas', 'INNER')->join('mapel','mapel.kode_mapel=jadwal_pelajaran.kode_mapel','INNER')->join('guru','guru.NIP=jadwal_pelajaran.nip')->where('hari','jumat')->like('guru.nama',$guru)->get()->result();

		$data['sabtu'] = $this->db->select('jadwal_pelajaran.*, ruang_kelas.nama_ruangan, mapel.nama_mapel, guru.nama')->from('jadwal_pelajaran')->join('ruang_kelas', 'ruang_kelas.id=jadwal_pelajaran.id_kelas', 'INNER')->join('mapel','mapel.kode_mapel=jadwal_pelajaran.kode_mapel','INNER')->join('guru','guru.NIP=jadwal_pelajaran.nip')->where('hari','sabtu')->like('guru.nama',$guru)->get()->result();

		$this->load->view('admin/akademik/carijadwal/kelas',$data);
	}

	public function createjadwal()
	{
		$data['mapel'] = $this->db->get('mapel')->result();
		$data['kelas'] = $this->db->get('ruang_kelas')->result();
		$data['guru'] = $this->db->get('guru')->result();

		$this->load->view('admin/akademik/jadwal/create',$data);
	}

	public function editjadwal($id)
	{
		$data['jadwal'] = $this->db->select('jadwal_pelajaran.*, ruang_kelas.nama_ruangan, mapel.nama_mapel, guru.nama')->from('jadwal_pelajaran')->join('ruang_kelas', 'ruang_kelas.id=jadwal_pelajaran.id_kelas')->join('mapel','mapel.kode_mapel=jadwal_pelajaran.kode_mapel')->join('guru','guru.NIP=jadwal_pelajaran.nip')->where('jadwal_pelajaran.id',$id)->get()->row();
		$data['kelas'] = $this->db->get('ruang_kelas')->result();
		$data['mapel'] = $this->db->get('mapel')->result();
		$data['guru'] = $this->db->get('guru')->result();

		$this->load->view('admin/akademik/jadwal/edit',$data);
	}

	public function storejadwal()
	{
		do{
			$id = random_string('alnum',15);
			$cek = $this->db->where('id',$id)->get('jadwal_pelajaran')->result();
			$cek_id = count($cek);
		}while($cek_id > 0);

		$data['jam_awal'] = $this->input->post('jam_awal',true);
		$data['menit_awal'] = $this->input->post('menit_awal',true);
		$data['jam_akhir'] = $this->input->post('jam_akhir',true);
		$data['menit_akhir'] = $this->input->post('menit_akhir',true);

		$data['id'] = $id;
		$data['id_kelas'] = $this->input->post('id_kelas',true);
		$data['kode_mapel'] = $this->input->post('kode_mapel',true);
		$data['hari'] = $this->input->post('hari',true);
		$data['nip'] = $this->input->post('nip',true);

		$this->db->insert('jadwal_pelajaran',$data);

		$this->session->set_flashdata('berhasil','<b>Jadwal Berhasil Ditambahkan</b>');
		redirect('admin/akademik/createjadwal');
	}

	public function updatejadwal($id)
	{
		$data['jam_awal'] = $this->input->post('jam_awal',true);
		$data['menit_awal'] = $this->input->post('menit_awal',true);
		$data['jam_akhir'] = $this->input->post('jam_akhir',true);
		$data['menit_akhir'] = $this->input->post('menit_akhir',true);

		$data['id_kelas'] = $this->input->post('id_kelas',true);
		$data['kode_mapel'] = $this->input->post('kode_mapel',true);
		$data['hari'] = $this->input->post('hari',true);
		$data['nip'] = $this->input->post('nip',true);

		$this->db->where('id',$id)->update('jadwal_pelajaran',$data);

		$this->session->set_flashdata('berhasil','<b>Jadwal Berhasil Diupdate</b>');
		redirect('admin/akademik/editjadwal/'.$id);
	}

	public function destroyjadwal($id)
	{
		$this->db->where('id',$id)->delete('jadwal_pelajaran');

		redirect('admin/akademik/jadwal');
	}

	public function inputnilaisiswa()
	{
		$data['kelas'] = $this->db->get('ruang_kelas')->result();
		$data['siswa'] = $this->db->get('siswa')->result();
		$data['mapel'] = $this->db->get('mapel')->result();

		$this->load->view('admin/akademik/nilaisiswa/input',$data);
	}

	public function storenilai()
	{
		do{
			$id = random_string('alnum',15);
			$cek_id = $this->db->get('nilai_siswa')->result();
			$cek = count($cek_id);
		}while($cek > 0);

		$data['id'] = $id;
		$data['nik_siswa'] = $this->input->post('nik_siswa',true);
		$data['kode_mapel'] = $this->input->post('kode_mapel',true);
		$data['semester'] = $this->input->post('semester',true);
		$data['thn_ajaran'] = $this->input->post('thn_ajaran',true);
		$data['afektif'] = $this->input->post('afektif',true);
		$data['komulatif'] = $this->input->post('komulatif',true);
		$data['psikomotorik'] = $this->input->post('psikomotorik',true);

		$afektif = $this->input->post('afektif',true);
		$komulatif = $this->input->post('komulatif',true);
		$psikomotorik = $this->input->post('psikomotorik',true);
		$ratarata = ($afektif+$komulatif+$psikomotorik) / 3;

		$data['rata'] = $ratarata;

		$this->db->insert('nilai_siswa',$data);

		$this->session->set_flashdata('berhasil','Nilai berhasil ditambahkan');
		redirect('admin/akademik/inputnilaisiswa');
	}

	public function nilaisiswa()
	{
		$data['nilai'] = $this->db->select('nilai_siswa.*,siswa.nama,mapel.nama_mapel')->from('nilai_siswa')->join('siswa','siswa.nik=nilai_siswa.nik_siswa','INNER')->join('mapel','mapel.kode_mapel=nilai_siswa.kode_mapel','INNER')->get()->result();

		$this->load->view('admin/akademik/nilaisiswa/lihat',$data);
	}
}