import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testsahamrakyat/soal_2/controller/soal_2_controller.dart';
import 'package:testsahamrakyat/soal_4/soal_4.dart';

class Soal2 extends StatefulWidget {
  const Soal2({Key? key}) : super(key: key);

  @override
  State<Soal2> createState() => _Soal2State();
}
String? _dropDownValue;
class _Soal2State extends State<Soal2> {
  @override
  Widget build(BuildContext context) {
    final getdata = Get.put(Soal2Controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
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
                      getdata.makanan.value = _dropDownValue!;
                      getdata.detailmakanan(_dropDownValue);
                    });
                    print('dataa ${val}');
                  },
                ),
              SizedBox(height: 15,),
                Container(
                  width: Get.width,
                  height: Get.height*0.8,
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemCount: getdata.itemsmakanandetail.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    child: Image.network(getdata.itemsmakanandetail[index].strMealThumb!),

                                  ),
                                ),
                                Text('${getdata.itemsmakanandetail[index].strMeal!}',textAlign: TextAlign.center,),
                                SizedBox(height: 5),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          onTap: (){
                            Get.to(Soal4(),arguments:getdata.itemsmakanandetail[index].idMeal);
                            print(getdata.itemsmakanandetail[index].idMeal);
                          },
                        );
                      }),
                ),

              ],
            ));
      })
    );
  }
}
