import 'package:bart_tech/view/home_page.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            buildProfileBar(context),
            buildIconBar(context),
            buildListView(context),
            buildNavigationBar(context)
          ],
        ),
      ),
    );
  }

  Widget buildProfileBar(context) {
    // 0.2
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14.0, top: 14),
            child: CircleAvatar(
                radius: 60.0,
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.person,
                  size: 40,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.20),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("Bart",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: Text("BartTech@goil.com",
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 13,
                            letterSpacing: 1.4)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Text("β Version",
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 12,
                            color: Colors.black45,
                            letterSpacing: 1.4)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildIconBar(context) {
    // 0.2
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.13,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 0), // changes position of shadow
              ),
            ],
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
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
                  child: Icon(Icons.account_balance_wallet),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.height * 0.08,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
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
                    child: const Icon(Icons.wallet_giftcard)),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
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
                  child: const Icon(Icons.collections_bookmark_outlined),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
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
                  child: const Icon(Icons.assistant_photo),
                ),
              ],
            ),
          )),
    );
  }

  Widget buildListView(context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.47,
        width: MediaQuery.of(context).size.width * 0.85,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                child: Row(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Icon(Icons.shopping_bag_rounded),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "My Orders",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w100,
                                letterSpacing: 1.2),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                child: Row(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Icon(Icons.comment),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Comments",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w100,
                                letterSpacing: 1.2),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                child: Row(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Icon(Icons.text_snippet_outlined),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Messages",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w100,
                                letterSpacing: 1.2),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                child: Row(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Icon(Icons.auto_fix_normal),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "BartTech Elite Account",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w100,
                                letterSpacing: 1.2),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 4, left: 4.0, top: 4.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                child: Row(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Icon(Icons.settings),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Settings",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w100,
                                letterSpacing: 1.2),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget buildNavigationBar(context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.arrow_back, size: 25)),
            )
          ],
        ),
      ),
    );
  }
}
