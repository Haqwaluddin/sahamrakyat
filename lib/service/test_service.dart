import 'package:get/get.dart';
import 'package:testsahamrakyat/model/detailmakanan.dart';
import 'package:testsahamrakyat/model/meals.dart';
import 'package:testsahamrakyat/model/soal4.dart';

class TestService extends GetConnect{

  Future<Makanan?> fetchdatamakanan() async {

    var response = await get("https://www.themealdb.com/api/json/v1/1/list.php?c=list");
    // var jsonData = json.decode(response.body);
    print(response.body);
    if (response.status.hasError) {
      return null;
    } else {
      if (response.statusCode! >= 200 && response.statusCode! < 400) {
        return Makanan.fromJson(response.body);
      } else {
        return null;
      }
    }
  }

  Future<MakananDetail?> fetchdatamakanandetail(String makanan) async {
    var response = await get("https://www.themealdb.com/api/json/v1/1/filter.php?c=$makanan");
    // print(response.body);

    if (response.status.hasError) {
      return null;
    } else {
      if (response.statusCode! >= 200 && response.statusCode! < 400) {
        return MakananDetail.fromJson(response.body);
      } else {
        return null;
      }
    }
  }

  Future<Soal4?> fetchmakanandetail(int id) async {
    var response = await get("https://www.themealdb.com/api/json/v1/1/lookup.php?i=$id");
    print(response.body);

    if (response.status.hasError) {
      return null;
    } else {
      if (response.statusCode! >= 200 && response.statusCode! < 400) {
        return Soal4.fromJson(response.body);
      } else {
        return null;
      }
    }
  }

}