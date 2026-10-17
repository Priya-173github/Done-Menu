import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'services/hive_service.dart';
import 'services/pantry_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await HiveService.init();

  runApp(const DoneMenuApp());
}

class DoneMenuApp extends StatelessWidget {
  const DoneMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PantryProvider())],
      child: MaterialApp(
        title: 'DoneMenu',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        home: const Scaffold(body: Center(child: Text('DoneMenu Initialized'))),
      ),
    );
  }
}
