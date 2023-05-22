class CatatanHarian {
  String tanggal;
  String aktivitas;

  CatatanHarian(this.tanggal, this.aktivitas);
}

class AplikasiCatatan {
  List<CatatanHarian> catatan = [];

  void tambahCatatan(String tanggal, String aktivitas) {
    var catatanBaru = CatatanHarian(tanggal, aktivitas);
    catatan.add(catatanBaru);
    print("Catatan Berhasil Ditambahkan.");
  }

  void lihatCatatan() {
    if (catatan.isEmpty) {
      print("Belum ada Catatan.");
    } else {
      print("Daftar Catatan Harian : ");
      for (var i = 0; i < catatan.length; i++) {
        var catatanHariIni = catatan[i];
        print(
            "${i + 1}. ${catatanHariIni.tanggal}: ${catatanHariIni.aktivitas}");
      }
    }
  }

  void hapusCatatan(int indeks) {
    if (indeks < 0 || indeks >= catatan.length) {
      print("Indeks catatan Tidak Valid.");
    } else {
      catatan.removeAt(indeks);
      print("Catatan Berhasil Dihapus.");
    }
  }
}

void main() {
  var aplikasiCatatan = AplikasiCatatan();

  aplikasiCatatan.tambahCatatan('2023-05-21', 'Belajar Dart');
  aplikasiCatatan.tambahCatatan('2023-05-21', 'Mendengarkan Photograph');
  aplikasiCatatan.tambahCatatan(
      '2023-05-21', 'Membuat aplikasi Catatan dengan Dart');

  aplikasiCatatan.lihatCatatan();
  aplikasiCatatan.hapusCatatan(1);
  aplikasiCatatan.lihatCatatan();
}
