import 'package:api_with_bloc_gorouter/blocs/product_bloc.dart';
import 'package:api_with_bloc_gorouter/blocs/product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../injection_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ProductCubit>()..fetchProductData(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
        body: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProductLoaded) {
              return Center(
                  child: Text(
                state.data,
                style: TextStyle(color: Colors.black),
              ));
            } else if (state is ProductError) {
              return const Center(
                  child: Text('Failed to load data',
                      style: TextStyle(color: Colors.black)));
            }
            return const Center(
                child: Text('Welcome', style: TextStyle(color: Colors.black)));
          },
        ),
      ),
    );
  }
}
