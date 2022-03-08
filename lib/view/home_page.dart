import 'package:bart_tech/view/my_basket.dart';
import 'package:bart_tech/view/product/products.dart';
import 'package:bart_tech/view/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [buildAppBar(context), buildMainScreen(context)],
    ));
  }

  Widget buildAppBar(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.17,
      width: MediaQuery.of(context).size.width * 1,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07),
            child: Container(
              child: Image.asset("assets/images/4.png",
                  height: 110, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.07),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyBasket()),
                );
              },
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
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("MY BASKET",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildMainScreen(context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.83,
        color: Colors.white,
        child: Column(
          children: [
            buildCarousel(context),
            buildCategories(context),
            buildBestSeller(context),
            buildNavigationBar(context)
          ],
        ));
  }

  Widget buildCarousel(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.6),
                        borderRadius: BorderRadius.circular(15)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
            child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }

  Widget buildCategories(context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 1,
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.computer),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0, right: 35),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.height * 0.08,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.phone_android_rounded)),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.tv_rounded),
              )
            ],
          ),
        ));
  }

  Widget buildBestSeller(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.37,
      width: MediaQuery.of(context).size.width * 0.85,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            child: const Padding(
              padding: EdgeInsets.only(top: 7.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Best Seller",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        letterSpacing: 1.8),
                  )),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.17,
            child: Image.network(
              "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_79060951/fee_194_131_png/HUAWEI-Matebook-D15-15.6%22-i5-10210U-8GB-RAM-256-GB-SSD-Full-HD-Win10-Laptop-Uzay-Grisi",
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.025,
            margin: const EdgeInsets.only(top: 10),
            child: const Text(
              "HUAWEI Matebook D15",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            width: MediaQuery.of(context).size.width * 0.85,
            alignment: Alignment.center,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.02,
            margin: const EdgeInsets.only(top: 3),
            child: const Text(
              "i5-10210U/8GB RAM/256 GB SSD",
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
            width: MediaQuery.of(context).size.width * 0.85,
            alignment: Alignment.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star_half, color: Colors.amber),
                Icon(Icons.star_border_outlined)
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05 - 10,
            child: const Text("\$210.00",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                    color: Colors.black54)),
          ),
        ],
      ),
    );
  }

  Widget buildNavigationBar(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  //Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Icon(Icons.home)),
          GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  //Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Products()),
                );
              },
              child: const Icon(Icons.shopping_cart_outlined)),
          GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  //Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              child: Icon(Icons.person))
        ],
      ),
    );
  }
}
