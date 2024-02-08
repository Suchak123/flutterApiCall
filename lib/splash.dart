import 'dart:async';

import 'package:flutter/material.dart';
import 'package:personalapp/common/routeconstants.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), ()=> Navigator.of(context).pushNamed(RouteConstants.loginRoute));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Loading to Login Screen ...'),
      ),
    );
  }
}
