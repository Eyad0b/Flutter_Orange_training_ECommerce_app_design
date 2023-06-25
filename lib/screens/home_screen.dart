import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart' as badges;

import 'details/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool heart1IsPressed = false;
  bool heart2IsPressed = false;
  bool heart3IsPressed = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
            _buildSliverAppBar(),
          ],
          body: _buildBody(),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  SliverAppBar _buildSliverAppBar() {
    return SliverAppBar(
      snap: true,
      floating: true,
      automaticallyImplyLeading: false,
      toolbarHeight: Checkbox.width * 4.5,
      elevation: 0,
      backgroundColor: Colors.white,
      titleSpacing: double.minPositive,
      title: Container(
        margin: const EdgeInsets.only(
          right: Checkbox.width / 2,
          left: Checkbox.width * 1.2,
          top: Checkbox.width / 1.6,
        ),
        height: Checkbox.width * 2.7,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Container(
              margin: const EdgeInsets.all(Checkbox.width / 1.3),
              child: SvgPicture.asset(
                'assets/icons/Search Icon.svg',
                fit: BoxFit.fill,
              ),
            ),
            hintText: 'Search product',
            hintStyle: const TextStyle(
              fontSize: 17,
              color: Colors.black45,
              fontWeight: FontWeight.bold,
              fontFamily: "muli",
            ),
            border: InputBorder.none,
          ),
        ),
      ),
      actions: [
        Container(
          height: 46,
          width: 46,
          margin: const EdgeInsets.only(top: Checkbox.width),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade200,
          ),
          alignment: Alignment.center,
          child: SvgPicture.asset(
            'assets/icons/Cart Icon.svg',
            width: Checkbox.width * 1.1,
            height: Checkbox.width * 1.1,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 46,
          width: 46,
          margin: const EdgeInsets.only(
            right: Checkbox.width * 1.1,
            left: Checkbox.width / 10,
            top: Checkbox.width,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: badges.Badge(
            position: badges.BadgePosition.custom(
                start: Checkbox.width, bottom: Checkbox.width),
            badgeContent: const Text("3",
                style: TextStyle(
                    color: Colors.white, fontSize: Checkbox.width / 1.5)),
            child: SvgPicture.asset(
              'assets/icons/Bell.svg',
              width: Checkbox.width * 1.25,
              height: Checkbox.width * 1.25,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
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
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildPopularProductItem(
                  title: "Wireless Controller for PS4",
                  price: "64.99",
                  itemImagePath: "assets/images/ps4_console_white_1.png",
                  heartIsPressed: heart1IsPressed,
                ),
                _buildPopularProductItem(
                  title: "Nike Sport White - Man Pant",
                  price: "50.5",
                  itemImagePath: "assets/images/Image Popular Product 2.png",
                  heartIsPressed: heart2IsPressed,
                ),
                _buildPopularProductItem(
                  title: "Gloves Omega and Polygon joie Kids Bike Helmet",
                  price: "36.99",
                  itemImagePath: "assets/images/Image Popular Product 3.png",
                  heartIsPressed: heart3IsPressed,
                ),
            Container(
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
                    child: const Image(
                      fit: BoxFit.scaleDown,
                      image: AssetImage(
                        "assets/images/Image Popular Product 3.png",
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: Checkbox.width * 8,
                        child: Text(
                          "Gloves Omega and Polygon joie Kids Bike Helmet",
                          style: TextStyle(
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
                            const Text(
                              "\$36.99",
                              style: TextStyle(
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
                                color: heart1IsPressed
                                    ? const Color(0xD3E9CACA)
                                    : Colors.grey.shade200,
                              ),
                              child: IconButton(
                                // color: Colors.red,
                                onPressed: () {
                                  setState(() {
                                    heart1IsPressed = !heart1IsPressed;
                                  });
                                },
                                icon: SvgPicture.asset(
                                  "assets/icons/Heart Icon_2.svg",
                                  color: heart1IsPressed ? Colors.red : Colors.grey,
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
            ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      padding: const EdgeInsets.all(16.05),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Shop Icon.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Heart Icon.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Chat bubble Icon.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/User Icon.svg')),
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
            onPressed: () {},
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
            child: Image(
              fit: BoxFit.scaleDown,
              image: AssetImage(
                itemImagePath,
              ),
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
