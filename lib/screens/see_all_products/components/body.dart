import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../details/details_screen.dart';
import 'package:http/http.dart' as http;
// List<Product> listAlbum = [];

// Make network request
//Covert http response inside album
Future<List<Product>> fetchProduct() async {
  // listAlbum = [];
  final response = await http.get(
    Uri.parse("https://fakestoreapi.com/products/"),
  );

  if (response.statusCode == 200) {
    var decodeData = json.decode(response.body) as List<dynamic>;
    List<Product> products =
        decodeData.map((json) => Product.fromJson(json)).toList();
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Expanded(
      // height: double.infinity,
      // width: double.infinity,
      // margin: EdgeInsets.all(Checkbox.width),
      child: FutureBuilder<List<Product>>(
        builder: (context, snapshot) {
          // assignment what is a snapshot
          if (snapshot.hasData) {
            return GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: int.parse(snapshot.data!.length.toString()),
              itemBuilder: (BuildContext context, int index) {
                return _buildPopularProductItem(
                  title: snapshot.data![index].title,
                  price: snapshot.data![index].price.toString(),
                  itemImagePath: snapshot.data![index].image,
                  heartIsPressed: heart2IsPressed,
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
            );
          } else if (snapshot.hasError) {
            print(snapshot.error);
            return Text(snapshot.error.toString());
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }
        },
        future: futureProducts,
      ),
    );
  }

  Widget _buildPopularProductItem(
      {required String title,
      required String price,
      required String itemImagePath,
      required bool heartIsPressed}) {
    return Expanded(
      // height: Checkbox.width * 30,
      // width: Checkbox.width * 9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: Checkbox.width * 8.25,
            height: Checkbox.width * 6.25,
            padding: const EdgeInsets.all(Checkbox.width / 2),
            margin: const EdgeInsets.only(top: Checkbox.width / 2),
            decoration: const ShapeDecoration(
              shadows: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  blurStyle: BlurStyle.outer,
                  blurRadius: Checkbox.width,
                  // offset: Offset.fromDirection(Checkbox.width)
                ),
              ],
              shape: RoundedRectangleBorder(
                // side: BorderSide(color: Colors.deepOrangeAccent,width: 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              color: Colors.white,
            ),
            child: Image.network(
              itemImagePath,
              fit: BoxFit.scaleDown,
            ),
          ),
          Container(
            width: Checkbox.width * 9,
            height: Checkbox.width * 4.1,
            child: Column(
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
                              heartIsPressed
                                  ? heartIsPressed = !heartIsPressed
                                  : null;
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
          ),
        ],
      ),
    );
  }
}
