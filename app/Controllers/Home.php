<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
       
        $data = [
            'title'=> "Dashboard"
        ];
        return view('admin/overview', $data);
    
    }
   
    public function about($nama = null,$umur = 0){
        echo "Nama saya adalah $nama dan Usia saya $umur tahun";
    }
   
}

