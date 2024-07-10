import 'package:api_with_bloc_gorouter/api/api_client.dart';
import 'package:api_with_bloc_gorouter/blocs/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductState> {
  final ApiClient apiClient;

  ProductCubit({required this.apiClient}) : super(ProductInitial());

  Future<void> fetchProductData() async {
    try {
      emit(ProductLoading());
      final response = await apiClient.fetchProductData();
      emit(ProductLoaded(data: response.body));
    } catch (error) {
      emit(ProductError());
    }
  }
}
