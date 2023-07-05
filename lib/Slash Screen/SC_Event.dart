import 'package:flutter/material.dart';

class SC_Event extends StatefulWidget
{
  final AnimationController animationController;
  SC_Event({Key? key , required this.animationController}) : super(key:key);

  @override
  State<SC_Event> createState() => _SC_EventState();
}


class _SC_EventState extends State<SC_Event>
{
  @override
  Widget build(BuildContext context) {
    final _introductionanimation =
    Tween<Offset>(begin: Offset(0, 0), end: Offset(0.0, 0.0))
        .animate(CurvedAnimation(
      parent: widget.animationController,
      curve: Interval(
        0.6,
        0.9,
        curve: Curves.fastOutSlowIn,
      ),
    ));


    return
      new Scaffold(
        //   color: const Color(0xffF7EBE1),
          body: Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/SlashScreen/event.png',
                    width: MediaQuery.of(context).size.width * 0.60,
                    height: MediaQuery.of(context).size.height * 0.60,
                    scale: 0.60,
                  ),
                  //   SizedBox(height:MediaQuery.of(context).size.height * 0.2 ,) ,
                  Row(children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.08 ,) ,
                    Expanded(
                      child: Text(
                        "Des événement tout au long de l'année",
                        style:  TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                        softWrap: true,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(width:MediaQuery.of(context).size.width * 0.08 ,) ,
                  ],) ,
                  SizedBox(height:MediaQuery.of(context).size.height * 0.15 ,),

                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/BeforeInscription');
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
                        child: Text(
                          "Commencer ",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],

              ))
    );
  }
}