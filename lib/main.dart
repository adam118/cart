import 'package:cart/model/cart.dart';
import 'package:cart/screens/checkot_page.dart';
import 'package:cart/screens/mac.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:cart/model/item.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Cart(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

bool badge = false;
bool control_cover = false;
bool lable = false;
bool cover = false;
bool sticker = false;
bool extra_safe = false;
bool cover_air = false;
double badgep = 2;
double badgepp = 0.5;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        title: ' Moca cold ',
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
      Item(
        title: ' PlaStaition 5 (PS5) \$ 1500',
        image: Image.asset(
          "Images/asset2.png",
          scale: 5,
        ),
        dep: CheckboxListTile(
          title: Text("control cover"),
          value: control_cover,
          onChanged: (newValue) {
            setState(() {
              control_cover = newValue;
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
        price: 1500,
        qun: 1,
      ),
      Item(
        title: ' scsus elfeqhy          \$ 5.5',
        image: Image.asset(
          "Images/asset3.png",
          scale: 5,
        ),
        dep: CheckboxListTile(
          title: Text("lable for the prosses"),
          value: lable,
          onChanged: (newValue) {
            setState(() {
              lable = newValue;
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
        price: 5.5,
        qun: 1,
      ),
      Item(
        title: ' iphone x                 \$ 310',
        dep: CheckboxListTile(
          title: Text("cover"),
          value: cover,
          onChanged: (newValue) {
            setState(() {
              cover = newValue;
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
        image: Image.asset(
          "Images/asset4.png",
          scale: 20,
        ),
        price: 310,
        qun: 1,
      ),
      Item(
        title: ' mini kb 1000     \$ 7',
        dep: CheckboxListTile(
          title: Text("sticker arabic and english"),
          value: sticker,
          onChanged: (newValue) {
            setState(() {
              sticker = newValue;
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
        image: Image.asset(
          "Images/asset5.png",
          scale: 8,
        ),
        price: 7,
        qun: 1,
      ),
      Item(
        title: ' fantic case k22  \$ 90',
        image: Image.asset(
          "Images/asset6.png",
          scale: 8,
        ),
        dep: CheckboxListTile(
          title: Text("extra safe in box"),
          value: extra_safe,
          onChanged: (newValue) {
            setState(() {
              extra_safe = newValue;
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
        price: 90,
        qun: 1,
      ),
      Item(
        title: ' airbods 2              \$ 40',
        image: Image.asset(
          "Images/asset7.png",
          scale: 5,
        ),
        dep: CheckboxListTile(
          title: Text("cover"),
          value: cover_air,
          onChanged: (newValue) {
            setState(() {
              cover_air = newValue;
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
        price: 40,
        qun: 1,
      )
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Consumer<Cart>(builder: (
          context,
          cart,
          child,
        ) {
          return Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => check_out()));
                },
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Text(cart.count.toString()),
                    Icon(Icons.shopping_cart),
                  ],
                ),
              ),
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
                elevation: 0,
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
                        title: Row(
                          children: <Widget>[
                            (items[index].image),
                            Text(items[index].title),
                          ],
                        ),
                        subtitle: Column(
                          children: <Widget>[
                            (items[index].dep),
                            Text(items[index].price.toString()),
                            (items[index].press),
                            Text(
                                "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ")
                          ],
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              cart.add(items[index]);
                            });
                          },
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
