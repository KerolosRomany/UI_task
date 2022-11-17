import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

import '../../components.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff000557),
        centerTitle: true,
        title: Text('Modychat'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),

        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xff000557),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_call),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70),bottomRight: Radius.circular(70)),
              child: Container(
                color: Color(0xff000557),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade500.withOpacity(0.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmallButton(onPressed: () {}, text: 'Chats'),
                        SmallButton(onPressed: () {}, text: 'Status'),
                        SmallButton(onPressed: () {}, text: 'Calls'),
                      ],
                    ),
                  ),
                ),
              ),
              // clipper: TheCustomClipper(),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'All Calls',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Friends',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.filter_list_outlined))
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  buildContactCard(
                    name: 'Joe Root',
                    date: '(3)15 July. 1:30 pm',
                    iconColor: Colors.yellow.shade800,
                    picture: 'assets/images/person.jpg',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  buildContactCard(
                    name: 'Navel Joard',
                    date: '15 July 7:00 pm',
                    iconColor: Colors.blue.shade600,
                    picture: 'assets/images/person.jpg',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  buildContactCard(
                    name: 'James Anderson',
                    date: '17 July. 10:30 am',
                    iconColor: Colors.redAccent.shade400,
                    picture: 'assets/images/person.jpg',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'See more ',
                          style: TextStyle(color: Colors.red),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Colors.red,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Group Message',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  buildContactCard(
                    name: 'Meetup 2020',
                    date: '(3)12 July 10:25 pm',
                    iconColor: Colors.blue.shade600,
                    picture: 'assets/images/person.jpg',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  buildContactCard(
                    name: 'dotpixel-agency',
                    date: '17 July. 10:30 am',
                    iconColor: Colors.redAccent.shade400,
                    picture: 'assets/images/person.jpg',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'See more ',
                          style: TextStyle(color: Colors.red),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Colors.red,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}class TheCustomClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 3);
    var firstControlPoint = Offset(0, size.height / 3.5); // adjust the height to move start of the first curve
    var firstEndPoint = Offset(size.width / 4.2, size.height / 3.5 + 10); // adjust the width to add the end controll point and height to move end of the first curve

    var secControlPoint = Offset(size.width, size.height / 2.8); // adjust the height to move end of the second curve
    var secEndPoint = Offset(size.width, size.height / 3 - 40); // adjust the width to add the right first controll point and height to move start of the second curve

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(
        secControlPoint.dx, secControlPoint.dy, secEndPoint.dx, secEndPoint.dy);

    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}