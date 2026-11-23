import 'package:pasbhishma/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  RxList<MakananModel> makananList = [
    MakananModel(nama: "Nasi Goreng", deskripsi: "Nasi goreng spesial dengan telur dan ayam", gambar: "https://axwwgrkdco.cloudimg.io/v7/__gmpics3__/8cdd895dc54440fba3931b0056358c12.jpeg?width=1000", harga: "Rp 15.000"),
    MakananModel(nama: "Mie Ayam", deskripsi: "Mie ayam dengan kuah kaldu dan topping ayam", gambar: "https://www.sternefresser.de/fileadmin/user_upload/koenigshof_2017/hummer.jpg", harga: "Rp 12.000"),
    MakananModel(nama: "Sate Ayam", deskripsi: "Sate ayam dengan bumbu kacang dan lontong", gambar: "https://axwwgrkdco.cloudimg.io/v7/__gmpics3__/4d27d5ca405a4733977bb945e1f5cd4e.jpeg", harga: "Rp 20.000"),
    MakananModel(nama: "Bakso", deskripsi: "Bakso sapi dengan kuah kaldu dan mie", gambar: "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?q=80&w=1170&auto=format&fit=crop", harga: "Rp 10.000"),
    MakananModel(nama: "Rendang", deskripsi: "Rendang daging sapi dengan bumbu rempah khas Padang", gambar: "https://axwwgrkdco.cloudimg.io/v7/__gmpics3__/fc4720aca2494041ab963d16ff203042.jpg", harga: "Rp 25.000"),
  ].obs;
  // Daftar makanan yang akan ditampilkan
}