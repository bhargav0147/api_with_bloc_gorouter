import 'package:api_with_bloc_gorouter/router/app_router.dart';
import 'package:flutter/material.dart';

import 'injection_container.dart' as di;

void main()
{
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.router,
    );
  }
}