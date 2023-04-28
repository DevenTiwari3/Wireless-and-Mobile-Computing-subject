//import material
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
//import StaffView
//import 'pages/patientInfoCheck/dataDispPage.dart';
import 'pages/btconnection/btconnection.dart';

import 'pages/colourBlindEye/colourBlindeye.dart';
import 'pages/colourBlindEye/colourBlindeyeTesting.dart';
import 'pages/colourBlindEye/aleartfinal.dart';
import 'pages/QUIZgame/quiz.dart';
import 'pages/QUIZdice/quizdice.dart';


import 'nav/nav.dart';



 
void main() => runApp(App());
class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    routeInformationParser: _router.routeInformationParser,
    routerDelegate: _router.routerDelegate,

  );

  Widget provider(BuildContext context) {
    return MultiProvider(
      providers: [
      ],
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[

      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
        const Page1Screen(),
      ),




      GoRoute(
        path: '/page7',
        builder: (BuildContext context, GoRouterState state) =>
            colourBlindeye(),
      ),



      GoRoute(
        path: '/page8',
        builder: (BuildContext context, GoRouterState state) =>
            colourBlindeyeTesting(),
      ),

      GoRoute(
        path: '/aleart',
        builder: (BuildContext context, GoRouterState state) =>
            aleart(score: 0,),
      ),



      GoRoute(
        path: '/page666',
        builder: (BuildContext context, GoRouterState state) =>
            quiz(),
      ),

      GoRoute(
        path: '/quiz2',
        builder: (BuildContext context, GoRouterState state) =>
            dice_guesser(score: 0,),
      ),

    ],
  );
}
