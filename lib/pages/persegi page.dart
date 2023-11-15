import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/persegi_controller.dart';


class PersegiPage extends StatelessWidget {
 PersegiPage({super.key});

final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("PersegiPage"),
      ),
      body: Column(
        children: [
          Image.asset(
            "asset/belah2.png",
            height: 150,
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child:Text("jajar genjang"),
          ),
          Text("jajar genjang atau bunjur sangkar adalah bangun datar"),
          Padding(
              padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value){
                _persegiController.sisi =int.parse(value);
              },
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: "label",
                hintText: "sisi",
                hintStyle: TextStyle(color: Colors.grey.shade400),
                contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[



              ElevatedButton(onPressed: (){
                _persegiController.hitungLuas();
              }, style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),

                  child:Text("Hitung Luas")),
              ElevatedButton(onPressed: (){
                _persegiController.hitungkeliling();
              }, style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),

                  child:Text("Hitung keliling")),

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(()=> Text(_persegiController.hasil.value,style: TextStyle(color:Colors.green))),

          )
        ],
      ),
    );

  }
}