import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart' as badges;

import '../home/components/body.dart';

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
          body: const Body(),
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



}
