<?php

namespace App\Controllers;

use \App\Models\MajalahModel;

use \App\Models\CategoryModelM;

class Majalah extends BaseController
{
    private $majalahModel, $catModel;
    public function __construct()
    {
        $this->majalahModel = new MajalahModel();
        $this->catModel = new CategoryModelM();
    }

    public function index()
    {
        $dataMajalah = $this->majalahModel->getMajalah();
        $data = [
            'title' => 'Data Majalah',
            'result' => $dataMajalah
        ];
        return view('majalah/index', $data);
    }

    public function detail($slug)
    {
        $dataMajalah = $this->majalahModel->getMajalah($slug);
        $data = [
            'title'=>'Detail Majalah',
            'result'=>$dataMajalah
        ];
        return view('majalah/detail', $data);
    }

    public function create()
    {
        session();
        $data = [
            'title' => 'Tambah Majalah',
            'category' => $this->catModel->findAll(),
            'validation' => \Config\Services::validation()
        ];
        return view('majalah/create', $data);
    }

    public function save()
    {
        if(!$this->validate([
            'judul'=>[
                'rules'=>'required|is_unique[majalah.judul]',
                'errors'=>[
                    'required'=>'{field} harus diisi',
                    'is_unique'=>'{field} sudah ada'
                ]
            ],
            'tahun'=>'required|integer',
            'penerbit'=>'required',
            'harga'=>'required|numeric',
            'diskon'=>'permit_empty|decimal',
            'stok' => [
                'rules' => 'required|integer',
                'errors' => [
                    'required' => '{field} harus diisi',
                    'integer' => '{field} hanya boleh angka'
                ]
            ],
            'sampul' => 
            [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Gambar tidak boleh lebih dari 1MB!!',
                    'is_image' => 'Yang anda pilih bukan gambar!',
                    'mime_in' => 'Yang anda pilih bukan gambar!',
                ]
            ],
        ])){
            return redirect()->to('majalah/create')->withInput();
        }
        $fileSampul = $this->request->getFile('sampul');
        if ($fileSampul->getError() == 4){
            $namaFile = $this->defaultImage;
        } else {
           
            $namaFile = $fileSampul->getRandomName();
           
            $fileSampul->move('img',$namaFile);
        }
        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->majalahModel->save([
            'judul'=>$this->request->getVar('judul'),
            'tahun'=>$this->request->getVar('tahun'),
            'penerbit'=>$this->request->getVar('penerbit'),
            'harga'=>$this->request->getVar('harga'),
            'diskon'=>$this->request->getVar('diskon'),
            'stok'=>$this->request->getVar('stok'),
            'majalah_category_id'=>$this->request->getVar('id_kategori'),
            'slug'=>$slug,
            'cover'=> $namaFile
        ]);

        session()->setFlashdata("msg", "Data berhasil ditambahkan!");

        return redirect()->to('/majalah');
    }

    public function edit($slug)
    {
        $dataMajalah = $this->majalahModel->getMajalah($slug);
        if(empty($dataMajalah)){
            throw new \CodeIgniter\Exception\PageNotFoundException("Judul Buku $slug tidak ditemukan!");
        }
        $data = [
            'title'=>'Ubah Majalah',
            'category'=>$this->catModel->findAll(),
            'validation'=>\Config\Services::validation(),
            'result'=>$dataMajalah
        ];
        return view('majalah/edit', $data);
    }

    public function update($id)
    {
        $dataOld = $this->majalahModel->getMajalah($this->request->getVar('slug'));
        if($dataOld['judul'] == $this->request->getVar('judul')){
            $rule_judul = 'required';
        }
        else{
            $rule_judul = 'required|is_unique[majalah.judul]';
        }

        if(!$this->validate([
            'judul'=>[
                'rules'=> $rule_judul,
                'errors'=>[
                    
                    'required'=>'{field} harus diisi',
                    'is_unique'=>'{field} sudah ada',
                   
                ]
            ],
            'penerbit'=>'required',
            'tahun'=>'required|integer',
            'harga'=>'required|numeric',
            'diskon'=>'permit_empty|decimal',
            'stok'=>'required|integer',
            'sampul' => 
            [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Gambar tidak boleh lebih dari 1MB!!',
                    'is_image' => 'Yang anda pilih bukan gambar!',
                    'mime_in' => 'Yang anda pilih bukan gambar!',
                ]
            ],
        ])){
            return redirect()->to('/majalah/edit/' . $this->request->getVar('slug'))->withInput();
        }
        $namaFileLama = $this->request->getVar('sampullama');
        $fileSampul = $this->request->getFile('sampul');
                if ($fileSampul->getError() == 4){
                    $namaFile = $namaFileLama;
                } else {
                   
                    $namaFile = $fileSampul->getRandomName();
                   
                    $fileSampul->move('img',$namaFile);
                    if($namaFileLama != $this->defaultImage && $namaFileLama != ""){
                        unlink('img/' . $namaFileLama);
                    }
                }

        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->majalahModel->save([
            'majalah_id' => $id,
            'judul' => $this->request->getVar('judul'),
            'penerbit' => $this->request->getVar('penerbit'),
            'tahun' => $this->request->getVar('tahun'),
            'harga' => $this->request->getVar('harga'),
            'diskon' => $this->request->getVar('diskon'),
            'stok' => $this->request->getVar('stok'),
            'majalah_category_id' => $this->request->getVar('id_kategori'),
            'slug' => $slug,
            'cover'=> $namaFile
        ]);
        session()->setFlashdata("msg", "Data berhasil diubah!");
        return redirect()->to('/majalah');
    }

    public function delete($id)
    {
        $dataMajalah= $this->majalahModel->find($id);
        $this->majalahModel->delete($id);
        if($dataMajalah['cover']!= $this->defaultImage){
            unlink('img/'. $dataMajalah['cover']);
        } 
        session()->setFlashdata("msg", "Data berhasil dihapus!");
        return redirect()->to('/majalah');
    }
}