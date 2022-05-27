import 'package:get/get.dart';
import 'package:testsahamrakyat/model/detailmakanan.dart';
import 'package:testsahamrakyat/model/meals.dart';
import 'package:testsahamrakyat/service/test_service.dart';

class Soal2Controller extends GetxController{

  late final itemsmakanan = List<Meals>.empty().obs;
  late final itemsmakanandetail = List<Mealss>.empty().obs;
  var isloading = true.obs;
  var makanan = 'beef'.obs;

  @override
  void onInit() {
    listmakanan();
    listmakanandetail();
    super.onInit();
  }

  void listmakanan() async{
    final response = await TestService().fetchdatamakanan();
    print('data makanan : $response');
    itemsmakanan.value = response!.meals!;
    isloading(false);

  }
  void listmakanandetail() async{
    final response = await TestService().fetchdatamakanandetail(makanan.value);
    print('data makananan : $response');
    itemsmakanandetail.value = response!.meals!;
    isloading(false);

  }
  void detailmakanan(makanan) async{
    final response = await TestService().fetchdatamakanandetail(makanan);
    print('data makananan : $response');
    itemsmakanandetail.value = response!.meals!;
  }
}