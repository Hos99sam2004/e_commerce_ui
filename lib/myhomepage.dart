import 'package:e_commerce_ui/Details.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List catagores = [
    {
      "iconName": Icons.laptop,
      "title": "Laptop",
    },
    {
      "iconName": Icons.phone_android_rounded,
      "title": "mobile",
    },
    {
      "iconName": Icons.electric_bike,
      "title": "Bike",
    },
    {
      "iconName": Icons.card_giftcard_rounded,
      "title": "gifts",
    },
    {
      "iconName": Icons.electric_car,
      "title": "Car",
    },
  ];

  List items = [
    {
      "images": "images/1.jpg",
      "title": "Wireless HeadPhone ",
      "Subtitle": "Descriptions Fine Good",
      "price": "\$350"
    },
    {
      "images": "images/hFoTo.jpg",
      "title": "Watch",
      "Subtitle": "Watch Casio IP_68",
      "price": "\$650"
    },
    {
      "images":
          "images/Ritik Dube (7)_&_fd7c922a-e868-4978-be9d-ee5db40ce406.jpg",
      "title": "Wireless HeadPhone 2",
      "Subtitle": "Descriptions2",
      "price": "\$750"
    },
    {
      "images": "images/UNICORN (1)_&_c21fab5c-c5d1-4a5c-b93b-521234e35e3f.jpg",
      "title": "Wireless HeadPhone 3",
      "Subtitle": "Descriptions3",
      "price": "\$550"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.amberAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "*",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "*"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "*"),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 35,
                    ),
                    fillColor: Colors.grey[300],
                    filled: true,
                    enabled: true,
                    hintText: "Search",
                    hintStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.menu,
                      size: 40,
                    )),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "categories",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            // -=--=-=-=-=-=-=-=-=====================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            Container(
              height: 120,
              padding: EdgeInsets.only(top: 20),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: catagores.length,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey[300],
                            ),
                            child: Icon(
                              catagores[i]['iconName'],
                              size: 40,
                            ),
                            padding: EdgeInsets.all(15),
                          ),
                          Text(
                            catagores[i]['title'],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            // =====>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<>>>>>>>>>>><<<<<<<>>>>>>

            SizedBox(
              height: 10,
            ),
            Text(
              "Best Selling",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),

            GridView.builder(
                itemCount: items.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 300),
                itemBuilder: (context, i) {
                  //======>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..."navigator"...<<<<<<<<<<<<<<<<<<<<<<<<<<<=========
                  return InkWell(
                    //for on tap
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ItemsDtails(data: items[i])));
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              items[i]['images'],
                              fit: BoxFit.cover,
                              height: 180,
                              width: 200,
                            ),
                          ),
                          Text(
                            items[i]['title'],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            items[i]['Subtitle'],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            items[i]['price'],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
