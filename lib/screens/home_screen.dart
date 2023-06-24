import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart' as badges;

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
          // floatHeaderSlivers: true,
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
            SliverAppBar(
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
                            color: Colors.white,
                            fontSize: Checkbox.width / 1.5)),
                    child: SvgPicture.asset(
                      'assets/icons/Bell.svg',
                      width: Checkbox.width * 1.25,
                      height: Checkbox.width * 1.25,
                    ),
                  ),
                ),
              ],
            ),
          ],
          body: SingleChildScrollView(
            child: Column(
              children: [
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
                Container(
                  // color: Colors.lightBlue,
                  height: Checkbox.width * 7.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: Checkbox.width * 3.3,
                            width: Checkbox.width * 3.3,
                            margin: const EdgeInsets.only(
                                top: Checkbox.width / 1.3,
                                bottom: Checkbox.width / 4),
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFFFDEADC),
                            ),
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              'assets/icons/Flash Icon.svg',
                              width: Checkbox.width * 1.5,
                              height: Checkbox.width * 1.5,
                            ),
                          ),
                          const Text(
                            "Flash\nDeal",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontFamily: "muli",
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: Checkbox.width * 3.3,
                            width: Checkbox.width * 3.3,
                            margin: const EdgeInsets.only(
                                top: Checkbox.width / 1.3,
                                bottom: Checkbox.width / 4),
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFFFDEADC),
                            ),
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              'assets/icons/Bill Icon.svg',
                              width: Checkbox.width * 1.5,
                              height: Checkbox.width * 1.5,
                            ),
                          ),
                          const Text(
                            "Bill",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontFamily: "muli",
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: Checkbox.width * 3.3,
                            width: Checkbox.width * 3.3,
                            margin: const EdgeInsets.only(
                                top: Checkbox.width / 1.3,
                                bottom: Checkbox.width / 4),
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFFFDEADC),
                            ),
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              'assets/icons/Game Icon.svg',
                              width: Checkbox.width * 1.2,
                              height: Checkbox.width * 1.2,
                            ),
                          ),
                          const Text(
                            "Game",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontFamily: "muli",
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: Checkbox.width * 3.3,
                            width: Checkbox.width * 3.3,
                            margin: const EdgeInsets.only(
                                top: Checkbox.width / 1.3,
                                bottom: Checkbox.width / 4),
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFFFDEADC),
                            ),
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              'assets/icons/Gift Icon.svg',
                              width: Checkbox.width * 1.5,
                              height: Checkbox.width * 1.5,
                            ),
                          ),
                          const Text(
                            "Daily\nGift",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontFamily: "muli",
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: Checkbox.width * 3.3,
                            width: Checkbox.width * 3.3,
                            margin: const EdgeInsets.only(
                                top: Checkbox.width / 1.3,
                                bottom: Checkbox.width / 4),
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFFFDEADC),
                            ),
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              'assets/icons/Discover.svg',
                              width: Checkbox.width * 1.5,
                              height: Checkbox.width * 1.5,
                            ),
                          ),
                          const Text(
                            "More",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontFamily: "muli",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.red,
                  height: Checkbox.width * 3.1,
                  padding: const EdgeInsets.only(bottom: Checkbox.width / 1.5,left: Checkbox.width,right: Checkbox.width/2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Special for you",
                        style: TextStyle(
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
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontFamily: "muli",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.lime,
                  height: Checkbox.width * 7,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          top: Checkbox.width / 2,
                          left: Checkbox.width,
                        ),
                        width: Checkbox.width * 14,
                        margin: const EdgeInsets.only(
                            left: Checkbox.width * 1.2,
                            top: Checkbox.width / 4,
                            bottom: Checkbox.width * .8),
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            colorFilter: ColorFilter.mode(
                              Colors.black26,
                              BlendMode.darken,
                            ),
                            fit: BoxFit.fill,
                            image:
                                AssetImage("assets/images/Image Banner 2.png"),
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
                            const Text(
                              "Smartphone",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "muli",
                              ),
                            ),
                            Text(
                              "18 Brand",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.shade300,
                                fontWeight: FontWeight.bold,
                                fontFamily: "muli",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: Checkbox.width / 2,
                          left: Checkbox.width,
                        ),
                        width: Checkbox.width * 14,
                        margin: const EdgeInsets.only(
                            left: Checkbox.width * 1.2,
                            top: Checkbox.width / 4,
                            bottom: Checkbox.width * .8),
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            colorFilter: ColorFilter.mode(
                              Colors.black26,
                              BlendMode.darken,
                            ),
                            fit: BoxFit.fill,
                            image:
                                AssetImage("assets/images/Image Banner 3.png"),
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
                            const Text(
                              "Fashion",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "muli",
                              ),
                            ),
                            Text(
                              "20 Brands",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.shade300,
                                fontWeight: FontWeight.bold,
                                fontFamily: "muli",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.red,
                  height: Checkbox.width * 3.1,
                  margin: const EdgeInsets.only(top: Checkbox.width / 2),
                  padding: const EdgeInsets.only(bottom: Checkbox.width / 1.8,left: Checkbox.width,right: Checkbox.width/2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Popular Products",
                        style: TextStyle(
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
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontFamily: "muli",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.lime,
                  height: Checkbox.width * 15,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
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
                                  "assets/images/ps4_console_white_1.png",
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: Checkbox.width * 8,
                                  child: Text(
                                    "Wireless Controller for PS4",
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "\$64.99",
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
                                          color: heart1IsPressed ?  const Color(0xD3E9CACA) : Colors.grey.shade200,
                                        ),
                                        child: IconButton(
                                          // color: Colors.red,
                                          onPressed: () {
                                            heart1IsPressed = !heart1IsPressed;
                                            setState(() {});
                                          },
                                          icon: SvgPicture.asset(
                                            "assets/icons/Heart Icon_2.svg",
                                            color: heart1IsPressed
                                                ? Colors.red
                                                : Colors.grey,
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
                                  "assets/images/Image Popular Product 2.png",
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: Checkbox.width * 8,
                                  child: Text(
                                    "Nike Sport White - Man Pant",
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "\$50.5",
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
                                          color: heart2IsPressed ?  const Color(0xD3E9CACA) : Colors.grey.shade200,
                                        ),
                                        child: IconButton(
                                          // color: Colors.red,
                                          onPressed: () {
                                            heart2IsPressed = !heart2IsPressed;
                                            setState(() {});
                                          },
                                          icon: SvgPicture.asset(
                                            "assets/icons/Heart Icon_2.svg",
                                            color: heart2IsPressed
                                                ? Colors.red
                                                : Colors.grey,
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
                      Container(
                        padding:  const EdgeInsets.only(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                          color: heart3IsPressed ?  const Color(0xD3E9CACA) : Colors.grey.shade200,
                                        ),
                                        child: IconButton(
                                          // color: Colors.red,
                                          onPressed: () {
                                            heart3IsPressed = !heart3IsPressed;
                                            setState(() {});
                                          },
                                          icon: SvgPicture.asset(
                                            "assets/icons/Heart Icon_2.svg",
                                            color: heart3IsPressed
                                                ? Colors.red
                                                : Colors.grey,
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
          ),
        ),
        bottomNavigationBar: Container(
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
        ),
      ),
    );
  }
}
