import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ErrorView(),
    );
  }
}

class ErrorView extends StatefulWidget {
  const ErrorView({super.key});

  @override
  State<ErrorView> createState() => _ErrorViewState();
}

class _ErrorViewState extends State<ErrorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x3E2723),
      body: SafeArea(
        child: Center(
          child: Column(
        
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(

                  children: [
                   Container(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/code-gen-app-icon.png", scale: 14,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text("Code Generation", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xffEFEBE9)),),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 32),
                      child: Text("Error", style: TextStyle(fontSize:28, fontWeight: FontWeight.bold, color: Colors.red),),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
                      child: Text("An error occurred while creating the preview.", style: TextStyle(fontSize:24, fontWeight: FontWeight.normal, color: Colors.red),textAlign: TextAlign.center,),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: Icon(Icons.warning_amber, color: Colors.red, size: 48,),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              _lottieRobot
            ],
          ),
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget get _lottieRobot => Lottie.asset(
    "assets/error_robot.json",
    height: 300
  );
}
