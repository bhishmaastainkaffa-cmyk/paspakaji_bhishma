import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasbhishma/controller/data_controller.dart';
import 'package:pasbhishma/routes.dart';
import 'package:pasbhishma/utils/format_rupiah.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Katalog Makanan")),
      body: Obx(
        () => ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: dataController.listData.length,
          itemBuilder: (context, index) {
            final makanan = dataController.listData[index];

            return Card(
              elevation: 3,
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.transaksi, arguments: makanan);
                },
                child: Row(
                  children: [
                    Image.network(
                      makanan.imageUrl,
                      width: 110,
                      height: 90,
                      fit: BoxFit.cover,
                      webHtmlElementStrategy: WebHtmlElementStrategy.prefer,
                      errorBuilder: (context, error, stackTrace) => SizedBox(
                        width: 110,
                        height: 90,
                        child: Icon(Icons.fastfood, size: 40),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // nama makanan
                          Text(
                            makanan.namaMakanan,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          // harga
                          Text(
                            formatRupiah(makanan.hargaMakanan),
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right),
                    SizedBox(width: 8),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
