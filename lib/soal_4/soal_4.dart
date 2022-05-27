import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testsahamrakyat/soal_4/controller/soal_4_controller.dart';

class Soal4 extends StatelessWidget {
  const Soal4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getdata = Get.put(Soal4Controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Menu'),
      ),
      body: Obx((){
        if(getdata.isLoading == true){
          return Center(
            child: CircularProgressIndicator(
              value: 0.8,
            ),
          );
        } else{
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text('${getdata.itemsmakanandetail[0].strMeal}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.network('${getdata.itemsmakanandetail[0].strMealThumb}'),

                  ),

                  Text('${getdata.itemsmakanandetail[0].strInstructions}'),
                ],
              ),
            ),
          );
        }

      })
    );
  }
}
