import 'package:bart_tech/state_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class MyBasket extends StatelessWidget {
  const MyBasket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildMyBasketBody(context));
  }

  Widget buildMyBasketBody(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1,
      child: Column(
        children: [buildAppBar(context), buildMainScreen(context)],
      ),
    );
  }

  Widget buildAppBar(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.height * 1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                children: [
                  Hero(
                    tag: "my_basket_key",
                    child: Container(
                        child: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 25,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text(
                          "TOTAL PRICE : ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w100,
                            letterSpacing: 1.4,
                          ),
                        ),
                        Text(
                          "\$490.20",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMainScreen(context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.height * 1,
        color: Colors.white,
        child: Column(
          children: [buildItems(context), buildOrderDetails(context)],
        ));
  }

  Widget buildItems(context) {
    return Consumer<StateData>(
      builder: (context, state, widget) {
        return Expanded(
          child: ListView.builder(
            itemCount: state.products.length,
            itemBuilder: (context, index) {
              return buildListViewItem(context, index);
            },
          ),
        );
      },
    );
  }

  Widget buildListViewItem(context, index) {
    return Consumer<StateData>(
      builder: (context, state, widget) {
        return Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 10, right: 10),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 0.6),
              borderRadius: BorderRadius.circular(15),
            ),
            height: MediaQuery.of(context).size.height * 0.2,
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.17,
                      child:
                          Image.network(state.products[index].image.toString()),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            state.products[index].title.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Text(
                            state.products[index].subtitle.toString(),
                            style:
                                TextStyle(fontSize: 10, color: Colors.black54),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            state.products[index].price.toString(),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 7.0),
                            child: IconButton(
                                onPressed: () {
                                  state.removeProductFromMyBasket(index);
                                },
                                icon: Icon(Icons.delete_outline_rounded,
                                    color: Colors.red))),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildOrderDetails(context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.height * 0.95,
      decoration: BoxDecoration(
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Colors.black54,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.75))
        ],
        color: Colors.white,
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "TOTAL PRICE",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                        letterSpacing: 1.4),
                  ),
                  Text(
                    "\$490.20",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700],
                    ),
                  ),
                ],
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 35,
                  child: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Coupon",
                        icon: Icon(Icons.money_outlined),
                        labelStyle: TextStyle(fontWeight: FontWeight.w100),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  )),
            ],
          )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.home_outlined),
            Text(
              "ADDRESS : ",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w100,
                  letterSpacing: 1.2),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.0),
              child: Text(
                "151 N Michigan Ave, Chicago, IL 60601, USA",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green[700]),
                onPressed: () {},
                child: Text(
                  "CONFIRM PAYMENT",
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.4,
                      fontSize: 12),
                )))
      ]),
    );
  }
}



/*

 */