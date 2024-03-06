import 'package:exam/OrderPage.dart';
import 'package:flutter/material.dart';


class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}


class _DeliveryPageState extends State<DeliveryPage> {
  @override
    Widget build(BuildContext context) {
      return Scaffold (
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/peta.png',
                width: 420,
                height: 870,
                fit: BoxFit.cover,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => OrderPage()
                              ));
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_left,
                            size: 30,
                          ),
                        )
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Icon(Icons.gps_fixed),
                      )
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(87, 165),
                  child: Image.asset('assets/images/rute.png',
                  width: 198,
                  fit: BoxFit.cover,
                  ) ,
                  ),
                  Transform.translate(
                    offset: Offset(80, 220),
                    child: Image.asset('assets/images/location.png',
                    ),
                    ),
                    Transform.translate(
                      offset: Offset(260, 325),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Image.asset('assets/images/bike.png',
                        ),
                      ),
                      ),
                      Stack(
                        children: [
                          Transform.translate(
                            offset: Offset(0, 530),
                            child: Container(
                              height: 500,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)
                              ),
                            ),
                            ),
                            Transform.translate(
                              offset: Offset(0, 530),
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 40),
                                child: Center(
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: const Divider(
                                          thickness: 6,
                                          color:  Color(0xffeaeaea),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text('10 Minute Left',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600
                                      ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),

                                      RichText(
                                        text: const TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Delivery To ',
                                              style: TextStyle(
                                                color: Colors.black
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Jl. Kpg Sutoyo',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600
                                              )
                                            )
                                          ]
                                        )),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        SizedBox(
                                          height: 21,
                                          child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 3,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                margin: const EdgeInsets.all(8),
                                                width: 70,
                                                decoration: BoxDecoration(
                                                  color: const Color(0xff36C07E),
                                                  borderRadius: BorderRadius.circular(15)
                                                ),
                                              );
                                            },
                                            ),
                                        ),
                                        Transform.translate(
                                          offset: Offset(130, -13),
                                          child: Container(
                                            width: 70,
                                            height: 5,
                                            decoration: BoxDecoration(
                                              color: const Color(0xffDFDFDF),
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                          ),
                                          ),
                                          Container(
                                            width: 400,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xffDEDEDE)
                                              ),
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(left: 20),
                                                  padding: const EdgeInsets.all(15),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: const Color(0xffDEDEDE)
                                                    ),
                                                    borderRadius: BorderRadius.circular(15)
                                                  ),
                                                  child: Image.asset('assets/images/motor.png'),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                const Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Delivered your order',style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                    ),),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    SizedBox(
                                                      width: 200,
                                                      child: Text('We deliver your goods to you in the shortes possible time.',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w200
                                                      ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        const SizedBox(
                                          height: 30,
                                        ) ,
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset('assets/images/user.png'),
                                            Transform.translate(
                                              offset: Offset(-40, 0),
                                              child: const Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Taufan Alvariezi',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600
                                                  ),
                                                  ),
                                                  Text('Personal Courier',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14
                                                  ),
                                                  )
                                                ],
                                              ),
                                              ),
                                              Container(
                                                width: 60,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: const Color(0xffDEDEDE),
                                                  ),
                                                  borderRadius: BorderRadius.circular(16),
                                                ),
                                                child: const Icon(Icons.phone_in_talk,
                                                color: Color.fromRGBO(128, 128, 128, 1),
                                                ),
                                              )

                                          ],
                                        )
                                    ],
                                  ),
                                ),
                              ),
                              )
                        ],
                      )
              ],
            )
          ],
        ),
      );
    }
}