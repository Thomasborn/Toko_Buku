<?= $this->extend('layout/template') ?>
<?= $this->section('content') ?>

<main>
    <div class="container-fluid px-4">
        <!-- Judul Besar -->
        <h1 class="mt-4">Data Buku</h1>
        <ol class="breadcrumb mb-4">
            <!-- judul Bawahnya -->
            <li class="breadcrumb-item active">Pengelolaan Data Buku</li>
        </ol>

        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                <title> <?= $title; //nama halaman
                        ?> </title>
            </div>
            <div class="card-body">
                <!-- Isi Detail -->
                <div class="card mb-3">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="<?= base_url('img/'.$result['cover']) ?>" alt="" width="50%">
                        </div>
                        <div class="col-md-8">
                            <h5 class="card-title"><?= $result['title'] ?></h5>
                            <p class="card-text">Penulis : <?= $result['author'] ?></p>
                            <p class="card-text">Tahun Rilis : <?= $result['release_year'] ?></p>
                            <p class="card-text">Stok : <?= $result['stock'] ?></p>
                            <p class="card-text">Harga : <?= $result['price'] ?></p>
                            <p class="card-text">Diskon : <?= $result['discount'] ?></p>

                            <div class="d-grid gap-2 d-md-block">
                                <a class="btn btn-dark" type="button" href="/book/">Kembali</a>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- End Isi Detail -->
            </div>
        </div>
    </div>
</main>

<?= $this->endSection() ?>