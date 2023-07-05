import 'package:flutter/material.dart';
import 'package:neta_event/Slash%20Screen/SC_Event.dart';
import 'package:neta_event/Slash%20Screen/SC_Payer.dart';

import 'SC_Ticket.dart';

class Group_SC extends StatefulWidget {
  const Group_SC({Key? key}) : super(key: key);

  @override
  _Group_SC_State createState() => _Group_SC_State();
}

class _Group_SC_State extends State<Group_SC> with TickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController?.animateTo(0.0);

    super.initState();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Color(0xffF7EBE1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SC_Ticket(animationController: _animationController!),
            SC_Payer(animationController: _animationController!)
          //  SC_Event(animationController: _animationController!),
          ],
        ),
      ),
    );
  }
}
