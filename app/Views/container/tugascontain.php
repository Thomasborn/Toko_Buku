<?= $this->extend('layout/template') ?>
<?= $this->section('content') ?>
<style>
  .jumbotron{
    margin-left: 30px;
    margin-right: 30px;
    display: block;
  }
  .img-fluid{
    padding-top: 20px;
    height: 280px;;
       
      }
      .foto{
        padding-top: 20px;
        max-width:100%;
        max-height:100%;
 
      }
      .logo{
        padding-top: 20px;
        max-width:100%;
        max-height:100%;
      }

  </style>
<div class="jumbotron " >
  
  

<div class="container" >
<h2 >Container</h2>
  <div class="row" >
  
 
  
  <div class="pb-2 bg-warning" align = 'center' ><h7 style= "font-weight: bold">Container1 - Gambar</h5>
</div>
 
    <div class="col-sm-4 bg-primary" style = "background-color: #1E90FF" align="middle">
     
      <img class="logo" src='UAJY.png' width='210' height='260' />
      <p style= "font-weight: bold ">Foto Uajy</p>
    </div>
    <div class="col-sm-4 bg-secondary" align="middle">
     
       <img class="foto"src='fotodiri.jpg' width='210' height='280'  />
      <p style= "font-weight: bold">Foto Diri</p>
    </div>
    <div class="col-sm-4 bg-success" align="middle">
     
      <img class="img-fluid" src='gedung.jpg'    />
      <p style="font-weight: bold"> Foto Gedung Bonaventura</p>
    </div>
  </div>
</div>



<div class="container mt-3">


  <div class="row" >
  <div class="pb-2 bg-success" align = 'center'  ><h7 style= "font-weight: bold">Container2 -Pesan Dan Kesan-  </h5> </div>
  <div class="col-sm-4 bg-info">
      <h3 align= "middle">Pengalaman Belajar SIWEB </h3>
      
      <p>Nama : Thomas Edwin Suryo Prayogo<p>
      <p> Saya merasa ingin tahu lebih banyak lagi mengenai framework dari CodeIgniter 4. Saya mendapatkan pengetahuan dalam penggunaan framework ini sangat membantu saya dalam pembuatan website agar lebih cepat dan juga menambahkan pengetahuan terkait beberapa penggunaan bahasa PHP.
         </p>
         <p> Masalahnya terkadang sinyal yang menjadi masalah </p>
      
    </div>
    <div class="col-sm-8 bg-warning">
      <h3 align= "middle">Pesan dan Kesan Saya Kepada Asdos</h3>
      <p align= "middle">Menambah Ilmu</p>
      <p align= "middle">Saya sangat menikmati Mata Kuliah. Kakak sudah sangat ramah. Terimakasih Kakak Kakak</p>
    </div>
  </div>
  
    
</div>

<?= $this->endSection() ?>.   