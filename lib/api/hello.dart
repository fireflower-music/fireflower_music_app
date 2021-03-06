import 'package:http/http.dart' as http;

const String baseUrl = 'https://fireflower-music-1691755-1310040923.ap-shanghai.run.tcloudbase.com';

Future<String> sayHello() async {
  final response = await http
      .get(Uri.parse(baseUrl + '/hello'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return response.body;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('请求失败');
  }
}