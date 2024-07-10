import 'package:api_with_bloc_gorouter/api/endpoints.dart';
import 'package:http/http.dart' as http;


class ApiClient {
  final http.Client httpClient;

  ApiClient({required this.httpClient});

  Future<http.Response> fetchProductData() async {
    final response = await httpClient.get(Uri.parse(Endpoints.example));
    if(response.statusCode != 200)
    {
      throw Exception('Failed to load data');
    }
    return response;
  }
}