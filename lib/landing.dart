import 'package:exam/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KOPI',
      home: MyLandingPage(),
    );
  }
}

class MyLandingPage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(
              'assets/images/kopi.png'),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter
              )
        ),
        padding: const EdgeInsets.all(20),
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: const Offset(-5.0, 220.0),
              child : const Text('Coffee so good, your taste buds will love it.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Sora-Regular',
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Transform.translate(
              offset: const Offset(-5.0, 240.0),
              child: const Text('The best grain, the finest roast, the powerful flavor.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Sora-Regular',
                fontSize: 20,
                fontWeight: FontWeight.w100,
                color: Color.fromRGBO(169, 169, 169, 1)
              ),
            ),
            ),
           const SizedBox(
              height: 1.0,
            ),
             Transform.translate(
              offset: const Offset(-5.0, 270.0),
              child:  ElevatedButton(
              onPressed: () {
                     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
                },
              child: Text('Get Started',
              style: const TextStyle(
                fontFamily: 'Sora-Regular',
                fontSize: 24,
              ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(250, 226, 115, 46),
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            ),
          ],
      ) 
   ),
   
);
  }
}