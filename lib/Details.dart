import 'package:flutter/material.dart';

class ItemsDtails extends StatefulWidget {
  final data;
  const ItemsDtails({super.key, this.data});

  @override
  State<ItemsDtails> createState() => _ItemsDtailsState();
}

class _ItemsDtailsState extends State<ItemsDtails> {
  String? color;
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
      endDrawer: Drawer(),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shop_outlined,
              color: Colors.black,
            ),
            Text(
              " Ecomerce_",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "Hossam",
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: ListView(
        children: [
          Container(
            height: 350,
            child: Image.asset(
              widget.data['images'],
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                widget.data["title"],
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.data["Subtitle"],
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.data["price"],
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "color :: ",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 135,
                    child: RadioListTile(
                      title: Text("Gray"),
                      selected: color == "gray" ? true : false,
                      activeColor: Colors.amberAccent,
                      value: "gray",
                      groupValue: color,
                      onChanged: (value) {
                        setState(() {
                          color = value;
                        });
                      },
                      hoverColor: Colors.black,
                    ),
                  ),
                  Container(
                    width: 140,
                    child: RadioListTile(
                      title: Text("Black"),
                      selected: color == "black" ? true : false,
                      activeColor: Colors.amberAccent,
                      value: "black",
                      groupValue: color,
                      onChanged: (value) {
                        setState(() {
                          color = value;
                        });
                      },
                      hoverColor: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Size :: ",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    // textAlign: TextAlign.center,
                    " 39 40 41 42 43 44 ",
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: MaterialButton(
                  color: Colors.black,
                  onPressed: () {},
                  child: Text(" Add To Cart ",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
