

  // bottomSheet: Container(
  //       padding: EdgeInsets.symmetric(horizontal: 80),
  //       height: 80,
  //       color: Colors.transparent,
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           TextButton(
  //               onPressed: () => controller.jumpToPage(2), child: Text('SKIP')),
  //           SmoothPageIndicator(
  //             controller: controller,
  //             count: 2,
  //             effect: WormEffect(
  //                 spacing: 16,
  //                 dotColor: Colors.black26,
  //                 activeDotColor: Colors.teal.shade700),
  //             onDotClicked: (index) => controller.animateToPage(index,
  //                 duration: Duration(milliseconds: 500), curve: Curves.easeIn),
  //           ),
  //           TextButton(
  //               onPressed: () => controller.nextPage(
  //                   duration: Duration(milliseconds: 500),
  //                   curve: Curves.easeInOut),
  //               child: Text('NEXT')),
  //         ],
  //       ),
  //     ),



  // padding: EdgeInsets.symmetric(vertical: 5),


  //
  // Container(
  // height: 100,
  // width: MediaQuery.of(context).size.width,
  // decoration: BoxDecoration(
  // color: Color(0xFF228B22),
  // borderRadius: BorderRadius.circular(3)
  // ),
  // child: Padding(
  // padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
  // child: Stack(
  // children: [
  // Row(
  // children: [
  // CircleAvatar(
  // radius: 20,
  // backgroundImage:
  // AssetImage("assets/images/profile_img.jpg"),
  // ),
  // SizedBox(
  // width: 9,
  // ),
  // Padding(
  // padding: const EdgeInsets.only(top: 30),
  // child: Container(
  // width: 150,
  // height: 200,
  // child: Column(
  // mainAxisSize: MainAxisSize.min,
  // mainAxisAlignment: MainAxisAlignment.start,
  // crossAxisAlignment: CrossAxisAlignment.start,
  // children: [
  // Text(
  // 'Welcome back,',
  // textAlign: TextAlign.center,
  // style: TextStyle(
  // color: Colors.white,
  // fontSize: 19,
  // fontFamily: 'Aeonik',
  // fontWeight: FontWeight.w400,
  // height: 1,
  // letterSpacing: -0.41,
  // ),
  // ),
  // SizedBox(height: 5,),
  // Text(
  // 'Halimat Yetunde',
  // textAlign: TextAlign.center,
  // style: TextStyle(
  // color: Colors.white,
  // fontSize: 19,
  // fontFamily: 'Aeonik',
  // fontWeight: FontWeight.w400,
  // height: 1,
  // letterSpacing: -0.41,
  // ),
  // ),
  // ],
  // ),
  // ),
  // ),
  // SizedBox(
  // width: 35,
  // ),
  // CircleAvatar(
  // radius: 13,
  // backgroundImage: AssetImage("assets/images/flag.png"),
  // ),
  // SizedBox(
  // width: 5,
  // ),
  // Icon(
  // Icons.notifications_active,
  // size: 30,
  // color: Colors.white,
  // )
  // ],
  // ),
  // SizedBox(height: 10,),
  //
  // ],
  // ),
  // ),
  // ),