import 'package:flutter/material.dart';

import '../Model/User.dart';

class SignUp extends StatefulWidget
{
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp>
{
  bool password1 = true ;
  bool password2 = true ;
  String ConfirmePassword="";
  late User user = User(email: '', password: '', name: '');


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.black, onPressed: () => Navigator.of(context).pop(),),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Colors.white
          ),
        ),
      ),
      body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
    child: Column(children: [
      SizedBox(height: 6,),
      Row(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 55.0,
              top: 10,
              bottom: 16,
            ),
            child: Text(
              "S'inscrire",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width *0.5,)
        ],
      ),
      SizedBox(height: 25,),
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

      SizedBox(height: 25,),
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
       //suffixIcon: Icon(Icons.keyboard_arrow_down),
      SizedBox(height: 25,),
      Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width *0.9,
          child: TextField(
            obscureText: password1, // hide letters
            cursorHeight: 20,
            autofocus: false,
            controller: TextEditingController(text: user.password),
            onChanged: (value) {
              user.password = value;
            },            decoration: InputDecoration(
              labelText: 'Mot de passe',
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

      SizedBox(height: 25,),
      Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width *0.9,
          child: TextField(
            obscureText: password2, // hide letters
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
      SizedBox(height: 30,),
      InkWell(
        onTap: () {
        },
        child: Container(
          height: 60,
          padding: EdgeInsets.only(
            left: 80.0,
            right: 80.0,
            top: 17,
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
            "S'INSCRIRE",
            style: TextStyle(
              fontSize: 21,
              color: Colors.white,
            ),
          ),
        ),
      ),
      SizedBox(height: 25,),
      Center(child:
        Text("OU",
          style: TextStyle(
          fontSize: 18,
          color: Colors.grey,
        ),
        ),),
      SizedBox(height: 10,),
      Center(child:SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: InkWell(
          onTap: () {
          },
          child: Container(
              height: 60,
              padding: EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                top: 10,
                bottom: 5,
              ),
              decoration:
              new BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.circular(13.0),
              ),

              child:Row(children: [
                Image.asset(
                  'assets/SlashScreen/google.png',
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.1 ,
                  //scale: 0.1,
                ),
                Text(
                  "Se conncter avec Google",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],)
          ),
        ),
      ),),
      SizedBox(height: 10,),
      Center(child:SizedBox(
        width: MediaQuery.of(context).size.width * 0.72,
        child: InkWell(
          onTap: () {
          },
          child: Container(
              height: 60,
              padding: EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                top: 7,
                bottom: 2,
              ),
              decoration:
              new BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.circular(13.0),
              ),

              child:Row(children: [
                Image.asset(
                  'assets/SlashScreen/Facebook.png',
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.1 ,
                  //scale: 0.1,
                ),
                Text(
                  " Se conncter avec Facebook",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],)
          ),
        ),
      ),),
      SizedBox(height: 15,),
           SizedBox(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center ,//Center Row contents horizontally,
            crossAxisAlignment: CrossAxisAlignment.center ,//Center Row contents vertically,
            children: [
            Text(
              " Vous avez déja un compte",
              style: TextStyle(
                fontSize: 13,
                color: Colors.black,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/SignIn');
              },
              child: Text(
                " Se connecter",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
            ),
          ],) ,
          ),
      SizedBox(height: 100,),

    ],),),
    );
  }
}