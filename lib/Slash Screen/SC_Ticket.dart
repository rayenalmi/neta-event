import 'package:flutter/material.dart';


class SC_Ticket extends StatefulWidget {
  final AnimationController animationController;

  SC_Ticket({Key? key, required this.animationController}) : super(key: key);

  @override
  State<SC_Ticket> createState() => _SC_TicketState();
}

class _SC_TicketState extends State<SC_Ticket> {
  @override
  Widget build(BuildContext context) {
    final _introductionanimation =
    Tween<Offset>(begin: Offset(0, 0), end: Offset(1.0, 0))
        .animate(CurvedAnimation(
      parent: widget.animationController,
      curve: Interval(
        0.0,
        0.1,
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
                    'assets/SlashScreen/scticket.png',
                    width: MediaQuery.of(context).size.width * 0.60,
                    height: MediaQuery.of(context).size.height * 0.60,
                    scale: 0.60,
                  ),
                  //   SizedBox(height:MediaQuery.of(context).size.height * 0.2 ,) ,
                  Row(children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.11 ,) ,
                    Expanded(
                      child: Text(
                        "L'achat de vos ticket est devenu facile avec nous",
                        style:  TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                        softWrap: true,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(width:MediaQuery.of(context).size.width * 0.10 ,) ,
                  ],) ,
                  SizedBox(height:MediaQuery.of(context).size.height * 0.10 ,),

                  Row(children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.07 ,),
                    InkWell(
                      onTap: () {
                        // widget.animationController.animateTo(0.5);
                      },
                      child: Container(
                        height: 60,
                        padding: EdgeInsets.only(
                          left: 15.0,
                          right: 25.0,
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
                        widget.animationController.animateTo(0.5);
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
