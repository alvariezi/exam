import 'package:exam/HomePage.dart';
import 'package:exam/OrderPage.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage ({super.key});

  
  @override
  // ignore: library_private_types_in_public_api
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          leading: IconButton (
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const HomePage(),
                ));
            },
            padding: EdgeInsets.only(left: 30),
            icon : const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
              size: 30,
            )
          ),
          title: const Text('Detail',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
          ),
          actions: const [
            Icon(Icons.favorite_outline,
            color: Colors.black,
            ),
            SizedBox(
              width: 40,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 50,),
            child: Column(
              children: [
                Image.asset('assets/images/detail.png',
                width: 360,
                fit: BoxFit.cover,
                ),
                 Container(
                  margin: EdgeInsets.symmetric(vertical: 20,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Capuccino',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontFamily: 'Sora-Regular'
                      ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                       Text(
                        'with Chocolate',
                        style: TextStyle(
                          color: Colors.black.withOpacity(1.0),
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
                          fontFamily: 'Sora-Regular'
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RichText(
                          text: const TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                    text: '⭐ 4.8 ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18)),
                                TextSpan(
                                    text: '(230)',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500))
                              ]),
                      ),
                       Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Color(0xfff9f9f9),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.coffee,
                                color: Colors.orange,
                              ),
                            ),
                            const SizedBox(width: 20,),
                             Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Color(0xfff9f9f9),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.fastfood,
                                color: Colors.orange,
                              ),
                            )
                          ]
                       ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  const Divider(
                    thickness: 1.6,
                    color: Color(0xffEAEAEA),
                  ),
                  SizedBox(height: 15,),
                  const  Text(
                    'Description',style: 
                    TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 350,
                    child: RichText(text: 
                      const TextSpan(
                        children: 
                         [
                          TextSpan(
                            text :
                            'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          TextSpan(
                            text: 'Read More',
                            style: TextStyle(
                              color: Color(0xffC67C4E),
                              fontSize: 17,
                              fontWeight: FontWeight.w600
                            )
                          )
                         ]
                      )
                    ),
                  ),
                    SizedBox(height: 20),
                    const Text(
                      'Size',
                      style: TextStyle(
                          color: Color(0xff2F2D2C),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedContainer
                      (duration: Duration(milliseconds: 300),
                      width: 100,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child:const Center(child: Text('S',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                      ),
                      ), 
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color(0xffFFF5EE),
                          border: Border.all(color: Color(0xffC67C4E)),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: const Center(
                          child: Text('M',
                          style: TextStyle(
                            color: Color(0xffC67C4E),
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                          ),
                          ),
                        ),
                        ),
                         AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(14)),
                          child: const Center(
                              child: Text(
                            'L',
                            style: TextStyle(
                                color: Color(0xff2F2D2C),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                        )
                    ],
                  )
                    ]
                ),
                 ),
                 Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price',
                          style: TextStyle(
                            color: Color.fromRGBO(155, 155, 155, 1),
                          ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('\$ 4.53',
                          style: TextStyle(
                            color: Color(0xffC67C4E),
                            fontSize: 22,
                            fontWeight: FontWeight.w600
                          ),
                          )
                        ],
                      ),
                        ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderPage()
                          ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 70),
                          backgroundColor: Color(0xffC67C4E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                        child: const Text('Buy Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                        ),),
                        )
                    ],
                  ),
                 ),
              ],
            ),
          ),
        ),
      ),
    ) ;
  }
}