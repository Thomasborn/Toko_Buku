<?= $this->extend('layout/template') ?>
<?= $this->section('content') ?>


                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">DATA Supplier</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Penglolaan Data Supplier</li>
                        </ol>
                 
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                <?= $title ?>
                            </div>
                            <div class="card-body">
                            <form action="/supplier/edit/<?= $result->supplier_id ?>" method="POST" >
                                <?= csrf_field()?>
                                
                                <div class= "mb-3 row">
<label for="nama"	class="col-sm-2 col-form-label">Nama</label>
<div class="col-sm-10">
<input type="text" class="form-control" id="nama" name="nama" value="<?= $result->name ?>">

</div>
</div>
<div class="mb-3 row">
<label for="author" class="col-sm-2 col-form-label">Alamat</label>
<div class="col-sm-10">
<input type="text" class="form-control" id="alamat" name="alamat" value="<?= $result->address ?>"></div>
</div>
<div class="mb-3 row">
<label for="email" class="col-sm-2 col-form-label">Email </label> <div class="col-sm-5">
<input type="text" Class="form-control" id="email" name="email"  value="<?= $result->email ?>" ?>">
 </div>
<label for="telp" class="col-sm-2 col-form-label">Telepon</label>
<div class="col-sm-3">
<input type="text" class="form-control" id="telp" name="telp" value="<?= $result->phone ?>"> </div>
</div>

</div> </div>
<div class="d-grid gap-2 d-md-flex justify-content-md-end">
<button class="btn btn-primary me-md-2" type="submit">Simpan</button> <button class="btn btn-danger" type="reset">Batal</button>
</div>
</form>



</div>
</div>
</div>
</main>
<?= $this->endSection()?>