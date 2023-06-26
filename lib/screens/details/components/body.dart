import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({super.key});


  @override
  State<Body> createState() => _BodyState();
}

int selectedItemPictureNumber = 1;
bool addToLoveIt = false;
int selectedItemColorNumber = 4;

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    String selectedItemColor = selectedItemColorNumber == 2 ? "blue" : "white";
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: width * .06),
          color: const Color(0xF2F3F6FF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: Checkbox.width * 2.3,
                width: Checkbox.width * 2.3,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/Back ICon.svg"),
                ),
              ),
              Container(
                width: Checkbox.width * 4,
                height: Checkbox.width * 1.7,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                // alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "4.8",
                      style: TextStyle(
                        fontFamily: "muli",
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset(
                      "assets/icons/Star Icon.svg",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: width,
          height: height * .27,
          alignment: Alignment.topCenter,
          color: const Color(0xFFF3F4F7),
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: Image.asset(
            selectedItemPictureNumber == 1
                ? "assets/images/ps4_console_${selectedItemColor}_1.png"
                : selectedItemPictureNumber == 2
                ? "assets/images/ps4_console_${selectedItemColor}_2.png"
                : selectedItemPictureNumber == 3
                ? "assets/images/ps4_console_${selectedItemColor}_3.png"
                : selectedItemPictureNumber == 4
                ? "assets/images/ps4_console_${selectedItemColor}_4.png" : "" ,
          ),
        ),
        Container(
          height: height * .1,
          alignment: Alignment.topCenter,
          color: const Color(0xFFF3F4F7),
          padding: const EdgeInsets.symmetric(
            horizontal: Checkbox.width * 2.3,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  selectedItemPictureNumber = 1;
                  setState(() {});
                },
                child: Container(
                  width: Checkbox.width * 3,
                  height: Checkbox.width * 3,
                  padding: const EdgeInsets.all(Checkbox.width / 2),
                  decoration: BoxDecoration(
                    border: selectedItemPictureNumber == 1
                        ? Border.all(
                      color: Colors.deepOrange,
                    )
                        : null,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    "assets/images/ps4_console_${selectedItemColor}_1.png",
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedItemPictureNumber = 2;
                  });
                },
                child: Container(
                  width: Checkbox.width * 3,
                  height: Checkbox.width * 3,
                  padding: const EdgeInsets.all(Checkbox.width / 2),
                  decoration: BoxDecoration(
                    border: selectedItemPictureNumber == 2
                        ? Border.all(
                      color: Colors.deepOrange,
                    )
                        : null,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    "assets/images/ps4_console_${selectedItemColor}_2.png",
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  selectedItemPictureNumber = 3;
                  setState(() {});
                },
                child: Container(
                  width: Checkbox.width * 3,
                  height: Checkbox.width * 3,
                  padding: const EdgeInsets.all(Checkbox.width / 2),
                  decoration: BoxDecoration(
                    border: selectedItemPictureNumber == 3
                        ? Border.all(
                      color: Colors.deepOrange,
                    )
                        : null,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    "assets/images/ps4_console_${selectedItemColor}_3.png",
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  selectedItemPictureNumber = 4;
                  setState(() {});
                },
                child: Container(
                  width: Checkbox.width * 3,
                  height: Checkbox.width * 3,
                  padding: const EdgeInsets.all(Checkbox.width / 2),
                  decoration: BoxDecoration(
                    border: selectedItemPictureNumber == 4
                        ? Border.all(
                      color: Colors.deepOrange,
                    )
                        : null,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    "assets/images/ps4_console_${selectedItemColor}_4.png",
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: height * .62,
            width: width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * .05, top: width * .06),
                  child: const Text(
                    "Wirless Controller for PS4\u2122",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: "muli",
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          addToLoveIt = !addToLoveIt;
                        });
                      },
                      child: Container(
                        height: Checkbox.width * 2.7,
                        width: Checkbox.width * 3.8,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          color: addToLoveIt ? const Color(0xFFFDE5E5) : Colors.grey.shade200,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/Heart Icon_2.svg",
                          fit: BoxFit.scaleDown,
                          color: addToLoveIt ? Colors.red : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: width * .83,
                  margin: EdgeInsets.only(left: width * .05),
                  padding: const EdgeInsets.only(bottom: Checkbox.width),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wirless Controller for PS4\u2122 gives you what you want in your gaming from over percision control your games to sharing...",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontFamily: "muli",
                        ),
                        maxLines: 3,
                      ),
                      SizedBox(
                        height: Checkbox.width / 2,
                      ),
                      Text(
                        "See More Detail >",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "muli",
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * .235,
                  width: width,
                  margin: const EdgeInsets.only(top: Checkbox.width / 1.3),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    color: Color(0xFFF5F6F8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: height * .1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: width * .65,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  InkWell(
                                    onTap: () {
                                      selectedItemColorNumber = 1;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: Checkbox.width * 2.5,
                                      width: Checkbox.width * 2.5,
                                      decoration: selectedItemColorNumber == 1 ? BoxDecoration(
                                        border: Border.all(color: Colors.deepOrange),
                                        shape: BoxShape.circle,
                                      ) : null,
                                      child: Center(
                                        child: Container(
                                          height: Checkbox.width * 1.3,
                                          width: Checkbox.width * 1.3,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFFF3615D),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  InkWell(
                                    onTap: () {
                                      selectedItemColorNumber = 2;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: Checkbox.width * 2.5,
                                      width: Checkbox.width * 2.5,
                                      decoration: selectedItemColorNumber == 2 ? BoxDecoration(
                                        border: Border.all(color: Colors.deepOrange),
                                        shape: BoxShape.circle,
                                      ) : null,
                                      child: Center(
                                        child: Container(
                                          height: Checkbox.width * 1.3,
                                          width: Checkbox.width * 1.3,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF826DB7),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  InkWell(
                                    onTap: () {
                                      selectedItemColorNumber = 3;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: Checkbox.width * 2.5,
                                      width: Checkbox.width * 2.5,
                                      decoration: selectedItemColorNumber == 3 ? BoxDecoration(
                                        border: Border.all(color: Colors.deepOrange),
                                        shape: BoxShape.circle,
                                      ) : null,
                                      child: Center(
                                        child: Container(
                                          height: Checkbox.width * 1.3,
                                          width: Checkbox.width * 1.3,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFFDDCA9B),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  InkWell(
                                    onTap: () {
                                      selectedItemColorNumber = 4;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: Checkbox.width * 2.5,
                                      width: Checkbox.width * 2.5,
                                      decoration: selectedItemColorNumber == 4 ? BoxDecoration(
                                        border: Border.all(color: Colors.deepOrange),
                                        shape: BoxShape.circle,
                                      ) : null,
                                      child: Center(
                                        child: Container(
                                          height: Checkbox.width * 1.3,
                                          width: Checkbox.width * 1.3,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFFFDFDFE),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width * .3,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: Checkbox.width * 2.5,
                                    width: Checkbox.width * 2.5,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    padding: const EdgeInsets.all(
                                        Checkbox.width / 1.3),
                                    child: SvgPicture.asset(
                                      "assets/icons/remove.svg",
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Container(
                                    height: Checkbox.width * 2.5,
                                    width: Checkbox.width * 2.5,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    padding: const EdgeInsets.all(
                                        Checkbox.width / 1.3),
                                    child: SvgPicture.asset(
                                      "assets/icons/Plus Icon.svg",
                                      color: Colors.orange,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(height: Checkbox.width / 4),
                      Container(
                        height: height * .123,
                        width: width,
                        // padding: EdgeInsets.only(top: height * .08),
                        // margin: const EdgeInsets.all(Checkbox.width),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                          color: Colors.white,
                        ),
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => const CompleteProfileScreen()),
                              // );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFD7643),
                              elevation: 0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(23),
                                ),
                              ),
                              fixedSize: Size(width * .7, Checkbox.width * 3.2),
                            ),
                            child: const Text(
                              "Add To Cart",
                              style: TextStyle(
                                color: Color(0xFDF1ECFF),
                                fontSize: Checkbox.width * 1.15,
                                // fontWeight: FontWeight.w700,
                                fontFamily: "muli",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
