import 'package:cart/model/cart.dart';
import 'package:cart/screens/checkot_page.dart';
import 'package:cart/screens/mac.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:cart/model/item.dart';

import '../main.dart';

void min() {
  runApp(ChangeNotifierProvider(
    create: (context) => Cart(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mac(),
    ),
  ));
}

class Mac extends StatefulWidget {
  @override
  _MacState createState() => _MacState();
}

double badgep = 2;
double badgepp = 0.5;
bool badge = false;

class _MacState extends State<Mac> {
  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        title: ' Moca cold',
        image: Image.asset(
          "Images/asset1.png",
          scale: 5,
        ),
        dep: CheckboxListTile(
          title: Text("chocolet rash"),
          value: badge,
          onChanged: (newValue) {
            setState(() {
              badge = newValue;
              basjd = newValue;
              if (badge == true) {
                badgep += badgepp;
              } else {
                badgep -= badgepp;
              }
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
        press: RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Mac()));
          },
          child: Text("Go To Data"),
        ),
        price: badgep,
        qun: 1,
      ),
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Consumer<Cart>(builder: (
          context,
          cart,
          child,
        ) {
          return Scaffold(
              drawer: Drawer(
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      child: Image.asset(
                        "Images/tic_logo.png",
                        width: 52,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                      title: Text('home'),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      },
                    ),
                    ListTile(
                      title: Text('cart'),
                      onTap: () {
                        // Update the state of the app.
                        // ...

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => check_out()));
                      },
                    ),
                    ListTile(
                      title: Text(
                          "press me if you want to set an emgarnsy meeting"),
                      onTap: () {
                        showDialog(
                            context: context,
                            child: new AlertDialog(
                                backgroundColor: Colors.red,
                                title: Center(
                                  child: new Text(
                                    "are you sure thet you want to make an emgarnsy meeting",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                content: Row(
                                  children: <Widget>[
                                    FlatButton(
                                        color: Colors.red,
                                        onPressed: () {
                                          displayBottomSheet(context);
                                        },
                                        child: Text(
                                          "Yes,Iam sure",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                    SizedBox(
                                      width: 45,
                                    ),
                                    FlatButton(
                                        color: Colors.white,
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "No,Iam not sure",
                                          style: TextStyle(color: Colors.red),
                                        )),
                                  ],
                                )));
                      },
                    )
                  ],
                ),
              ),
              appBar: AppBar(
                title: Text("tic world"),
                centerTitle: true,
                actions: <Widget>[
                  Stack(
                    children: <Widget>[
                      Positioned(
                          top: 7,
                          bottom: 20,
                          right: 20,
                          left: 28,
                          child: Text(cart.count.toString())),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: <Widget>[
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => check_out()));
                                },
                                child: Icon(
                                  Icons.shopping_cart,
                                ))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              body: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return GridTile(
                      child: Column(
                    children: <Widget>[
                      ListTile(
                        onTap: () {},
                        title: Column(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Image.asset(
                                  "Images/asset1.png",
                                  scale: 1.5,
                                ),
                              ],
                            ),
                            Text(items[index].title),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            children: <Widget>[
                              (items[index].dep),
                              FlatButton(
                                color: Colors.blue,
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 0,
                                    ),
                                    Center(
                                        child: Text(
                                      "add to cart",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    SizedBox(
                                      width: 200.0,
                                    ),
                                    Text(items[index].price.toString()),
                                    SizedBox(
                                      width: 0,
                                    )
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    cart.add(items[index]);
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ));
                },
              ));
        }));
  }
}

void displayBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Center(
              child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 3.0, bottom: 5),
                child: Lottie.asset(
                  "Images/coffin.json",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("The Emergency meeting is dated secsfuly ☠☠"),
              ),
            ],
          )),
        );
      });
}
