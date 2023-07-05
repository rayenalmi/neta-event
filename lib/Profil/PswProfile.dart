import 'package:flutter/material.dart';

class PswProfile extends StatefulWidget {

  PswProfile({Key? key , this.SaveEdit}) : super(key: key);
  final Function()? SaveEdit;
  @override
  State<PswProfile> createState() => _PswProfileState();
}

class _PswProfileState extends State<PswProfile>  {
  bool password1 = true ;
  bool password2 = true ;
  bool password3 = true ;
  String ConfirmePassword="";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text("Les étapes à suivre :",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text("Les étapes à suivre :",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text("1- Inserer l’ancien mot de passe",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text("Reinserer le nouveau mot de passe",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 20,),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width *0.9,
            child: TextField(
              obscureText: password1, // hide letters
              cursorHeight: 20,
              autofocus: false,
              controller: TextEditingController(text: ""),
              onChanged: (value) {
               // user.password = value;
              },            decoration: InputDecoration(
              labelText: 'Ancien mot de passe',
              labelStyle: TextStyle(
                color: Colors.black54,
              ),
              hintText: "Mot de passe",
              prefixIcon: Icon(Icons.lock_outline , color: Colors.grey,),
              suffixIcon: InkWell(
                  onTap: ()
                  {
                    setState(() { this.password1 = !this.password1 ; });
                  },
                  child: password1 ? Icon(Icons.visibility_off_rounded , color: Colors.grey,) : Icon(Icons.visibility_rounded , color: Colors.grey,) //Icon(Icons.visibility_rounded , color: Colors.grey,), //visibility_off_rounded
              ),
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
        SizedBox(height: 15,),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width *0.9,
            child: TextField(
              obscureText: password2, // hide letters
              cursorHeight: 20,
              autofocus: false,
              controller: TextEditingController(text: ""),
              onChanged: (value) {
                // user.password = value;
              },            decoration: InputDecoration(
              labelText: 'Nouveau mot de passe',
              labelStyle: TextStyle(
                color: Colors.black54,
              ),
              hintText: "Mot de passe",
              prefixIcon: Icon(Icons.lock_outline , color: Colors.grey,),
              suffixIcon: InkWell(
                  onTap: ()
                  {
                    setState(() { this.password1 = !this.password1 ; });
                  },
                  child: password1 ? Icon(Icons.visibility_off_rounded , color: Colors.grey,) : Icon(Icons.visibility_rounded , color: Colors.grey,) //Icon(Icons.visibility_rounded , color: Colors.grey,), //visibility_off_rounded
              ),
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
        SizedBox(height: 15,),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width *0.9,
            child: TextField(
              obscureText: password3, // hide letters
              cursorHeight: 20,
              autofocus: false,
              controller: TextEditingController(text: ConfirmePassword),
              onChanged: (value) {
                ConfirmePassword = value;
              },            decoration: InputDecoration(
              labelText: 'Confirmer mot de passe',
              labelStyle: TextStyle(
                color: Colors.black54,
              ),
              hintText: "Confirmer mot de passe",
              prefixIcon: Icon(Icons.lock_outline , color: Colors.grey,),
              suffixIcon: InkWell(
                  onTap: ()
                  {
                    setState(() { this.password2 = !this.password2 ; });
                  },
                  child: password2 ? Icon(Icons.visibility_off_rounded , color: Colors.grey,) : Icon(Icons.visibility_rounded , color: Colors.grey,) //Icon(Icons.visibility_rounded , color: Colors.grey,), //visibility_off_rounded
              ),
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

      ],),
    );
  }
}