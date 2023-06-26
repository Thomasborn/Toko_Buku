<?= $this->extend('layout/template') ?>
<?= $this->section('content') ?>

<main>
    <div class="container-fluid px-4">
        <h1 class="mt-4">Data Majalah</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item active">Pengelolaan Data Majalah</li>
        </ol>
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                <?= $title ?>
            </div>
            <div class="card-body">
                <form action="/majalah/edit/<?= $result['majalah_id']?>" method="POST" enctype="multipart/form-data">
                    <?= csrf_field() ?>
                    <input type="hidden" name="slug" value="<?= $result['slug'] ?>">
                    <div class="mb-3 row">
                        <label for="judul" class="col-sm-2 col-form-label">Judul</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control <?= $validation->hasError('judul') ? 'is-invalid' : '' ?>" id="judul" name="judul" value="<?=old('judul', $result['judul'])?>">
                            <div id="calidationServer03Feedback" class="invalid-feedback">
                                <?= $validation->getError('judul') ?>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="penerbit" class="col-sm-2 col-form-label">Penerbit</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control <?= $validation->hasError('penerbit') ? 'is-invalid' : '' ?>" id="penerbit" name="penerbit" value="<?=old('penerbit', $result['penerbit'])?>">
                            <div id="calidationServer03Feedback" class="invalid-feedback">
                                <?= $validation->getError('penerbit') ?>
</div>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="tahun" class="col-sm-2 col-form-label">Tahun Terbit</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control <?= $validation->hasError('tahun') ? 'is-invalid' : '' ?>" id="tahun" name="tahun" value="<?= old('tahun', $result['tahun']) ?>">
                            <div id="calidationServer03Feedback" class="invalid-feedback">
                                <?= $validation->getError('tahun') ?>
                            </div>
                        </div>
                        <label for="stok" class="col-sm-2 col-form-label">Stok</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control <?= $validation->hasError('stok') ? 'is-invalid' : '' ?>" id="stok" name="stok" value="<?=old('stok', $result['stok'])?>">
                            <div id="calidationServer03Feedback" class="invalid-feedback">
                                <?= $validation->getError('stok') ?>
</div>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="harga" class="col-sm-2 col-form-label">Harga</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control <?= $validation->hasError('harga') ? 'is-invalid' : '' ?>" id="harga" name="harga" value="<?= old('harga', $result['harga']) ?>">
                            <div id="calidationServer03Feedback" class="invalid-feedback">
                                <?= $validation->getError('harga') ?>
                            </div>
                        </div>
                        <label for="diskon" class="col-sm-2 col-form-label">Diskon</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="diskon" name="diskon" value="<?=old('diskon', $result['diskon'])?>">
                        </div>
                    </div>
                    <div class="mb-3 row">
    <label for= "sampul" class="col-sm2-form-label"> Sampul </label>
    <div class="col-sm-5">
        <input type="hidden" name="sampullama" value="<?= $result['cover']?>">
    <input type="file" class="form-control <?= $validation->hasError('sampul') ?
'is-invalid' : '' ?>" id="sampul" name="sampul" onchange="previewImage()"><div id="validationServer03Feedback" class="invalid-feedback"><?=$validation->getError('sampul')?></div> </div>
</div>
 <div class="col-sm-6 mt-2">
        <img src="/img/<?= $result['cover']== "" ? "default.jpg" : $result['cover']?>" alt="" class="img-thumbnail img-preview">
 </div>
</div>
                    <div class="mb-3 row">
                        <label for="id_kategori" class="col-sm-2 col-form-label">Kategori</label>
                        <div class="col-sm-3">
                            <select name="id_kategori" id="id_kategori" class="form-control">
                                <!-- Select Disini -->
                                <?php foreach ($category as $value) : ?>
                                    <option value="<?= $value['majalah_category_id'] ?>" <?= $value['majalah_category_id'] == $result['majalah_category_id'] ?'selected':''?>>
                                        <?= $value['name_category'] ?>
                                    </option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                    <div class="d-grip gap-2 d-md-flex justify-content-md-end">
                        <button class="btn btn-primary me-md-2" type="submit">Perbarui</button>
                        <button class="btn btn-danger" type="reset">Batal</button>
                        <a class="btn btn-dark" type="button" href="/majalah/">Kembali</a>
                    </div>

                </form>
            </div>
        </div>
    </div>
</main>

<?= $this->endSection() ?>