import 'package:api_with_bloc_gorouter/api/api_client.dart';
import 'package:api_with_bloc_gorouter/blocs/product_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

void init() {
 
  sl.registerSingleton(() => http.Client());

   sl.registerSingleton(() => ApiClient(httpClient: sl<http.Client>()));

  sl.registerFactory(() => ProductCubit(apiClient: sl<ApiClient>()));
}
