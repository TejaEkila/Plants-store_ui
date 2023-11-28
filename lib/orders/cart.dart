import 'package:flutter/material.dart';
import 'package:plantsapp/orders/orderplace.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 251, 229, 237),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 27,
            color: Colors.pinkAccent,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        
        title: Container(
          alignment: Alignment.topLeft,
          child: const Text('Shopping Cart',style: TextStyle(color: Colors.pinkAccent,fontSize: 25,fontWeight: FontWeight.w500),)),
      ),
      backgroundColor: const Color.fromARGB(255, 251, 229, 237),
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 500,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 250, 223, 232),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [BoxShadow(offset: Offset(0, 10), blurRadius: 5, color: Color.fromARGB(255, 112, 87, 95))]),
                        height: 150,
                        child: Row(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 150,
                              color: Colors.pink,
                              child: Image.asset(
                                'assets/screenplant.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 150,
                            width: 180,
                            //color: Colors.black,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                        text: 'Angelica\n',
                                        style: TextStyle(color: Color.fromARGB(255, 3, 0, 1), fontSize: 25, fontWeight: FontWeight.w400),
                                      ),
                                      TextSpan(
                                        text: 'Banglore\n',
                                        style: TextStyle(color: Colors.pinkAccent, fontSize: 20, fontWeight: FontWeight.w300),
                                      ),
                                      TextSpan(
                                        text: 'No return',
                                        style: TextStyle(color: Colors.pinkAccent, fontSize: 17, fontWeight: FontWeight.w300),
                                      ),
                                    ]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                        text: '\$400',
                                        style: TextStyle(color: Colors.pinkAccent, fontSize: 30, fontWeight: FontWeight.w600),
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete,
                                size: 40,
                                color: Colors.pinkAccent,
                              ))
                        ]),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Container(
            color: Colors.amber,
            child: const OrderPlace()),
        ],
      ),
    );
  }
}
