import 'package:http/http.dart' as http;

class FaceFinder {
  // get data
  Future<String> getData() async {
    var url = "https://dapi.kakao.com/v2/vision/face/detect";
    var rest_api_key = "#############################";
    var response = await http.get(Uri.parse(url),
        headers: {"Authorization": "KaKaoAk ${rest_api_key}"});
    print(response.body);
    return "Successfull";
  }
}
