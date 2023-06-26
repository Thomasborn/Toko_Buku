<?php

namespace App\Controllers;

use \App\Models\SupplierModel;

use \App\Entities\SupplierEntity;

class Supplier extends BaseController
{
    private $supplierModel,$supplier;
    public function __construct()
    {
        
        $this->supplierModel = new SupplierModel();
        
    }

    public function index()
    {
        $datasSupplier = $this->supplierModel->findAll();
        
        $data = [
            'title' => 'Data Supplier',
            'result' => $datasSupplier
        ];
        
        return view('supplier/list', $data);
    }
    public function create(){
        session();
        $data = [
            'title'=>'Tambah Supplier',
            'validation' => \Config\Services::validation()
            
        ];
        
        return view('supplier/create',$data);
    }
    public function save(){
         
        $supplier = new SupplierEntity();
        if(!$this->validate([
            'nama'=>[
                'rules'=>'required|is_unique[majalah.judul]',
                'errors'=>[
                    'required'=>'{field} harus diisi',
                    'is_unique'=>'{field} sudah ada'
                ]
            ],
            'alamat'=>'required',
            'email'=>'required',
            'telp' => [
                'rules' => 'required|integer',
                'errors' => [
                    'required' => 'telephone harus diisi',
                    'integer' => 'telephone hanya boleh angka'
                ]
                ]])){
                    return redirect()->to('supplier/create')->withInput();
                }
                //Cara 1
    //   $data=[
    //       "name"=> $this->request->getVar('nama'),
    //       "address"=>$this->request->getVar('alamat'),
    //       "email"=>$this->request->getVar('email'),
    //       "phone"=>$this->request->getVar('telp')
          
    //   ];

    //Cara 2
    $supplier->nama=$this->request->getVar('nama');
    $supplier->alamat=$this->request->getVar('alamat');
    $supplier->email=$this->request->getVar('email');
    $supplier->telp=$this->request->getVar('telp');
    
    //   $email = $this->request->getVar('email');
    //     $this->SupplierModel->setEmail($email);
    //     $this->SupplierModel->getName();

    // Untuk cara 1
    //   $supplier->fill($data);
      $this->supplierModel->save($supplier);
      
        session()->setFlashdata("msg","Data berhasil ditambahkan!");
        return redirect()->to('/supplier');
    }
    public function edit($id){
         
      $dataSupplier=$this->supplierModel->where(['supplier_id' => $id])->first();
      
      if(empty($dataSupplier)){
          throw new \CodeIgniter\Exceptions\PageNotFoundException("Supplier dengan ID : $id tidak ditemukan " );
      }
       $data =[
           'title'=> 'Ubah Supplier',
           'result'=> $dataSupplier
       ];
          return view('supplier/edit',$data);
    }
    public function update($id){
         
        $supplier = new SupplierEntity();
      $data=[
          "supplier_id"=> $id,
          "name"=> $this->request->getVar('nama'),
          "address"=>$this->request->getVar('alamat'),
          "email"=>$this->request->getVar('email'),
          "phone"=>$this->request->getVar('telp')
          
      ];
      $supplier->fill($data);
      $this->supplierModel->save($supplier);
        session()->setFlashdata("msg","Data berhasil diubah!");
        return redirect()->to('/supplier');
    }
    public function delete($id){
        $this->supplierModel->delete($id);
        session()->setFlashdata("msg","Data berhasil dihapus!");
        return redirect()->to('/supplier');
    }
}