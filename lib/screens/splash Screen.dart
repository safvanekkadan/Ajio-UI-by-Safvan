// import 'package:ajio/bottom_bar.dart/bottoms.dart';
// import 'package:flutter/material.dart';


// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void iniState(){
//     gotoHome();
//     super.initState();
//   }
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height:screenHeight,
//           width: screenWidth,
//           child: Image.asset("assets/images/ajioname.jpeg",
//           fit:BoxFit.cover,),
//         ),
//       ),
//     );
//   }
//   Future <void> gotoHome()async{
//    await Future.delayed(Duration(seconds: 3));
//     Navigator.of(context). pushReplacement(MaterialPageRoute(builder: ((context) =>Bottoms())));
//   }
// }
import 'package:ajio/bottom_bar.dart/bottoms.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      final screenWidth = MediaQuery.of(context).size.width;
     final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          color:Colors.black,
          child: Center(
            child: Image.asset("assets/images/ajioname.jpeg"),
          ),
        ),
      ),
    );
  }

  Future<void> gotoHome() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: ((context) => Bottoms())));
  }
}