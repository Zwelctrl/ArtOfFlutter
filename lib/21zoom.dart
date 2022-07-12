import 'package:flutter/material.dart';

class ProductCardExp extends StatefulWidget {
  ProductCardExp({Key? key}) : super(key: key);

  @override
  State<ProductCardExp> createState() => _ProductCardExpState();
}

class _ProductCardExpState extends State<ProductCardExp> {
  bool isCheck = false;
  bool switchState = false;
  Color switchColor() {
    return switchState ? Colors.black : Colors.white;
  }

  Color textColor() {
    return switchState ? Colors.white : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: switchState ? Colors.black : Colors.red,
        actions: [
          Icon(switchState ? Icons.dark_mode : Icons.light_mode),
          Switch(
              activeColor: Colors.white,
              value: switchState,
              onChanged: (e) {
                switchState = e;
                print(e);
                setState(() {});
              })
        ],
        title: Text('Product Card '),
      ),
      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     crossAxisAlignment: CrossAxisAlignment.end,
      //     children: [
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.green,
      //       ),
      //     ],
      //   ),
      // ),

      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.yellow,
      //       ),
      //     ],
      //   ),
      // ),

      body: Container(
        color: switchState ? Colors.black : Colors.white,
        child: Center(
            child: InkWell(
          child: Container(
            width: 200,
            height: 240,
            child: Card(
                child: InkWell(
              onTap: () {
                print('On Tap');
              },
              borderRadius: BorderRadius.circular(4),
              splashColor: Colors.blue,
              highlightColor: Colors.amber,
              // overlayColor: MaterialStateProperty.all(Colors.blue),
              // hoverColor: Colors.amber,
              child: Container(
                color: switchColor(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      height: 100,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        'Product 1',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: textColor(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3, left: 5, right: 3),
                      child: Text(
                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: textColor()),
                        maxLines: 3,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Text(
                            '100000KS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan,
                            ),
                          ),
                          Expanded(
                              child: IconButton(
                                  splashRadius: 55,
                                  onPressed: () {
                                    isCheck = !isCheck;
                                    setState(() {});
                                  },
                                  icon: Icon(
                                    isCheck
                                        ? Icons.favorite
                                        : Icons.favorite_outline,
                                    color: switchState
                                        ? isCheck
                                            ? Colors.red
                                            : Colors.white
                                        : isCheck
                                            ? Colors.red
                                            : null,
                                  ))),
                          Expanded(
                              child: IconButton(
                                  color:
                                      switchState ? Colors.white : Colors.black,
                                  splashRadius: 15,
                                  onPressed: () {},
                                  icon: Icon(Icons.search))),
                          InkWell(
                            splashColor: Colors.red,
                            radius: 40,
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {
                              print('Tap');
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                // borderRadius: BorderRadius.circular(5),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
          ),
        )),
      ),
    );
  }
}


// 1:16:00