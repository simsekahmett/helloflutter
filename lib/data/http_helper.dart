import 'package:http/http.dart' as http;

class HttpHelper {
  // http://api.weatherapi.com/v1/current.json
  // ?key=0c9cf6bddce549b1ae4124635220202&q=mersin&aqi=no

  final String authority = 'api.weatherapi.com';
  final String path = 'v1/current.json';
  final String key = '0c9cf6bddce549b1ae4124635220202';

  Future<String> getWeather(String location) async {
    Map<String, dynamic> parameters = {'key': key, 'q': location, 'aqi': 'no'};
    Uri uri = Uri.http(authority, path, parameters);
    http.Response result = await http.get(uri);

    return result.body;
  }
}
