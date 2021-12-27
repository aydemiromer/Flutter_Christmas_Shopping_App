import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/init/navigator/navigation_route.dart';
import 'core/init/navigator/navigation_service.dart';
import 'product/state_management/mobx.dart';

void main() => runApp(MultiProvider(providers: [
      Provider<MobxS>(
        create: (_) => MobxS(),
      )
    ], child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'aydemiromer',
      initialRoute: '/onboard',
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}
