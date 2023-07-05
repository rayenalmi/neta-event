import 'package:flutter/material.dart';
import 'package:neta_event/Slash%20Screen/SC_Event.dart';

class SC_Payer extends StatefulWidget {
  final AnimationController animationController;

  SC_Payer({Key? key, required this.animationController}) : super(key: key);

  @override
  State<SC_Payer> createState() => _SC_PayerState();
}

class _SC_PayerState extends State<SC_Payer> {
  @override
  Widget build(BuildContext context) {
    final _introductionanimation =
    Tween<Offset>(begin:  Offset(1, 0), end: Offset(0, 0))
        .animate(CurvedAnimation(
      parent: widget.animationController,
      curve: Interval(
        0.2,
        0.5,
        curve: Curves.fastOutSlowIn,
      ),
    ));



    return SlideTransition(
      position: _introductionanimation,
      child: Container(
        //   color: const Color(0xffF7EBE1),
          child: Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/SlashScreen/payer.png',
                    width: MediaQuery.of(context).size.width * 0.60,
                    height: MediaQuery.of(context).size.height * 0.60,
                    scale: 0.60,
                  ),
                  //   SizedBox(height:MediaQuery.of(context).size.height * 0.2 ,) ,
                  Row(children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.08 ,) ,
                    Expanded(
                      child: Text(
                        "Payer vos tickets en toute sécurité",
                        style:  TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                        softWrap: true,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(width:MediaQuery.of(context).size.width * 0.08 ,) ,
                  ],) ,
                  SizedBox(height:MediaQuery.of(context).size.height * 0.15 ,),

                  Row(children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.08 ,),
                    InkWell(
                      onTap: () {
                        // widget.animationController.animateTo(0.5);
                      },
                      child: Container(
                        height: 60,
                        padding: EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                          top: 10.0,
                          bottom: 16,
                        ),
                        decoration:
                        new BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(13.0),
                          /* gradient: new LinearGradient(
                          colors: [Colors.purple, Colors.pink],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),*/
                        ),

                        child: Text(
                          "Passer",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                    InkWell(
                      onTap: () {
                        widget.animationController.animateTo(0.8);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SC_Event(animationController: widget.animationController,),
                          ),
                        );
                      },
                      child: Container(
                        height: 60,
                        padding: EdgeInsets.only(
                          left: 45.0,
                          right: 50.0,
                          top: 10,
                          bottom: 16,
                        ),
                        decoration:
                        new BoxDecoration(
                          borderRadius: BorderRadius.circular(13.0),
                          gradient: new LinearGradient(
                            colors: [Colors.purple, Colors.pink],
                            begin: FractionalOffset.centerLeft,
                            end: FractionalOffset.centerRight,
                          ),
                        ),
                        /*BoxDecoration(
                      borderRadius: BorderRadius.circular(38.0),
                      color: Color(0xff132137),
                    ),*/
                        child: Text(
                          "Aprés ",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width:MediaQuery.of(context).size.width * 0.08 ,),
                  ],)
                ],

              ))),
    );
  }
}


