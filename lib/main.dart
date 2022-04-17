import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Reservation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.sort, color: Colors.black),
        actions: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.all(10),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                FloatingActionButton(
                  mini: true,
                  onPressed: () {},
                  child: const Icon(Icons.shopping_cart_outlined),
                ),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                  child: Text(
                    '$counter',
                    style: const TextStyle(fontSize: 11),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
            height: 50,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title section
          Container(
            width: 200,
            margin: const EdgeInsets.only(left: 15),
            child: const Text(
              "SUPER\nBEEF BURGER",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          // image section
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15, top: 10),
                width: 250,
                height: 200,
                child: Image.asset(
                  "assets/img1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 10, minimumSize: const Size(20, 40)),
                      child: const Icon(
                        Icons.favorite_border,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Icon(Icons.cached),
                      style: ElevatedButton.styleFrom(
                          elevation: 10, minimumSize: const Size(20, 40)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          // price section
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  "\$52",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 30,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: 250,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  counter > 0 ? counter-- : null;
                                });
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.red,
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 4),
                            ),
                            Text(
                              '$counter',
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  counter < 50 ? counter++ : null;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Colors.red,
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 4),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Add to cart",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          // featured section
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "FEATURED",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 15),
              child: GridView.count(
                childAspectRatio: 1 / 2,
                crossAxisSpacing: 10,
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 2,
                scrollDirection: Axis.horizontal,
                children: [
                  buildRow(
                      title: "Sweet Cheese",
                      price: 15,
                      color: Colors.purple[100]),
                  buildRow(title: "Koshary", price: 7, color: Colors.blue[100]),
                  buildRow(title: "Sushi", price: 18, color: Colors.green[100]),
                  buildRow(title: "Ms23a", price: 32, color: Colors.red[100]),
                  buildRow(title: "Mombar", price: 27, color: Colors.teal[100]),
                  buildRow(title: "L7mt ras", price: 11),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildRow(
      {required String title,
      required int price,
      var color = Colors.orangeAccent}) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: color,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 2,
                    color: Colors.black26,
                  ),
                ],
                borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 10,
                ),
                Text("\$$price", style: const TextStyle(color: Colors.deepPurple),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
