abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final String data;

  ProductLoaded({required this.data});
}

class ProductError extends ProductState {}
