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
                            <form action="/supplier/create" method="POST" enctype="multipart/form-data" >
                                <?= csrf_field()?>
<div class= "mb-3 row">
<label for="nama" class="col-sm-2 col-form-label">Nama</label>
<div class="col-sm-10">
<input type="text" class="form-control  <?= $validation->hasError('nama') ?
'is-invalid' : '' ?>" id="nama" name="nama"  value="<?= old('nama') ?>">
<div id="validationServer03Feedback" class="invalid-feedback"><?=$validation->getError('nama')?>
</div>
</div>
</div>

<div class="mb-3 row">
<label for="author" class="col-sm-2 col-form-label">Alamat</label>
<div class="col-sm-10">
<input type="text" class="form-control <?= $validation->hasError('alamat') ?
'is-invalid' : '' ?>" id="alamat" name="alamat" value="<?= old('alamat') ?>" >
<div id="validationServer03Feedback" class="invalid-feedback"><?=$validation->getError('alamat')?></div>
</div>
</div>
<div class="mb-3 row">
<label for="email" class="col-sm-2 col-form-label">Email </label>
 <div class="col-sm-5">
<input type="text" Class="form-control <?= $validation->hasError('email') ?
'is-invalid' : '' ?>" id="email" name="email"  value="<?= old('email') ?>">
    <div id="validationServer03Feedback" class="invalid-feedback"><?=$validation->getError('email')?></div>
 </div>
<label for="telp" class="col-sm-2 col-form-label">Telepon</label>
<div class="col-sm-3">
    <input type="text" class="form-control <?= $validation->hasError('telp') ?
'is-invalid' : '' ?>" id="telp" name="telp" value="<?= old('telp') ?>">
    <div id="validationServer03Feedback" class="invalid-feedback"><?=$validation->getError('telp')?></div>
</div>

</div>
<div class="d-grid gap-2 d-md-flex justify-content-md-end">
<button class="btn btn-primary me-md-2" type="submit">Simpan</button> 
<button class="btn btn-danger" type="reset">Batal</button>
</div>

</form>



</div>
</div>
</div>
</main>
<?= $this->endSection()?>