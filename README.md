# uas
pembuatan data pemantauan covid 19
1.	Index.php
Index.php ini merupakan tampilan halaman website setelah user berhasil login. Pada halamain ini menampilkan data pasien covid-19 dari setiap provinsi di Indonesia, data nya meliputi Nama Wilayah, Jumlah Postif, Jumlah  Dirawat, Jumlah Sembuh, Jumlah Meninggal, dengan keterangan Nama Operator dan Nim Mahasiswa sebagai operator.
Pada halaman ini juga, kita dapat melakukan entri data pasien, edit data , menghapus data dan mencetak data pasien dari masing-masing provinsi. Serta kolom pencarian untuk memudahkan user mencari data.

2.	koneksi.php
koneksi.php berfungsi untuk mengkoneksikan atau mengubungkan form dengan database MySQL, sehingga user dapat melakukan operasi CRUD. Dengan menggunakan fugsi mysqli_connect(), yang didalamnya terdapat komponen host, nama database, username dan password.

3.	tambah.php
tambah.php ini berfungsi untuk menambahkan data jumlah pasien covid-19. Didalam nya terdapat tampilan form data pemantauan covid-19 berupa Nama Wilayah, Jumlah Postif, Jumlah  Dirawat, Jumlah Sembuh, Jumlah Meninggal, dengan keterangan Nama Operator dan Nim Mahasiswa sebagai operator. Dan terdapat  <form method="post" action="simpan.php" > untuk menghubungkan ke fungsi simpan , dengan tujuan menyimpan data yang ingin ditambahkan ke dalam database MySQL.
 
4.	simpan.php
simpan.php ini berfungsi untuk menyimpan data, terdapat fungsi $input = "INSERT INTO data VALUES(NULL, '$nama_wilayah', '$jumlah_positif', '$jumlah_dirawat', '$jumlah_sembuh', '$jumlah_meninggal', '$nama_operator', '$nim_mahasiswa')";
dimana fungsi tersebut untuk menyompdat data ke dalam database ditambah dengan fungsi  include('koneksi.php');, yang menghubungkan ke database MySQL.

5.	editform.php
editform.php ini berfungsi untuk menampilkan form ubah data, yang bertujuan untuk mengubah data yang sudah diinput  sebelumnya dan memperbaharui data. Terdapat sintax <form method="get" action="edit.php"> yang menghubungkan fungsi ke edit.php

6.	edit.php
edit.php ini berfungsi untuk mengubah data pasien covid-19 yang sudah diinput dan memperbaharui data yang terdapat didalam database MySQL dengan data yang diinput pada formedit. Didalam nya terdapat fungsi php $query = "UPDATE data SET nama_wilayah='$nama_wilayah' , jumlah_positif='$jumlah_positif' , jumlah_dirawat='$jumlah_dirawat' , jumlah_sembuh='$jumlah_sembuh', jumlah_meninggal='$jumlah_meninggal', nama_operator='$nama_operator', nim_mahasiswa='$nim_mahasiswa' WHERE id='$id' ";

7.	delete.php
hapus.php berfunsgi untuk menghapus data covid-19 yang terdapat pada tampilan data. Terdapat sintax $query = "DELETE FROM data WHERE id = '$id' "; yang berfungsi untuk mengkoneksikan ke database MySQL bahwa data tersebut dihapus.
8.	cetak.php
cetak.php adalah file yang digunakan untuk mencetak data pasien covid-19 pada masing-masing provinsi. Terdapat sintax window.print(); yang digunakan untuk mencetak sebuah halaman website. File dokemen hasil cetak dalam format PDF.

9.	logout.php
Logout.php adalah file yang digunakan untuk proses keluar dari program aplikasi. Logout ini untuk menjaga keamanan sebuah akun agar tidak digunakan oleh orang lain. Terdapat sintax session_destroy(); yang berfungsi untuk  menghapus semua session data di server. Setelah berhasil melakukan logout, user akan diarahkan kembali ke halaman login.php.

