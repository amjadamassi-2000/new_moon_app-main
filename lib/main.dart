import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:new_moon_app/model/httpdata.dart';
import 'package:new_moon_app/provider/dataadmin.dart';
import 'package:new_moon_app/screens/bnb_screens/main_screen.dart';
import 'package:new_moon_app/screens/calender_screen.dart';
import 'package:new_moon_app/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'components/calendar.dart';
import 'cubit/global_cubit.dart';
import 'cubit/global_states.dart';
import 'test_screen.dart';
import 'package:http/http.dart' as https;
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool resultConnection = await InternetConnectionChecker().hasConnection;
  //DatabaseReference _ref = FirebaseDatabase.instance.reference().child('home');
  /*final url = 'https://moonapp-f63aa-default-rtdb.firebaseio.com/product/-N7fCYSPhAkZFeZxE7Nw.json';
  final uri = Uri.parse(url);
  http.patch(uri,
      body: json.encode({'id': 15, 'title': 'myTitle', 'body': 'mybody'}));
  final res2 = await http.get(uri);
  final result = json.decode(res2.body);
  print(result.toString());
  // _ref.push().set({'id': 10});*/

  runApp(
    ChangeNotifierProvider<Products>(
      create: (_) => Products(),
      child: MyApp(resultConnection),
    ),
  );
}

class MyApp extends StatefulWidget {
  final resultConnection;

  MyApp(this.resultConnection);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<Void> cheackConnection() async {
    final prefs = await SharedPreferences.getInstance();

    if (widget.resultConnection) {
      final url =
          'https://moonapp-f63aa-default-rtdb.firebaseio.com/product/-N7fCYSPhAkZFeZxE7Nw.json';
      final uri = Uri.parse(url);
      final response = await https.get(uri);
      if (response.statusCode == 200) {
        final res = DataHttp.fromJson(jsonDecode(response.body));
        print('${res.title} ');

        await prefs.setString('hometype', '${res.title}');
      }

      final url2 =
          'https://moonapp-f63aa-default-rtdb.firebaseio.com/product/-N7fDNmSLr9dbubGmZiP.json';
      final uri2 = Uri.parse(url2);
      final response2 = await https.get(uri2);
      if (response2.statusCode == 200) {
        final res2 = DataHttp.fromJson(jsonDecode(response2.body));
        print('${res2.title} ');

        await prefs.setString('ecteran', '${res2.title}');
      }
      print('يوجد إنترنت');
    } else {
      print('no internet ');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cheackConnection();
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);


    return ScreenUtilInit(
      builder: () {
        return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => GlobalCubit()),
            ],
            child: BlocConsumer<GlobalCubit, GlobalStates>(
              listener: (context, state) {},
              builder: (context, state) {
                return MaterialApp(
                  localizationsDelegates: [
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                  ],
                  supportedLocales: [
                    //     const Locale('en', 'USA'),
                    const Locale('ar', 'SA'),
                  ],
                  debugShowCheckedModeBanner: false,
                  home: SplashScreen(),
                );
              },
            ));
      },
    );
  }
}
