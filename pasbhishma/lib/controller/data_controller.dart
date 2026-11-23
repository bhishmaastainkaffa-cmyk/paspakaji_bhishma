import 'package:pasbhishma/models/data_model.dart';
import 'package:get/get.dart';

// data dummy lokal sesuai lampiran soal (List<Model>)
class DataController extends GetxController {
  RxList<DataModel> listData = RxList<DataModel>([
    DataModel(
      namaMakanan: "Wagyu Steak",
      hargaMakanan: 185000,
      deskripsi:
          "Steak premium dengan tekstur lembut dan cita rasa kaya. "
          "Disajikan bersama saus spesial dan sayuran pilihan "
          "untuk pengalaman bersantap yang istimewa.",
      imageUrl:
          "https://axwwgrkdco.cloudimg.io/v7/__gmpics3__/8cdd895dc54440fba3931b0056358c12.jpeg?width=1000",
    ),
    DataModel(
      namaMakanan: "Lobster Thermidor",
      hargaMakanan: 220000,
      imageUrl:
          "https://www.sternefresser.de/fileadmin/user_upload/koenigshof_2017/hummer.jpg",
      deskripsi:
          "Hidangan lobster dengan saus krim gurih dan keju "
          "yang dipanggang hingga keemasan. Pilihan istimewa "
          "bagi pencinta hidangan laut.",
    ),
    DataModel(
      namaMakanan: "Truffle Cream Pasta",
      hargaMakanan: 145000,
      imageUrl:
          "https://axwwgrkdco.cloudimg.io/v7/__gmpics3__/4d27d5ca405a4733977bb945e1f5cd4e.jpeg",
      deskripsi:
          "Pasta dengan saus krim lembut dan aroma khas truffle. "
          "Perpaduan rasa gurih dan tekstur creamy dalam "
          "sajian bergaya restoran fine dining.",
    ),
    DataModel(
      namaMakanan: "Grilled Salmon",
      hargaMakanan: 125000,
      imageUrl:
          "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?q=80&w=1170&auto=format&fit=crop",
      deskripsi:
          "Fillet salmon panggang yang disajikan dengan "
          "saus lemon butter dan sayuran pilihan. "
          "Memiliki cita rasa gurih dengan sentuhan segar.",
    ),
    DataModel(
      namaMakanan: "Beef Wellington",
      hargaMakanan: 195000,
      imageUrl:
          "https://axwwgrkdco.cloudimg.io/v7/__gmpics3__/fc4720aca2494041ab963d16ff203042.jpg",
      deskripsi:
          "Hidangan daging sapi premium dengan inspirasi "
          "kuliner klasik Eropa. Disajikan dengan pelengkap "
          "dan saus gurih untuk pengalaman makan yang elegan.",
    ),
  ]);
}
