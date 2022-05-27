import 'package:get/get.dart';
import 'package:testsahamrakyat/model/soal4.dart';
import 'package:testsahamrakyat/service/test_service.dart';

class Soal4Controller extends GetxController{
  var id = Get.arguments;

  late final itemsmakanandetail = List<Mealsss>.empty().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    listmakanandetail(int.parse(id));
    super.onInit();
  }

  void listmakanandetail(id) async{
    final response = await TestService().fetchmakanandetail(id);
    print('data makanan : $response');
    itemsmakanandetail.value = response!.meals!;
    isLoading(false);

  }
}