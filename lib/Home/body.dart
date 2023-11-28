import 'package:flutter/material.dart';
import 'package:plantsapp/Home/whislist.dart';
import 'package:plantsapp/orders/cart.dart';
import 'package:plantsapp/product.dart/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 229, 237),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person_2_outlined, color: Colors.black54, size: 32),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Whislist(),
                      ),
                    );
            },
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.black54,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CartPage(),
                          ),
                        );
            },
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black54,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 170,
                  width: 430,
                  decoration: const BoxDecoration(color: Colors.pinkAccent, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 130),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 39, 39, 39),
                          borderRadius: BorderRadius.circular(10),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3, // Adjusted blur radius
                              offset: const Offset(0, 2), // Adjusted offset
                              color: const Color.fromARGB(255, 71, 51, 58).withOpacity(0.7),
                            )
                          ]),
                      child: TextField(
                        style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(160, 254, 185, 1))),
                          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          fillColor: const Color.fromARGB(26, 43, 39, 39),
                          filled: true,
                          hintText: 'Search',
                          hintStyle: const TextStyle(color: Colors.pinkAccent),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          suffixIcon: const Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'Hi!! Teja',
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SizedBox(height: 70, child: Image.asset('assets/seeds.png')),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  height: 5,
                                  width: 140,
                                  color: Colors.pinkAccent,
                                ),
                              ),
                              const Text(
                                'Recomended',
                                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 22, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  FilledButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent)),
                      onPressed: () {},
                      child: const Text(
                        'more',
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 260,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ItemsPage(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 10, right: 2),
                        width: 180,
                        child: Column(children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                            child: Container(color: Colors.amber, child: Image.asset('assets/seeds.png')),
                          ),
                          Container(
                            //width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                                boxShadow: [BoxShadow(blurRadius: 50, offset: const Offset(0, 7), color: Colors.pinkAccent.withOpacity(0.23))]),
                            child: Row(
                              children: [
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(text: 'harrira\n'.toUpperCase(), style: const TextStyle(color: Colors.black)),
                                  TextSpan(text: 'Banglore'.toUpperCase(), style: const TextStyle(color: Colors.pinkAccent))
                                ])),
                                const SizedBox(
                                  width: 30,
                                ),
                                const Text(
                                  '\$400',
                                  style: TextStyle(color: Colors.pinkAccent, fontSize: 20, fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  height: 5,
                                  width: 170,
                                  color: Colors.pinkAccent,
                                ),
                              ),
                              const Text(
                                'Featured Plants',
                                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 22, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  FilledButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent)),
                      onPressed: () {},
                      child: const Text(
                        'more',
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 260,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 10, right: 2),
                      width: 180,
                      child: Column(children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                          child: Container(color: Colors.amber, child: Image.asset('assets/seeds.png')),
                        ),
                        Container(
                          //width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                              boxShadow: [BoxShadow(blurRadius: 50, offset: const Offset(0, 7), color: Colors.pinkAccent.withOpacity(0.23))]),
                          child: Row(
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(text: 'harrira\n'.toUpperCase(), style: const TextStyle(color: Colors.black)),
                                TextSpan(text: 'Banglore'.toUpperCase(), style: const TextStyle(color: Colors.pinkAccent))
                              ])),
                              const SizedBox(
                                width: 30,
                              ),
                              const Text(
                                '\$400',
                                style: TextStyle(color: Colors.pinkAccent, fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
