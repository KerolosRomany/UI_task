import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/screens/calls/calls_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage('assets/images/firstscreen.png',),height: MediaQuery.of(context).size.height/2,),
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70),topRight: Radius.circular(70)),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height/2,
                  color: Color(0xff000557),
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        Text('Let\'s connect with each other',style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,fontSize: 27,
                        ), textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('A message is a discrete communication intended by the source consumption',style: TextStyle(
                          color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 15,
                        ), textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                               color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: MaterialButton(
                              onPressed: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CallsScreen()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Let\'s Start    ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                  Icon(Icons.chevron_right_outlined, color: Colors.white,size: 20,),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ),
                ),
                // clipper: TheCustomClipper(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
