<?php

namespace App\Models;

use CodeIgniter\Model;

class BookModel extends Model
{
    
    protected $table = 'book';
    protected $primaryKey = 'book_id';
    protected $useTimestamps = true;
    protected $allowedFields=[
        'title','slug','author','release_year','price','discount','stock','cover','book_category_id'    
//
    ];
    protected $useSoftDeletes = true; 
    public function getBook($slug = false)
{
    /*$this->table('book')
    ->join('book_category','book.book_category_id = book_category.book_category_id');
    return $this->get()->getResultArray();*/
    $query = $this->table('book')
    ->join('book_category','book_category_id')
    ->where('deleted_at is null');
    if($slug == false)
    return $query->get()->getResultArray();
    return $query->where(['slug'=> $slug])->first();
}
}
