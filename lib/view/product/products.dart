import 'package:bart_tech/model/Product.dart';
import 'package:bart_tech/state_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home_page.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(child: buildProductBody(context)),
    );
  }

  Widget buildProductBody(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1,
      child: Column(
        children: [buildAppBar(context), buildMainScreen(context)],
      ),
    );
  }

  Widget buildAppBar(context) {
    //Search TextField
    Widget searchField = TextField(
      decoration: InputDecoration(
        labelText: "Search Product",
        labelStyle: TextStyle(fontWeight: FontWeight.w100),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.height * 1,
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
                  Navigator.push(
                    //Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),
            ),
            Row(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 35,
                    child: Expanded(child: searchField)),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, left: 8),
                  child: Icon(Icons.search),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildMainScreen(context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.height * 1,
        child: Column(
          children: [buildCategories(context), buildProducts(context)],
        ));
  }

  Widget buildCategories(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.height * 1,
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 25,
                    width: 85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black54, width: 0.6),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "TV",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                    height: 25,
                    width: 85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black54, width: 0.6),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "Android",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                    height: 25,
                    width: 85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black54, width: 0.6),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "Apple",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                    height: 25,
                    width: 85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black54, width: 0.6),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "Laptop",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                  height: 0.3,
                  color: Colors.black87,
                  width: MediaQuery.of(context).size.width * 0.95),
            )
          ],
        ),
      ),
    );
  }

  Widget buildProducts(context) {
    var state_data = Provider.of<StateData>(context);
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.47,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54, width: 0.6),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
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
                        alignment: Alignment.center,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                        margin: const EdgeInsets.only(top: 3),
                        child: const Text(
                          "i5-10210U/8GB RAM/256 GB SSD",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11, color: Colors.black54),
                        ),
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
                      state_data.products.where((e) => e.id == 0).isNotEmpty
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  child: const Text("\$210.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black54)),
                                ),
                                IconButton(
                                  icon: Icon(Icons.shopping_cart_outlined),
                                  onPressed: () {
                                    Product product = Product(
                                      id: 0,
                                      title: "HUAWEI Matebook D15",
                                      subtitle: "i5-10210U/8GB RAM/256 GB SSD",
                                      trademark: "HUAWEI",
                                      screenSize: "15x9",
                                      weight: "200GR",
                                      price: "\$210.00",
                                      image:
                                          "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_79060951/fee_194_131_png/HUAWEI-Matebook-D15-15.6%22-i5-10210U-8GB-RAM-256-GB-SSD-Full-HD-Win10-Laptop-Uzay-Grisi",
                                      color: "Grey",
                                    );
                                    state_data.addProductToMyBasket(product);
                                  },
                                ),
                                state_data.products
                                        .where((e) => e.id == 0)
                                        .isNotEmpty
                                    ? Text(state_data.products
                                        .where((e) => e.id == 0)
                                        .length
                                        .toString())
                                    : Text("a")
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  child: const Text("\$210.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black54)),
                                ),
                                IconButton(
                                  icon: Icon(Icons.shopping_cart_outlined),
                                  onPressed: () {
                                    Product product = Product(
                                      id: 0,
                                      title: "HUAWEI Matebook D15",
                                      subtitle: "i5-10210U/8GB RAM/256 GB SSD",
                                      trademark: "HUAWEI",
                                      screenSize: "15x9",
                                      weight: "200GR",
                                      price: "\$210.00",
                                      image:
                                          "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_79060951/fee_194_131_png/HUAWEI-Matebook-D15-15.6%22-i5-10210U-8GB-RAM-256-GB-SSD-Full-HD-Win10-Laptop-Uzay-Grisi",
                                      color: "Grey",
                                    );
                                    state_data.addProductToMyBasket(product);
                                  },
                                ),
                              ],
                            )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.47,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54, width: 0.6),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Image.network(
                          "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_86480289/fee_194_131_png/LENOVO-81WQ002TTX-IP3--Celeron-N4020--4GB-Ram--128GB-SSD--15.6%22--Win10-Home-Laptop-Platin-Grisi",
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.025,
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          "LENOVO 81WQ002TTX",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.center,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                        margin: const EdgeInsets.only(top: 3),
                        child: const Text(
                          "Celeron N4020/4GB Ram/128GB",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 10, color: Colors.black54),
                        ),
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
                            Icon(Icons.star_border_outlined),
                            Icon(Icons.star_border_outlined)
                          ],
                        ),
                      ),
                      state_data.products.where((e) => e.id == 1).isNotEmpty
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  child: const Text("\$170.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black54)),
                                ),
                                IconButton(
                                  icon: Icon(Icons.shopping_cart_outlined),
                                  onPressed: () {
                                    Product product = Product(
                                      id: 1,
                                      title: "LENOVO 81WQ002TTX",
                                      subtitle: "Celeron N4020/4GB Ram/128GB",
                                      trademark: "lenovo",
                                      screenSize: "15x9",
                                      weight: "158GR",
                                      price: "\$170.00",
                                      image:
                                          "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_86480289/fee_194_131_png/LENOVO-81WQ002TTX-IP3--Celeron-N4020--4GB-Ram--128GB-SSD--15.6%22--Win10-Home-Laptop-Platin-Grisi",
                                      color: "Grey",
                                    );
                                    state_data.addProductToMyBasket(product);
                                  },
                                ),
                                state_data.products
                                        .where((e) => e.id == 1)
                                        .isNotEmpty
                                    ? Text(state_data.products
                                        .where((e) => e.id == 1)
                                        .length
                                        .toString())
                                    : Text("a")
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  child: const Text("\$170.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black54)),
                                ),
                                IconButton(
                                  icon: Icon(Icons.shopping_cart_outlined),
                                  onPressed: () {
                                    Product product = Product(
                                      id: 1,
                                      title: "LENOVO 81WQ002TTX",
                                      subtitle: "Celeron N4020/4GB Ram/128GB",
                                      trademark: "lenovo",
                                      screenSize: "15x9",
                                      weight: "158GR",
                                      price: "\$170.00",
                                      image:
                                          "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_86480289/fee_194_131_png/LENOVO-81WQ002TTX-IP3--Celeron-N4020--4GB-Ram--128GB-SSD--15.6%22--Win10-Home-Laptop-Platin-Grisi",
                                      color: "Grey",
                                    );
                                    state_data.addProductToMyBasket(product);
                                  },
                                ),
                              ],
                            )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.47,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54, width: 0.6),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Image.network(
                          "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_89789152/fee_325_225_png/ASUS-X515FA-BR037T--i3-10110U--4GB-Ram--256GB-SSD--15.6%22HD--Windows-10-Home-Laptop-Gri",
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.025,
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          "ASUS X515FA-BR037T",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.center,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                        margin: const EdgeInsets.only(top: 3),
                        child: const Text(
                          "i3 10110U/ 4GB Ram/ 256GB SSD",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11, color: Colors.black54),
                        ),
                        alignment: Alignment.center,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star_border_outlined),
                            Icon(Icons.star_border_outlined),
                            Icon(Icons.star_border_outlined)
                          ],
                        ),
                      ),
                      state_data.products.where((e) => e.id == 2).isNotEmpty
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  child: const Text("\$140.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black54)),
                                ),
                                IconButton(
                                  icon: Icon(Icons.shopping_cart_outlined),
                                  onPressed: () {
                                    Product product = Product(
                                      id: 2,
                                      title: "ASUS X515FA-BR037T",
                                      subtitle: "i3 10110U/ 4GB Ram/ 256GB SSD",
                                      trademark: "ASUS",
                                      screenSize: "15x9",
                                      weight: "220GR",
                                      price: "\$140.00",
                                      image:
                                          "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_89789152/fee_325_225_png/ASUS-X515FA-BR037T--i3-10110U--4GB-Ram--256GB-SSD--15.6%22HD--Windows-10-Home-Laptop-Gri",
                                      color: "Grey",
                                    );
                                    state_data.addProductToMyBasket(product);
                                  },
                                ),
                                state_data.products
                                        .where((e) => e.id == 2)
                                        .isNotEmpty
                                    ? Text(state_data.products
                                        .where((e) => e.id == 2)
                                        .length
                                        .toString())
                                    : Text("")
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  child: const Text("\$140.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black54)),
                                ),
                                IconButton(
                                  icon: Icon(Icons.shopping_cart_outlined),
                                  onPressed: () {
                                    Product product = Product(
                                      id: 2,
                                      title: "ASUS X515FA-BR037T",
                                      subtitle: "i3 10110U/ 4GB Ram/ 256GB SSD",
                                      trademark: "ASUS",
                                      screenSize: "15x9",
                                      weight: "220GR",
                                      price: "\$140.00",
                                      image:
                                          "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_89789152/fee_325_225_png/ASUS-X515FA-BR037T--i3-10110U--4GB-Ram--256GB-SSD--15.6%22HD--Windows-10-Home-Laptop-Gri",
                                      color: "Grey",
                                    );
                                    state_data.addProductToMyBasket(product);
                                  },
                                ),
                              ],
                            )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.47,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54, width: 0.6),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Image.network(
                          "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_85397006/fee_325_225_png/HUAWEI-Matebook-14--i5-1135G7--16GB--512GB-SSD--14%22-FHD---Windows-10-Home-Laptop-Gri",
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.025,
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          "HUAWEI Matebook 14",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.center,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                        margin: const EdgeInsets.only(top: 3),
                        child: const Text(
                          "i5 1135G7/ 16GB/ 512GB SSD",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 10, color: Colors.black54),
                        ),
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
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star_border_outlined)
                          ],
                        ),
                      ),
                      state_data.products.where((e) => e.id == 3).isNotEmpty
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  child: const Text("\$320.20",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black54)),
                                ),
                                IconButton(
                                  icon: Icon(Icons.shopping_cart_outlined),
                                  onPressed: () {
                                    Product product = Product(
                                      id: 3,
                                      title: "HUAWEI Matebook 14",
                                      subtitle: "i5 1135G7/ 16GB/ 512GB SSD",
                                      trademark: "HUAWEI",
                                      screenSize: "15x9",
                                      weight: "386GR",
                                      price: "\$320.20",
                                      image:
                                          "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_85397006/fee_325_225_png/HUAWEI-Matebook-14--i5-1135G7--16GB--512GB-SSD--14%22-FHD---Windows-10-Home-Laptop-Gri",
                                      color: "Grey",
                                    );
                                    state_data.addProductToMyBasket(product);
                                  },
                                ),
                                state_data.products
                                        .where((e) => e.id == 3)
                                        .isNotEmpty
                                    ? Text(
                                        state_data.products
                                            .where((e) => e.id == 3)
                                            .length
                                            .toString(),
                                        style: TextStyle(fontSize: 16),
                                      )
                                    : Text("")
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  child: const Text("\$320.20",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black54)),
                                ),
                                IconButton(
                                  icon: Icon(Icons.shopping_cart_outlined),
                                  onPressed: () {
                                    Product product = Product(
                                      id: 3,
                                      title: "HUAWEI Matebook 14",
                                      subtitle: "i5 1135G7/ 16GB/ 512GB SSD",
                                      trademark: "HUAWEI",
                                      screenSize: "15x9",
                                      weight: "386GR",
                                      price: "\$320.20",
                                      image:
                                          "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_85397006/fee_325_225_png/HUAWEI-Matebook-14--i5-1135G7--16GB--512GB-SSD--14%22-FHD---Windows-10-Home-Laptop-Gri",
                                      color: "Grey",
                                    );
                                    state_data.addProductToMyBasket(product);
                                  },
                                ),
                              ],
                            )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
