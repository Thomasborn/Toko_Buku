<?php

namespace App\Models;

use CodeIgniter\Model;

class MajalahModel extends Model
{
    
    protected $table = 'majalah';
    protected $primaryKey = 'majalah_id';
    protected $useTimestamps = true;
    protected $allowedFields=[
        'judul','slug','penerbit','tahun','harga','diskon','stok','cover','majalah_category_id'    
//
    ];
    protected $useSoftDeletes = true; 
    public function getMajalah($slug = false)
{
    /*$this->table('majalah')
    ->join('majalah_category','majalah.majalah_category_id = majalah_category.majalah_category_id');
    return $this->get()->getResultArray();*/
    $query = $this->table('majalah')
    ->join('majalah_category','majalah_category_id')
    ->where('deleted_at is null');
    if($slug == false)
    return $query->get()->getResultArray();
    return $query->where(['slug'=> $slug])->first();
}
}
