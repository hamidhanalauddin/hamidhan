import 'package:get/get.dart';

class PersegiController extends GetxController {
  int sisi = 0;

  final hasil = "".obs;
  final keliling = "".obs;

  void hitungLuas() {
    int hitung = sisi * sisi;
    hasil.value = "hasil perhitungan dari $sisi X $sisi = $hitung";
  }

  void hitungkeliling() {
    int keliling = sisi + sisi + sisi + sisi;
    hasil.value =
    "hasil perhitungan dari $sisi + $sisi +$sisi +$sisi = $keliling";
  }
}