import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: Checkbox.width * 4.5,
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: double.minPositive,
        title: Container(
          margin: const EdgeInsets.only(right: Checkbox.width / 2, left: Checkbox.width),
          // width: double.infinity,
          height: 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: SvgPicture.asset('assets/icons/Search Icon.svg',fit: BoxFit.scaleDown),
              hintText: 'Search product',
              hintStyle: const TextStyle(color: Colors.black54),
              border: InputBorder.none,
            ),
          ),
        ),
        actions: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,),
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/icons/Cart Icon.svg',width: Checkbox.width * 1.1, height: Checkbox.width * 1.1),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 45,
            width: 45,
            margin: const EdgeInsets.only(right: Checkbox.width),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/icons/Bell.svg',width: Checkbox.width * 1.1, height: Checkbox.width * 1.1),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15),
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
    );
  }
}
