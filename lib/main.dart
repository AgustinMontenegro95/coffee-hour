import 'package:coffee_hour/routes/custom_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'domain/blocks/cubit/languages_cubit.dart';
import 'routes/custom_pageRoute.dart';
import 'ui/screens/details/details_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  HydratedBlocOverrides.runZoned(
    () => runApp(const MyApp()),
    storage: storage,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguagesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coffee Hour',
        onGenerateRoute: _onGenerateRoute,
        initialRoute: '/',
        routes: customRoutes,
      ),
    );
  }

  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/details':
        return MyCustomPageRoute(
            builder: (context) => const DetailsScreen(), settings: settings);
    }
    throw UnsupportedError('Unknown route: ${settings.name}');
  }
}
