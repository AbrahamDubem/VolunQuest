import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List imgs = [
    "Frame.svg",
    "Frame(1).svg",
    "Frame(2).svg",
    "Frame(3).svg",
    "Frame(4).svg",
    "Frame(5).svg",
  ];

  List picture = [
    "bin_tile.jpg",
    "class_children.jpg",
    "cross.jpg",
    "house.jpg",
  ];

  List title = [
    "Join the Green Movement \nwith EcoLife Hub",
    "Teach Garki Kids How To \nUse Computers",
    "Win Souls in collaboration\nwith Faithful Central",
    "Operation Provide Shelter \nalong Ajah/Epe Express",
  ];

  List color = [
    const Color(0x334CAF50),
    const Color(0x33FF6F61),
    const Color(0x338B4513),
    const Color(0x33800080),
    const Color(0x33FEA800),
    const Color(0x33FEA800)
  ];

  List titles = [
    "Recycle",
    "Ocean",
    "Education",
    "Religion",
    "Housing",
    "Person",
  ];

  List box =[
    "Recycle",
    "Education",
    "Religion",
    "Housing"
  ];

  List boxpic =[
    "Frame.svg",
    "Frame(2).svg",
    "Frame(3).svg",
    "Frame(4).svg",
  ];

  List boxcolor =[
    const Color(0x334CAF50),
    const Color(0x338B4513),
    const Color(0x33800080),
    const Color(0x33FEA800),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    'VolunQuest',
                    style: TextStyle(
                      color: Color(0xFF228B22),
                      fontSize: 24.48,
                      fontFamily: 'Aeonik',
                      fontWeight: FontWeight.w700,
                      height: 0.04,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Stack(
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: const Color(0xFF228B22),
                          borderRadius: BorderRadius.circular(3)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(
                                      "assets/images/profile_img.jpg"),
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Container(
                                    width: 150,
                                    height: 200,
                                    child: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Welcome back,',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontFamily: 'Aeonik',
                                            fontWeight: FontWeight.w400,
                                            height: 0.1,
                                            letterSpacing: 0.2,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          'Halimat Yetunde',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19,
                                            fontFamily: 'Aeonik',
                                            fontWeight: FontWeight.w400,
                                            height: 1,
                                            letterSpacing: -0.20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 60,
                                ),
                                const CircleAvatar(
                                  radius: 13,
                                  backgroundImage:
                                      AssetImage("assets/images/flag.png"),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.notifications_active,
                                  size: 30,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  width: 1.0, color: Colors.grey.shade300)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 310,
                                child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.search,
                                          size: 20,
                                          color: Colors.black38,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              hintText: "Search community",
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                        Transform(
                                          transform: Matrix4.identity()..translate(60.0,-22.0)..rotateZ(1.57),
                                          child: Container(
                                            width: 46,
                                            decoration: const ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 0.50,
                                                  strokeAlign: BorderSide.strokeAlignInside,
                                                  color: Color(0x8E8E8E8E),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 0, left: 25),
                                          child: Icon(
                                            Icons.filter_alt_sharp,
                                            color: Colors.grey.shade300,
                                            size: 18,
                                          ),
                                        )
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Volunteer Category',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Aeonik',
                          fontWeight: FontWeight.w700,
                          height: 1,
                          letterSpacing: -0.41,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Aeonik',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: -0.41,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 85,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 150,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 10),
                                  width: 50,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: (color[index]),
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        width: 1.0,
                                        color: (color[index]),
                                      ),
                                      boxShadow: [
                                        const BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 10,
                                            spreadRadius: 2)
                                      ]),
                                  child: Stack(
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          child: ClipRRect(
                                            child: SvgPicture.asset(
                                                "assets/images/${imgs[index]}"),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  titles[index],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: (color[index]),
                                      fontFamily: 'Aeonik'),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Join This Volunteer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Aeonik',
                          fontWeight: FontWeight.w700,
                          height: 1,
                          letterSpacing: -0.41,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Aeonik',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: -0.41,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18,right: 15,),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 176,
                        ),
                        itemCount: picture.length,
                        itemBuilder: (_, index) {
                          return Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 1.0, color: Colors.grey.shade100)
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //       color: Colors.black12,
                                  //       blurRadius: 10,
                                  //       spreadRadius: 2)
                                  // ]
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius: const BorderRadius.only(
                                                  topLeft: Radius.circular(8),
                                                  topRight: Radius.circular(8)),
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/images/${picture[index]}"),
                                                height: 100,
                                                width: double.infinity,
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    title[index],
                                                    style: const TextStyle(
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.black,
                                                        fontFamily: 'Poppins'),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Container(
                                  height: 15,
                                  width: 52,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          width: 1.0, color: (boxcolor[index]))),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/${boxpic[index]}",),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 3,right: 0.5),
                                        child: Text(
                                          box[index],
                                          style: TextStyle(
                                              fontSize: 5,
                                              fontWeight: FontWeight.bold,
                                              color: (color[index]),
                                              fontFamily: 'Aeonik'),
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                              )
                            ],
                          );
                        }),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
