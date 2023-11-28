import 'package:flutter/material.dart';
import 'package:plantsapp/orders/cart.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 229, 237),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        height: 60,
                        width: 60,
                        //color: Colors.amber,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.pinkAccent,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(color: const Color.fromARGB(255, 252, 206, 222), borderRadius: BorderRadius.circular(15), boxShadow: const [
                          BoxShadow(
                            blurRadius: 5,
                            offset: Offset(0.3, 0.2),
                            spreadRadius: 1,
                            color: Color.fromARGB(255, 120, 117, 120),
                          ),
                          BoxShadow(
                            blurRadius: 3,
                            offset: Offset(-8, -6),
                            color: Color.fromARGB(255, 217, 155, 178),
                          ),
                        ]),
                        child: IconButton(
                          onPressed: () {
                            // Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.sunny,
                            color: Colors.pinkAccent,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(color: const Color.fromARGB(255, 252, 206, 222), borderRadius: BorderRadius.circular(15), boxShadow: const [
                          BoxShadow(
                            blurRadius: 5,
                            offset: Offset(0.3, 0.2),
                            spreadRadius: 1,
                            color: Color.fromARGB(255, 120, 117, 120),
                          ),
                          BoxShadow(
                            blurRadius: 3,
                            offset: Offset(-8, -6),
                            color: Color.fromARGB(255, 217, 155, 178),
                          ),
                        ]),
                        child: IconButton(
                          onPressed: () {
                            // Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.water,
                            color: Colors.pinkAccent,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(color: const Color.fromARGB(255, 252, 206, 222), borderRadius: BorderRadius.circular(15), boxShadow: const [
                          BoxShadow(
                            blurRadius: 5,
                            offset: Offset(0.3, 0.2),
                            spreadRadius: 1,
                            color: Color.fromARGB(255, 120, 117, 120),
                          ),
                          BoxShadow(
                            blurRadius: 3,
                            offset: Offset(-8, -6),
                            color: Color.fromARGB(255, 217, 155, 178),
                          ),
                        ]),
                        child: IconButton(
                          onPressed: () {
                            // Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.air,
                            color: Colors.pinkAccent,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(color: const Color.fromARGB(255, 252, 206, 222), borderRadius: BorderRadius.circular(15), boxShadow: const [
                          BoxShadow(
                            blurRadius: 5,
                            offset: Offset(0.3, 0.2),
                            spreadRadius: 1,
                            color: Color.fromARGB(255, 120, 117, 120),
                          ),
                          BoxShadow(
                            blurRadius: 3,
                            offset: Offset(-8, -6),
                            color: Color.fromARGB(255, 217, 155, 178),
                          ),
                        ]),
                        child: IconButton(
                          onPressed: () {
                            // Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.thermostat_sharp,
                            color: Colors.pinkAccent,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 50,
                    // )
                  ],
                )),
                Container(
                  decoration: const BoxDecoration(color: Color.fromARGB(255, 152, 7, 255), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70), topLeft: Radius.circular(40)), boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      offset: Offset(0.3, 0.2),
                      spreadRadius: 3,
                      color: Color.fromARGB(255, 120, 117, 120),
                    ),
                    BoxShadow(
                      blurRadius: 3,
                      offset: Offset(-8, -6),
                      color: Color.fromARGB(255, 217, 155, 178),
                    ),
                  ]),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(70), topLeft: Radius.circular(40)),
                    child: SizedBox(
                      height: 720,
                      width: 300,
                      child: Image.asset(
                        'assets/screenplant.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(text: 'Angelica\n', style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.w700)),
                      TextSpan(text: 'Banglore', style: TextStyle(color: Colors.pinkAccent, fontSize: 25, fontWeight: FontWeight.w500))
                    ]))
                  ],
                ),
                const SizedBox(
                  width: 100,
                ),
                const Text(
                  '\$400',
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 40, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CartPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 215,
                    decoration: const BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
                    ),
                    child: const Center(
                        child: Text(
                      'Buy Now',
                      style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 100,
                    width: 215,
                    decoration: const BoxDecoration(
                      //color: Colors.pinkAccent,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
                    ),
                    child: const Center(
                        child: Text(
                      'Description',
                      style: TextStyle(color: Colors.pinkAccent, fontSize: 20, fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
