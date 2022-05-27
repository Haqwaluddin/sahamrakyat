import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testsahamrakyat/soal_1/controller/soal1_controller.dart';

class Soal1 extends StatefulWidget {
  Soal1({Key? key}) : super(key: key);



  @override
  State<Soal1> createState() => _Soal1State();
}

class _Soal1State extends State<Soal1> {
  String? _dropDownValue;

  @override
  Widget build(BuildContext context) {

    final getdata = Get.put(Soal1Controller());
    return Scaffold(
      body: Obx(() {
        return SafeArea(
            child: Column(
              children: [
                DropdownButton(
                  hint: Text('Please choose a Category'),
                  value: _dropDownValue,
                  isExpanded: true,
                  iconSize: 30.0,
                  style: TextStyle(color: Colors.blue),
                  items: getdata.itemsmakanan.map((e) {
                    return DropdownMenuItem(
                      child: new Text(e.strCategory!),
                      value: e.strCategory,
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      _dropDownValue = val.toString();
                    });
                    print('dataa ${val}');
                  },
                ),


              ],
            ));
      }),

    );
  }
}
