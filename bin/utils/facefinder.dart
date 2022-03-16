import 'package:http/http.dart' as http;

class FaceFinder {
  // get data
  Future<String> getData() async {
    var url = "https://dapi.kakao.com/v2/vision/face/detect";
    var rest_api_key = "f320d5febcd3f6e3a4c98d1e5e1c80e2";
    var response = await http.get(Uri.parse(url),
        headers: {"Authorization": "KaKaoAk ${rest_api_key}"});
    print(response.body);
    return "Successfull";
  }
}
