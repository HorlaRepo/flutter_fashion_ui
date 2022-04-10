import 'package:fashion_store_ui/screens/product_detail_screen.dart';
import 'package:fashion_store_ui/widgets/top_sales_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../widgets/product_view.dart';

class TopSalesScreen extends StatefulWidget {
  const TopSalesScreen({Key? key}) : super(key: key);

  @override
  State<TopSalesScreen> createState() => _TopSalesScreenState();
}

class _TopSalesScreenState extends State<TopSalesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text(
          'Top sales',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(
                  CupertinoIcons.bag_fill,
                  size: 25.0,
                ),
              ),
              Positioned(
                top: 15,
                right: 6,
                child: Container(
                  height: 13,
                  width: 13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Theme.of(context).accentColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 15.0),
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                TopSalesMenu(
                  title: 'Sort by',
                  textColor: Colors.black,
                  bgColor: Theme.of(context).accentColor,
                  icon: CupertinoIcons.line_horizontal_3_decrease,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                TopSalesMenu(
                  title: 'Shoes',
                  textColor: Colors.white,
                  bgColor: const Color(0xff1f1f1f),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                TopSalesMenu(
                  title: 'FW 2021',
                  textColor: Theme.of(context).accentColor,
                  bgColor: Theme.of(context).primaryColor,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                TopSalesMenu(
                  title: 'New',
                  textColor: Colors.white,
                  bgColor: const Color(0xff1f1f1f),
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: products.length,
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 300,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                Product product = products[index];

                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((_) => ProductDetailScreen(
                            product: product,
                          )),
                    ),
                  ),
                  child: ProductView(
                      price: products[index].price,
                      imageUrl: products[index].imageUrl,
                      title: products[index].title,
                      isLiked: products[index].isLiked),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
