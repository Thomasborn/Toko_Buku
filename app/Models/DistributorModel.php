<?php
namespace App\Models;

use CodeIgniter\Model;

class DistributorModel extends Model{
    
    protected $table = 'distributor';
    protected $primaryKey ='distributor_id';
    protected $useTimestamps = true;
    protected $allowedFields=[
        'name','address','email','phone'    
//
    ];
    protected $returnType = 'App\Entities\DistributorEntity';
    public function setEmail(string $email){
        $this->attributes["email"] = strtolower($email);
        return $this;
    }
    public function getName(){
        return strtoupper($this->attributes['name']);
    }
}