<?php
defined('BASEPATH') OR exit('No direct scripts access allowed');

class Lihatdata extends CI_Controller
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

	// Menu Siswa ============================================================
	public function siswa()
	{
		$data['siswa'] = $this->db->select('siswa.*,ruang_kelas.nama_ruangan,')->from('siswa')->join('ruang_kelas','ruang_kelas.id=siswa.id_kelas')->get()->result();

		$this->load->view('admin/lihatdata/siswa/index',$data);
	}

	public function editsiswa($id)
	{
		$data['siswa'] = $this->db->where('id',$id)->get('siswa')->row();
		$data['kelas'] = $this->db->get('ruang_kelas')->result();

		$this->load->view('admin/lihatdata/siswa/edit',$data);
	}

	public function updatesiswa($id)
	{
		$data['nik'] = $this->input->post('nik',true);
		$data['id_kelas'] = $this->input->post('id_kelas',true);
		$data['jk'] = $this->input->post('jk',true);
		$data['nama'] = $this->input->post('nama',true);
		$data['thn_ajaran'] = $this->input->post('thn_ajaran',true);
		$data['alamat'] = $this->input->post('alamat',true);
		$data['nope'] = $this->input->post('nope',true);
		$data['ttl'] = $this->input->post('ttl',true);

		$nama = $this->input->post('nama',true);

		$this->db->where('id',$id)->update('siswa',$data);

		$this->session->set_flashdata('berhasil','Siswa dengan nama <b>'.$nama.'</b> berhasil di Update');

		redirect('admin/lihatdata/editsiswa/'.$id);
	}

	public function destroysiswa($id)
	{
		$this->db->where('id',$id)->delete('siswa');

		redirect('admin/lihatdata/siswa');
	}

	public function cetaksiswa()
	{
		$data['siswa'] = $this->db->select('siswa.*,ruang_kelas.nama_ruangan')->from('siswa')->join('ruang_kelas','ruang_kelas.id=siswa.id_kelas')->get()->result();

		$html = $this->load->view('admin/lihatdata/siswa/cetak',$data, true);

		require(APPPATH."/third_party/html2pdf_4_03/html2pdf.class.php");
		try {
			$html2pdf = new HTML2PDF('P', 'A4', 'en', true, 'UTF-8', array('20', '5', '20', '5'));
			$html2pdf->WriteHTML($html);
			$html2pdf->Output('laporan_siswa_'.date('Ymd').'.pdf');
		} catch (HTML2PDF_exception $e) {
            // echo $e;
			$this->session->set_flashdata('berhasil', 'Maaf, kami mengalami kendala teknis.');
			redirect('admin/lihat_data/siswa');
		}
	}

	public function guru()
	{
		$data['guru'] = $this->db->get('guru')->result();

		$this->load->view('admin/lihatdata/guru/index',$data);
	}

	public function editguru($id)
	{
		$data['guru'] = $this->db->where('id',$id)->get('guru')->row();

		$this->load->view('admin/lihatdata/guru/edit',$data);
	}

	public function updateguru($id)
	{
		$data['nip'] = $this->input->post('nip',true);
		$data['nama'] = $this->input->post('nama',true);
		$nama = $this->input->post('nama',true);

		$data['ttl'] = $this->input->post('ttl',true);
		$data['jabatan'] = $this->input->post('jabatan',true);
		$data['nope'] = $this->input->post('nope',true);
		$data['jk'] = $this->input->post('jk',true);
		$data['agama'] = $this->input->post('agama',true);
		$data['alamat'] = $this->input->post('alamat',true);
		$nama = $this->input->post('nama',true);

		$this->db->where('id',$id)->update('guru',$data);

		$this->session->set_flashdata('berhasil','Guru dengan nama '.$nama.' berhasil di Update');
		redirect('admin/lihatdata/editguru/'.$id);
	}

	public function destroyguru($id)
	{
		$this->db->where('id',$id)->delete('guru');

		redirect('admin/lihatdata/guru');
	}

	public function cetakguru()
	{
		$data['guru'] = $this->db->get('guru')->result();

		$html = $this->load->view('admin/lihatdata/guru/cetak',$data, true);

		require(APPPATH."/third_party/html2pdf_4_03/html2pdf.class.php");
		try {
			$html2pdf = new HTML2PDF('P', 'A4', 'en', true, 'UTF-8', array('20', '5', '20', '5'));
			$html2pdf->WriteHTML($html);
			$html2pdf->Output('laporan_guru_'.date('Ymd').'.pdf');
		} catch (HTML2PDF_exception $e) {
            // echo $e;
			$this->session->set_flashdata('berhasil', 'Maaf, kami mengalami kendala teknis.');
			redirect('admin/lihat_data/guru');
		}
	}

	public function kelas()
	{
		$data['kelas'] = $this->db->get('ruang_kelas')->result();

		$this->load->view('admin/lihatdata/kelas/index',$data);
	}

	public function editkelas($id)
	{
		$kelas = $this->db->where('id',$id)->get('ruang_kelas')->row();
		$kelas = $kelas->nama_ruangan;
		$data['kelas2'] = explode(' ', $kelas);

		$data['kelas'] = $this->db->where('id',$id)->get('ruang_kelas')->row();

		$this->load->view('admin/lihatdata/kelas/edit',$data);
	}

	public function updatekelas($id)
	{

		$data['nama_ruangan'] = $this->input->post('nama1',true);
		$data['jumlah_siswa'] = $this->input->post('jumlah_siswa',true);

		$this->db->where('id',$id)->update('ruang_kelas',$data);

		$this->session->set_flashdata('berhasil', 'Ruang kelas berhasil di update');
		redirect('admin/lihatdata/editkelas/'.$id);
	}

	public function destroykelas($id)
	{
		$this->db->where('id',$id)->delete('ruang_kelas');

		redirect('admin/lihatdata/kelas');
	}

	public function cetakkelas()
	{
		$data['kelas'] = $this->db->get('ruang_kelas')->result();

		$html = $this->load->view('admin/lihatdata/kelas/cetak',$data,true);

		require(APPPATH."/third_party/html2pdf_4_03/html2pdf.class.php");
		try {
			$html2pdf = new HTML2PDF('P', 'A4', 'en', true, 'UTF-8', array('20', '5', '20', '5'));
			$html2pdf->WriteHTML($html);
			$html2pdf->Output('laporan_kelas_'.date('Ymd').'.pdf');
		} catch (HTML2PDF_exception $e) {
            // echo $e;
			$this->session->set_flashdata('berhasil', 'Maaf, kami mengalami kendala teknis.');
			redirect('admin/lihatdata/kelas');
		}
	}

	public function mapel()
	{
		$data['mapel'] = $this->db->get('mapel')->result();

		$this->load->view('admin/lihatdata/mapel/index',$data);
	}

	public function editmapel($id)
	{
		$data['mapel'] = $this->db->where('id',$id)->get('mapel')->row();

		$this->load->view('admin/lihatdata/mapel/edit',$data);
	}

	public function updatemapel($id)
	{
		$data['kode_mapel'] = $this->input->post('kode_mapel',true);
		$data['nama_mapel'] = $this->input->post('nama_mapel',true);
		$nama = $this->input->post('nama_mapel',true);

		$this->db->where('id',$id)->update('mapel',$data);

		$this->session->set_flashdata('berhasil','Mata pelajaran '.$nama.' berhasil di update');
		redirect('admin/lihatdata/editmapel/'.$id);
	}

	public function destroymapel($id)
	{
		$this->db->where('id',$id)->delete('mapel');

		redirect('admin/lihatdata/mapel');
	}

	public function cetakmapel()
	{
		$data['mapel'] = $this->db->get('mapel')->result();

		$html = $this->load->view('admin/lihatdata/mapel/cetak',$data,true);

		require(APPPATH."/third_party/html2pdf_4_03/html2pdf.class.php");
		try {
			$html2pdf = new HTML2PDF('P', 'A4', 'en', true, 'UTF-8', array('20', '5', '20', '5'));
			$html2pdf->WriteHTML($html);
			$html2pdf->Output('laporan_kelas_'.date('Ymd').'.pdf');
		} catch (HTML2PDF_exception $e) {
            // echo $e;
			$this->session->set_flashdata('berhasil', 'Maaf, kami mengalami kendala teknis.');
			redirect('admin/lihatdata/mapel');
		}
	}

	public function wali()
	{
		$data['wali'] = $this->db->select('wali_murid.*, siswa.nama as namasiswa')->from('wali_murid')->join('siswa','siswa.nik = wali_murid.nik')->get()->result();

		$this->load->view('admin/lihatdata/wali/index',$data);
	}

	public function editwali($id)
	{
		$data['wali'] = $this->db->where('id',$id)->get('wali_murid')->row();
		$data['siswa'] = $this->db->get('siswa')->result();

		$this->load->view('admin/lihatdata/wali/edit',$data);
	}

	public function updatewali($id)
	{
		$data['nama'] = $this->input->post('nama',true);
		$data['nik'] = $this->input->post('nik',true);
		$nama = $this->input->post('nama',true);

		$this->db->where('id',$id)->update('wali_murid',$data);

		$this->session->set_flashdata('berhasil','Wali dengan nama <b>'.$nama.'</b> berhasil di Update');
		redirect('admin/lihatdata/editwali/'.$id);
	}

	public function destroywali($id)
	{
		$this->db->where('id',$id)->delete('wali_murid');

		redirect('admin/lihatdata/wali');
	}

	public function cetakwali()
	{
		$data['wali'] = $this->db->select('wali_kelas.*,guru.nama,ruang_kelas.nama_ruangan')->from('wali_kelas')->join('guru','guru.NIP=wali_kelas.NIP','INNER')->join('ruang_kelas','ruang_kelas.id=wali_kelas.id_kelas','INNER')->get()->result();

		$html = $this->load->view('admin/lihatdata/wali/cetak',$data,true);

		require(APPPATH."/third_party/html2pdf_4_03/html2pdf.class.php");
		try {
			$html2pdf = new HTML2PDF('P', 'A4', 'en', true, 'UTF-8', array('20', '5', '20', '5'));
			$html2pdf->WriteHTML($html);
			$html2pdf->Output('laporan_kelas_'.date('Ymd').'.pdf');
		} catch (HTML2PDF_exception $e) {
            // echo $e;
			$this->session->set_flashdata('berhasil', 'Maaf, kami mengalami kendala teknis.');
			redirect('admin/lihatdata/lihatwalikelas');
		}
	}

	public function lihatwalikelas()
	{
		$data['wali'] = $this->db->select('wali_kelas.*,guru.nama,ruang_kelas.nama_ruangan')->from('wali_kelas')->join('guru','guru.NIP=wali_kelas.NIP','INNER')->join('ruang_kelas','ruang_kelas.id=wali_kelas.id_kelas','INNER')->get()->result();

		$this->load->view('admin/lihatdata/wali/index',$data);
	}

	// Menu Ekskul.....................
	// Menampilkan semua data ekskul
	public function ekskul()
	{
		$data['ekskul'] = $this->db->get('ekskul')->result();

		$this->load->view('admin/lihatdata/ekskul/index',$data);
	}

	public function editekskul($id)
	{
		$data['ekskul'] = $this->db->where('id',$id)->get('ekskul')->row();

		$this->load->view('admin/lihatdata/ekskul/edit',$data);
	}

	public function updateekskul($id)
	{
		$data['nama'] = $this->input->post('ekskul',true);

		$this->db->where('id',$id)->update('ekskul',$data);

		$this->session->set_flashdata('berhasil','Data berhasil di Update');
		redirect('admin/lihatdata/editekskul/'.$id);
	}

	public function destroyekskul($id)
	{
		$this->db->where('id',$id)->delete('ekskul');

		redirect('admin/lihatdata/ekskul');
	}

	public function cetakekskul()
	{
		$data['ekskul'] = $this->db->get('ekskul')->result();

		$html = $this->load->view('admin/lihatdata/ekskul/cetak',$data,true);

		require(APPPATH."/third_party/html2pdf_4_03/html2pdf.class.php");
		try {
			$html2pdf = new HTML2PDF('P', 'A4', 'en', true, 'UTF-8', array('20', '5', '20', '5'));
			$html2pdf->WriteHTML($html);
			$html2pdf->Output('laporan_ekskul_'.date('Ymd').'.pdf');
		} catch (HTML2PDF_exception $e) {
            // echo $e;
			$this->session->set_flashdata('berhasil', 'Maaf, kami mengalami kendala teknis.');
			redirect('admin/lihatdata/ekskul');
		}
	}
}