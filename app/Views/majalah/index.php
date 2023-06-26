<?= $this->extend('layout/template') ?>
<?= $this->section('content') ?>


                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">DATA Majalah</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Pengelolaan Data Majalah</li>
                        </ol>
                    
                        <div class="card mb-4">
                            <div class="card-header">
                                   <!-- Start Flash Data -->
                    <?php if(session()->getFlashdata('msg')): ?>
                        <div class="alert alert-success" role="alert">
                            <?= session()->getFlashdata('msg')?>
                        </div>
                        <?php endif; ?>
                        <div class="s"id="conf" role="alert">
                         </div>
                                <i class="fas fa-table me-1"></i>
                                <?= $title ?>
                            </div>
                            <div class="card-body">
                                <a class="btn btn-primary mb-3" type="button" href="/majalah/create">Tambah Majalah</a>
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Cover</th>
                                            <th>Judul</th>
                                            <th>Kategori</th>
                                            <th>Harga</th>
                                            <th>Stok</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    
                                    
                                    <tbody>
                                        <?php $no =1;
                                        foreach($result as $value) : ?>
                                        <tr>
                                            <td><?= $no++ ?></td>
                                            <td>
                                                <img src="img/<?= $value['cover'] ?>" alt="" width="100">
                                            </td>
                                            <td><?= $value['judul']?></td>
                                            <td><?= $value['name_category']?></td>
                                            <td><?= $value['harga']?></td>
                                            <td><?= $value['stok']?></td>
                                            <td><a class="btn btn-primary" href="/majalah/<?= $value['slug']?>" role="button">Detail</a>
                                            <a class="btn btn-warning" href="/majalah/edit/<?= $value['slug']?>" role = "button">Ubah</a> 
                                       <form action="/majalah/<?=$value['majalah_id']?>" method="post" class="d-inline">
                                            <?= csrf_field()?>
                                            <input type="hidden" name="_method" value="DELETE">
                                            <button type="submit" class="btn btn-danger"role="button"
                                            onclick="return hapus()"> Hapus </button>
                                        </form>
                                    
                                    </td>
                                            </tr>
                                           <?php endforeach;?>
                                       
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                  </body>
                  <script>
                      function hapus()
{                      var text;
    
    z=confirm('Apakah anda yakin?');
if (z == true) {
   return true;
} else {
    // document.getElementsByClassName("s").style.backgroundColor = "white";
    document.getElementById("conf").innerHTML = "Data Tidak Dihapus / Cancel";
    return false;
    
}}</script>
                  <?= $this->endSection() ?>   