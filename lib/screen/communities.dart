import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Communities extends StatefulWidget {
  const Communities({super.key});

  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
  List pictures = [
    "green.jpg",
    "lord.jpg",
  ];

  List titles = [
    "Join the Green Movement \nwith EcoLife Hub",
    "Win Souls in collaboration with\nFaithful Central",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(physics: const AlwaysScrollableScrollPhysics(), children: [
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: const Color(0xFF228B22),
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.white,
                      ),
                      Text(
                        'Communities',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Aeonik',
                          fontWeight: FontWeight.w700,
                          height: 1,
                          letterSpacing: -0.41,
                        ),
                      ),
                      Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 250,
                    ),
                    itemCount: pictures.length,
                    itemBuilder: (_, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 1.0, color: Colors.grey.shade300),
                            boxShadow: [
                              const BoxShadow(
                                  color: Colors.white38,
                                  blurRadius: 10,
                                  spreadRadius: 2)
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16)),
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/${pictures[index]}"),
                                        height: 170,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            titles[index],
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
                      );
                    }),
              ),
              const SizedBox(height: 1),
              const Divider(
                thickness: 1.0,
              ),
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/Frame(5).svg"),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          'Religion',
                          style: TextStyle(
                            color: Color(0xFF800080),
                            fontSize: 11.81,
                            fontFamily: 'Aeonik',
                            fontWeight: FontWeight.w400,
                            height: 0.16,
                            letterSpacing: -0.41,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Walk with Faithful Central',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontFamily: 'Aeonik',
                                    fontWeight: FontWeight.w400,
                                    height: 1,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                                SvgPicture.asset("assets/images/Frame(10).svg"),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset("assets/images/Frame(6).svg"),
                                const Text(
                                  'Admiralty Way, Lekki',
                                  style: TextStyle(
                                    color: Color(0xFF8E8E8E),
                                    fontSize: 11.81,
                                    fontFamily: 'Aeonik',
                                    fontWeight: FontWeight.w400,
                                    height: 0.16,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const Text(
                                  '1hr ago . ',
                                  style: TextStyle(
                                    color: Color(0xFF8E8E8E),
                                    fontSize: 11.81,
                                    fontFamily: 'Aeonik',
                                    fontWeight: FontWeight.w400,
                                    height: 0.16,
                                    letterSpacing: -0.41,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SvgPicture.asset("assets/images/Frame(9).svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/bible.jpg'),
                                fit: BoxFit.cover)))
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/Frame(7).svg"),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          'Education',
                          style: TextStyle(
                            color: Color(0xff8b4513),
                            fontSize: 11.81,
                            fontFamily: 'Aeonik',
                            fontWeight: FontWeight.w400,
                            height: 0.16,
                            letterSpacing: -0.41,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Imperial Gate Foundation',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontFamily: 'Aeonik',
                                    fontWeight: FontWeight.w400,
                                    height: 1,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                                SvgPicture.asset("assets/images/Frame(8).svg"),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset("assets/images/Frame(6).svg"),
                                const Text(
                                  'Tolu Street, Ajegunle',
                                  style: TextStyle(
                                    color: Color(0xFF8E8E8E),
                                    fontSize: 11.81,
                                    fontFamily: 'Aeonik',
                                    fontWeight: FontWeight.w400,
                                    height: 0.16,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const Text(
                                  '1hr ago . ',
                                  style: TextStyle(
                                    color: Color(0xFF8E8E8E),
                                    fontSize: 11.81,
                                    fontFamily: 'Aeonik',
                                    fontWeight: FontWeight.w400,
                                    height: 0.16,
                                    letterSpacing: -0.41,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SvgPicture.asset("assets/images/Frame(9).svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/hands.jpg'),
                                fit: BoxFit.cover)))
                  ],
                ),
              ),
            ],
          ),
        )),
      ]),
    );
  }
}
