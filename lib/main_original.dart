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
      home: const PreviewAppPage(),
    );
  }
}

class PreviewAppPage extends StatefulWidget {
  const PreviewAppPage({super.key});

  @override
  State<PreviewAppPage> createState() => _PreviewAppPageState();
}

class _PreviewAppPageState extends State<PreviewAppPage> {
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
                      child: Text("Preview", style: TextStyle(fontSize:28, fontWeight: FontWeight.bold, color: Color(0xffEFEBE9)),),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 48),
                      child: Text("Please do not turn off the emulator device for preview.", style: TextStyle(fontSize:24, fontWeight: FontWeight.normal, color: Color(0xffEFEBE9)),textAlign: TextAlign.center,),
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
    "assets/robot.json",
    height: 300
  );
}
