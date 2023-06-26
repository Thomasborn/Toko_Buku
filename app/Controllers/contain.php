<?php

namespace App\Controllers;

class contain extends BaseController
{
    public function index()
    {
        
        $data = [
            'title'=> 'Container'
            
           
        ];
        return view('container/tugascontain',$data);
      
    
    }
   
}

