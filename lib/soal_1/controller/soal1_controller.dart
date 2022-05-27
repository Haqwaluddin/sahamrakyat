import 'package:get/get.dart';
import 'package:testsahamrakyat/model/meals.dart';
import 'package:testsahamrakyat/service/test_service.dart';

class Soal1Controller extends GetxController{

  late final itemsmakanan = List<Meals>.empty().obs;
  var isloading = true.obs;

  @override
  void onInit() {
    listmakanan();
    super.onInit();
  }

  void listmakanan() async{
    final response = await TestService().fetchdatamakanan();
    print('data makanan : $response');
    itemsmakanan.value = response!.meals!;
    isloading(false);
  }

}