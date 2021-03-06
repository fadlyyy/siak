<?php
defined('BASEPATH') OR exit('No direct scripts access allowed');

class Nilai extends CI_Controller
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
		if($level != 'guru')
		{
			redirect('home');
		}
	}

	public function index()
	{
		$data['siswa'] = $this->db->get('siswa')->result();
		$data['mapel'] = $this->db->get('mapel')->result();
		$data['kelas'] = $this->db->get('ruang_kelas')->result();

		$this->load->view('guru/nilai/create',$data);
	}

	public function store()
	{
		do{
			$id = random_string('alnum',15);
			$cek = $this->db->where('id',$id)->get('jadwal_pelajaran')->result();
			$cek_id = count($cek);
		}while($cek_id > 0);

		$data['id'] = $id;
		$data['nik_siswa'] = $this->input->post('nik_siswa',true);
		$data['id_kelas'] = $this->input->post('id_kelas',true);
		$data['kode_mapel'] = $this->input->post('mapel',true);
		$data['semester'] = $this->input->post('semester',true);
		$data['thn_ajaran'] = $this->input->post('thn_ajaran',true);
		$data['tugas'] = $this->input->post('tugas',true);
		$data['uas'] = $this->input->post('uas',true);
		$data['uts'] = $this->input->post('uts',true);

		$tugas = $this->input->post('tugas',true);
		$uts = $this->input->post('uts',true);
		$uas = $this->input->post('uas',true);
		$data['rata'] = ($tugas + $uts + $uas) / 3;

		$this->db->insert('nilai_siswa',$data);
		$this->session->set_flashdata('berhasil','Nilai berhasil di input');
		redirect('guru/nilai');
	}

	public function lihat_nilai()
	{
		$data['nilai'] = $this->db->select('nilai_siswa.*,siswa.nama,mapel.nama_mapel,ruang_kelas.nama_ruangan')->from('nilai_siswa')->join('siswa','siswa.nik=nilai_siswa.nik_siswa','INNER')->join('mapel','mapel.kode_mapel=nilai_siswa.kode_mapel')->join('ruang_kelas','ruang_kelas.id=nilai_siswa.id_kelas')->get()->result();

		$this->load->view('guru/nilai/index',$data);
	}

	public function destroy($id)
	{
		$this->db->where('id',$id)->delete('nilai_siswa');
		$this->session->set_flashdata('berhasil','Nilai berhasil di hapus');
		redirect('guru/nilai/lihat_nilai');
	}

	public function cetak()
	{
		$data['nilai'] = $this->db->select('nilai_siswa.*,siswa.nama,mapel.nama_mapel')->from('nilai_siswa')->join('siswa','siswa.nik=nilai_siswa.nik_siswa','INNER')->join('mapel','mapel.kode_mapel=nilai_siswa.kode_mapel')->get()->result();

		$html = $this->load->view('guru/nilai/pdf',$data,true);

		require(APPPATH."/third_party/html2pdf_4_03/html2pdf.class.php");
		try {
			$html2pdf = new HTML2PDF('P', 'A4', 'en', true, 'UTF-8', array('20', '5', '20', '5'));
			$html2pdf->WriteHTML($html);
			$html2pdf->Output('laporan_nilai_'.date('Ymd').'.pdf');
		} catch (HTML2PDF_exception $e) {
            // echo $e;
			$this->session->set_flashdata('berhasil', 'Maaf, kami mengalami kendala teknis.');
			redirect('guru/nilai/lihat_nilai');
		}
	}

	public function create_ekskul()
	{
		$data['siswa'] = $this->db->get('siswa')->result();
		$data['ekskul'] = $this->db->get('ekskul')->result();

		$this->load->view('guru/nilai/ekskul',$data);
	}

	public function store_ekskul()
	{
		$data['nik_siswa'] = $this->input->post('nik_siswa',true);
		$data['nama'] = $this->input->post('nama',true);
		$data['nilai'] = $this->input->post('nilai',true);

		$this->db->insert('nilai_ekskul',$data);
		$this->session->set_flashdata('berhasil','Nilai berhasil di input');
		redirect('guru/nilai/create_ekskul');
	}

	public function cetak2()
	{
		$data['nilai'] = $this->db->select('nilai_siswa.*,siswa.nama,mapel.nama_mapel')->from('nilai_siswa')->join('siswa','siswa.nik=nilai_siswa.nik_siswa','INNER')->join('mapel','mapel.kode_mapel=nilai_siswa.kode_mapel')->get()->result();

		$html = $this->load->view('guru/nilai/pdf',$data,true);

		require(APPPATH."/third_party/html2pdf_4_03/html2pdf.class.php");
		try {
			$html2pdf = new HTML2PDF('L', 'A4', 'en', true, 'UTF-8', array('20', '5', '20', '5'));
			$html2pdf->WriteHTML($html);
			$html2pdf->Output('laporan_nilai_'.date('Ymd').'.pdf');
		} catch (HTML2PDF_exception $e) {
            echo $e;
			// $this->session->set_flashdata('berhasil', 'Maaf, kami mengalami kendala teknis.');
			// redirect('guru/nilai/lihat_nilai');
		}
	}
}