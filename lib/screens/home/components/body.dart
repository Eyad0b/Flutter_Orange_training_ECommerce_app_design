import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../details/details_screen.dart';
import 'package:http/http.dart' as http;

import '../../see_all_products/see_all_product_screen.dart';
// List<Product> listAlbum = [];

// Make network request
//Covert http response inside album
Future <List<Product>> fetchProduct() async {
  // listAlbum = [];
  final response = await http.get(
    Uri.parse("https://fakestoreapi.com/products/"),
  );

  if (response.statusCode == 200) {
    var decodeData = json.decode(response.body) as List<dynamic>;
    List<Product> products = decodeData.map((json) => Product.fromJson(json)).toList();
    return products;
  } else {
    throw Exception("Field load Album");
  }
}

// Create album class (model)
class Product {
  // final int id;
  final num price; //double
  final String title;
  final String description;
  final String category;
  final String image;




  const Product({
    // required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      // id: json['id'],
      price: json['price'],
      title: json['title'],
      description: json['description'],
      category: json['category'],
      image: json['image'],
    );
  }
}
class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}
bool heart1IsPressed = false;
bool heart2IsPressed = false;
bool heart3IsPressed = false;

class _BodyState extends State<Body> {
  late Future<List<Product>> futureProducts;

  @override
  void initState() {
    // TODO: implement initState
    futureProducts = fetchProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Offers
          Container(
            // color: Colors.yellow,
            height: Checkbox.width * 8.2,
            width: Checkbox.width * 25,
            padding: const EdgeInsets.only(
              left: Checkbox.width * 1,
              right: Checkbox.width * 1,
              bottom: Checkbox.width * 1.6,
              top: Checkbox.width * 1.3,
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF4B3297),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: Checkbox.width,
                  top: Checkbox.width / 2,
                  bottom: Checkbox.width / 2),
              // color: Color(0xFF4B3297),
              // height: Checkbox.width ,
              // width: Checkbox.width * 6,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "A Summer Surpise",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: "muli",
                    ),
                  ),
                  Text(
                    "Cashback 20%",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "muli",
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Category's
          SizedBox(
            // color: Colors.lightBlue,
            height: Checkbox.width * 6.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCategoryItem(
                  'assets/icons/Flash Icon.svg',
                  "Flash Deal",
                ),
                _buildCategoryItem(
                  'assets/icons/Bill Icon.svg',
                  "Bill",
                ),
                _buildCategoryItem(
                  'assets/icons/Game Icon.svg',
                  "Game",
                ),
                _buildCategoryItem(
                  'assets/icons/Gift Icon.svg',
                  "Daily Gift",
                ),
                _buildCategoryItem(
                  'assets/icons/Discover.svg',
                  "More",
                ),
              ],
            ),
          ),
          // Special for you
          _buildTitleText(
            title: "Special for you",
            margin: 1.3,
            bottomPadding: 1.5,
          ),
          SizedBox(
            // color: Colors.lime,
            height: Checkbox.width * 7,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildSpecialForYouCategory(
                  title: "Smartphone",
                  supTitle: "18 Brand",
                  backGroundImagePath: "assets/images/Image Banner 2.png",
                ),
                _buildSpecialForYouCategory(
                  title: "Fashion",
                  supTitle: "20 Brands",
                  backGroundImagePath: "assets/images/Image Banner 3.png",
                ),
              ],
            ),
          ),
          // Popular Products
          _buildTitleText(
            title: "Popular Products",
          ),
          SizedBox(
            // color: Colors.lime,
            height: Checkbox.width * 15,
            width: double.infinity,
            child:
            FutureBuilder<List<Product>>(
              builder: (context, snapshot) {
                // assignment what is a snapshot
                if (snapshot.hasData) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: int.parse(snapshot.data!.length.toString()),
                    itemBuilder: (BuildContext context, int index) {
                      return _buildPopularProductItem(
                        title: snapshot.data![index].title,
                        price: snapshot.data![index].price.toString(),
                        itemImagePath: snapshot.data![index].image,
                        heartIsPressed: heart2IsPressed,
                      );
                    },
                    // children: [
                    //
                    //   _buildPopularProductItem(
                    //     title: "Gloves Omega and Polygon joie Kids Bike Helmet",
                    //     price: "36.99",
                    //     itemImagePath: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
                    //     heartIsPressed: heart3IsPressed,
                    //   ),
                      // Container(
                      //   padding: const EdgeInsets.only(
                      //     left: Checkbox.width,
                      //     top: Checkbox.width / 2.5,
                      //   ),
                      //   child: Column(
                      //     children: [
                      //       Container(
                      //         width: Checkbox.width * 8.25,
                      //         height: Checkbox.width * 8.25,
                      //         padding: const EdgeInsets.all(Checkbox.width),
                      //         decoration: ShapeDecoration(
                      //           shape: const RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.all(
                      //               Radius.circular(15),
                      //             ),
                      //           ),
                      //           color: Colors.grey.shade200,
                      //         ),
                      //         child: const Image(
                      //           fit: BoxFit.scaleDown,
                      //           image: AssetImage(
                      //             "assets/images/Image Popular Product 3.png",
                      //           ),
                      //         ),
                      //       ),
                      //       Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           const SizedBox(
                      //             width: Checkbox.width * 8,
                      //             child: Text(
                      //               "Gloves Omega and Polygon joie Kids Bike Helmet",
                      //               style: TextStyle(
                      //                 fontSize: 15,
                      //                 color: Colors.black,
                      //                 fontWeight: FontWeight.w600,
                      //                 fontFamily: "muli",
                      //               ),
                      //               maxLines: 2,
                      //               overflow: TextOverflow.ellipsis,
                      //             ),
                      //           ),
                      //           SizedBox(
                      //             width: Checkbox.width * 8.5,
                      //             child: Row(
                      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //               children: [
                      //                 const Text(
                      //                   "\$36.99",
                      //                   style: TextStyle(
                      //                     fontSize: 20,
                      //                     color: Colors.orange,
                      //                     fontWeight: FontWeight.bold,
                      //                     fontFamily: "muli",
                      //                   ),
                      //                 ),
                      //                 Container(
                      //                   width: Checkbox.width * 1.5,
                      //                   height: Checkbox.width * 1.5,
                      //                   decoration: ShapeDecoration(
                      //                     shape: const CircleBorder(),
                      //                     color: heart1IsPressed
                      //                         ? const Color(0xD3E9CACA)
                      //                         : Colors.grey.shade200,
                      //                   ),
                      //                   child: IconButton(
                      //                     // color: Colors.red,
                      //                     onPressed: () {
                      //                       setState(() {
                      //                         heart1IsPressed = !heart1IsPressed;
                      //                       });
                      //                     },
                      //                     icon: SvgPicture.asset(
                      //                       "assets/icons/Heart Icon_2.svg",
                      //                       color: heart1IsPressed ? Colors.red : Colors.grey,
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    // ],
                  );
                }  else if (snapshot.hasError) {
                  print(snapshot.error);
                  return Text(snapshot.error.toString());
                }else{
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.red,
                    ),
                  );
                }
              },
              future: futureProducts,
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildCategoryItem(String iconPath, String title) {
    return Column(
      children: [
        Container(
          height: Checkbox.width * 3.3,
          width: Checkbox.width * 3.3,
          margin: const EdgeInsets.only(
            top: Checkbox.width / 1.3,
            bottom: Checkbox.width / 4,
          ),
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xFFFDEADC),
          ),
          alignment: Alignment.center,
          child: SvgPicture.asset(
            iconPath,
            width: Checkbox.width * 1.5,
            height: Checkbox.width * 1.5,
          ),
        ),
        SizedBox(
          width: Checkbox.width * 3.3,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black45,
              fontWeight: FontWeight.bold,
              fontFamily: "muli",
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildTitleText(
      {required String title,
        double margin = 2.0,
        double bottomPadding = 1.8}) {
    return Container(
      height: Checkbox.width * 3.1,
      margin: EdgeInsets.only(top: Checkbox.width / margin),
      padding: EdgeInsets.only(
        bottom: Checkbox.width / bottomPadding,
        left: Checkbox.width,
        right: Checkbox.width / 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: "muli",
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SeeAllProductScreen()),
              );
            },
            child: const Text(
              "See More",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black26,
                fontWeight: FontWeight.bold,
                fontFamily: "muli",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialForYouCategory(
      {required String title,
        required String supTitle,
        required String backGroundImagePath}) {
    return Container(
      padding: const EdgeInsets.only(
        top: Checkbox.width / 2,
        left: Checkbox.width,
      ),
      width: Checkbox.width * 14,
      margin: const EdgeInsets.only(
        left: Checkbox.width * 1.2,
        top: Checkbox.width / 4,
        bottom: Checkbox.width * .8,
      ),
      decoration: ShapeDecoration(
        image: DecorationImage(
          colorFilter: const ColorFilter.mode(
            Colors.black26,
            BlendMode.darken,
          ),
          fit: BoxFit.fill,
          image: AssetImage(backGroundImagePath),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        color: Colors.grey.shade300,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "muli",
            ),
          ),
          Text(
            supTitle,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey.shade300,
              fontWeight: FontWeight.bold,
              fontFamily: "muli",
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopularProductItem(
      {required String title,
        required String price,
        required String itemImagePath,
        required bool heartIsPressed}) {
    return Container(
      padding: const EdgeInsets.only(
        left: Checkbox.width,
        top: Checkbox.width / 2.5,
      ),
      child: Column(
        children: [
          Container(
            width: Checkbox.width * 8.25,
            height: Checkbox.width * 8.25,
            padding: const EdgeInsets.all(Checkbox.width),
            decoration: ShapeDecoration(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              color: Colors.grey.shade200,
            ),
            child: Image.network(
              itemImagePath,
              fit: BoxFit.scaleDown,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Checkbox.width * 8,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: "muli",
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: Checkbox.width * 8.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$$price",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontFamily: "muli",
                      ),
                    ),
                    Container(
                      width: Checkbox.width * 1.5,
                      height: Checkbox.width * 1.5,
                      decoration: ShapeDecoration(
                        shape: const CircleBorder(),
                        color: heartIsPressed
                            ? const Color(0xD3E9CACA)
                            : Colors.grey.shade200,
                      ),
                      child: IconButton(
                        // color: Colors.red,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Details()),
                          );
                          setState(() {
                            heartIsPressed ? heartIsPressed = !heartIsPressed : null;
                          });
                        },
                        icon: SvgPicture.asset(
                          "assets/icons/Heart Icon_2.svg",
                          color: heartIsPressed ? Colors.red : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
