import 'package:flutter/material.dart';

import '../Model/User.dart';

class DonneeProfile extends StatefulWidget {

  DonneeProfile({Key? key , this.SaveEdit}) : super(key: key);
  final Function()? SaveEdit;

  @override
  State<DonneeProfile> createState() => _DonneeProfileState();
}

class _DonneeProfileState extends State<DonneeProfile>  {

  late User user = User(email: 'Sany07@hotmail.fr', password: '', name: 'Sanonogo Yaya');

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children :
        [
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width *0.9,
              child: TextField(

                cursorHeight: 20,
                autofocus: false,
                controller: TextEditingController(text: user.name),
                onChanged: (value) {
                  user.name = value;
                },
                decoration: InputDecoration(
                  labelText: "Nom d'utilisateur",
                  labelStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  hintText: "Nom d'utilisateur",
                  prefixIcon: Icon(Icons.person , color: Colors.grey,),
                  // suffixIcon: Icon(Icons.keyboard_arrow_down), end of the Input Field
                  contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 0.0,
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.purple, width: 1),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 19,),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width *0.9,
              child: TextField(
                cursorHeight: 20,
                autofocus: false,
                controller: TextEditingController(text: user.email),
                onChanged: (value) {
                  user.email = value;
                },
                decoration: InputDecoration(
                  labelText: 'Adresse e-mail',
                  labelStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  hintText: "Adresse e-mail",
                  prefixIcon: Icon(Icons.mail_outline_outlined , color: Colors.grey,),
                  // suffixIcon: Icon(Icons.keyboard_arrow_down), end of the Input Field
                  contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 0.0,
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.purple, width: 1),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 19,),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width *0.9,
              child: TextField(
                cursorHeight: 20,
                autofocus: false,
                controller: TextEditingController(text: "Abidjan"),
                onChanged: (value) {
                  user.email = value;
                },
                decoration: InputDecoration(
                  labelText: 'Localisation',
                  labelStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  hintText: "",
                  prefixIcon: Icon(Icons.location_on , color: Colors.grey,),
                  // suffixIcon: Icon(Icons.keyboard_arrow_down), end of the Input Field
                  contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 0.0,
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.purple, width: 1),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 19,),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width *0.9,
              child: TextField(
                cursorHeight: 20,
                autofocus: false,
                controller: TextEditingController(text: "+225 07 07 07 06 06"),
                onChanged: (value) {
                  user.email = value;
                },
                decoration: InputDecoration(
                  labelText: 'Phone',
                  labelStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  hintText: "",
                  prefixIcon: Icon(Icons.location_on , color: Colors.grey,),
                  // suffixIcon: Icon(Icons.keyboard_arrow_down), end of the Input Field
                  contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 0.0,
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.purple, width: 1),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.47),
            InkWell(
              onTap: () {
                widget.SaveEdit!();
              },
              child: Container(
                height: 50,
                padding: EdgeInsets.only(
                  left: 40.0,
                  right: 40.0,
                  top: 12,
                  bottom: 5,
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
                  "Appliquer",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],),
          SizedBox(height: 50,),
        ]
      ),
    );
  }
}