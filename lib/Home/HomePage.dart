import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:neta_event/Home/navbar.dart';
import 'package:neta_event/Profil/Profil.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  _HomePage_State createState() => _HomePage_State();
}

class _HomePage_State extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
        child: Drawer(
          child: ListView(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Material(
                    color: Colors.black,
                    elevation: 0,
                    shape: CircleBorder(),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color: Color.fromARGB(0, 0, 0, 0), width: 0),
                          shape: BoxShape.circle,
                        ),
                        child: Ink.image(
                          image: AssetImage("assets/SlashScreen/saidou.jpg"),
                          height: 75,
                          width: 75,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 1,
                            right: 1), //apply padding to some sides only
                        child: Text(
                          "Saidou Sawadogo",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 5,
                            left: 0,
                            right: 1), //apply padding to some sides only
                        child: Text(
                          "Client ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFBCBCBC),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 40,),
              Padding(
                padding:  EdgeInsets.only(left: 30),
                child: const ListTile(
                  leading: Icon(Icons.person_outline_rounded, color: Colors.black,),
                  title: Text('Profile', style: TextStyle(fontSize: 18,  ),),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 30),
                child: const ListTile(
                  leading: Icon(Icons.calendar_today_outlined, color: Colors.black,),
                  title: Text('Evènements', style: TextStyle(fontSize: 18,  ),),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 30),
                child: const ListTile(
                  leading: Icon(Icons.bookmark_outline, color: Colors.black,),
                  title: Text('Favoris', style: TextStyle(fontSize: 18,  ),),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 30),
                child: const ListTile(
                  leading: Icon(Icons.email_outlined, color: Colors.black,),
                  title: Text('Contacter-nous', style: TextStyle(fontSize: 18,  ),),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 30),
                child: const ListTile(
                  leading: Icon(Icons.help_outline_outlined, color: Colors.black,),
                  title: Text('Aide & FAQs', style: TextStyle(fontSize: 18,  ),),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 30),
                child: const ListTile(
                  leading: Icon(Icons.handshake, color: Colors.black,),
                  title: Text('Don', style: TextStyle(fontSize: 18,  ),),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 30),
                child: const ListTile(
                  leading: Icon(Icons.handshake, color: Colors.black,),
                  title: Text('Tontine', style: TextStyle(fontSize: 18,  ),),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 30),
                child: const ListTile(
                  leading: Icon(Icons.calendar_today_outlined, color: Colors.black,),
                  title: Text('Enquète', style: TextStyle(fontSize: 18,  ),),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 30),
                child: const ListTile(
                  leading: Icon(Icons.login_outlined, color: Colors.black,),
                  title: Text('Se deconnecter', style: TextStyle(fontSize: 18,  ),),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        toolbarHeight:
            MediaQuery.of(context).size.height * 0.19, //set your height
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              left: 15.0,
              right: 10.0,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.pink],
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
              ),
            ), // set your color
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        _key.currentState!.openDrawer();
                      },
                      child: Image.asset(
                        "assets/SlashScreen/menus.png",
                        width: 35,
                        height: 35,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.20,
                    ),
                    Column(
                      children: const [
                        Text(
                          "Hey Bienvenue..",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Saidou Sawadogo",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.notifications_none,
                          color: Colors.white, size: 30),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        _key.currentState!.openDrawer();
                      },
                      child: const Icon(Icons.search,
                          color: Colors.white, size: 30),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Container(
                      height: 22,
                      child: Text(""),

                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    const SizedBox(
                      width: 150,
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Recherche...',
                          hintStyle:
                              TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Container(
                        height: 40,
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          top: 10,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Color(0xFF701D53),
                        ),
                        child: Row(
                            children: [
                            Image.asset(
                              "assets/SlashScreen/sort.png",
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Filtres",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body : Stack(
        children: <Widget>[
          Home(MediaQuery.of(context).size.width),
          bottomBar(context),
        ],
      ),
    );
  }
}

Widget Home(var size)
{
 return SingleChildScrollView(
    padding: EdgeInsets.only(left: 33),
    child: Column ( children: [
      SizedBox(height: 30,),
      Row(
        children: [
          Text(
            "Excusives",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF120D26),
            ),),
          SizedBox(width: 160,),
          Text(
            "Voir tout",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF747688),
            ),),
          Icon(Icons.arrow_right , size: 25,color: Color(0xFF747688),),
        ],
      ),
      SizedBox(height: 15,),
      SingleChildScrollView(
        //changing scroll direction into horizontal
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            getCardEvent(1),
            SizedBox(width: 10,),
            getCardEvent(2),
            SizedBox(width: 10,),
            getCardEvent(3),
            SizedBox(width: 10,),
            getCardEvent(4),
            SizedBox(width: 10,),
            getCardEvent(5),
            SizedBox(width: 10,),
            getCardEvent(6),
          ],
        ),),
      SizedBox(height: 30,),
      Row(
        children: [
          Text(
            "Catégories",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF120D26),
            ),),
          SizedBox(width: 160,),
          Text(
            "Voir tout",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF747688),
            ),),
          Icon(Icons.arrow_right , size: 25,color: Color(0xFF747688),),
        ],
      ),
      SizedBox(height: 15,),
      SingleChildScrollView(
        //changing scroll direction into horizontal
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            getCategories(1),
            SizedBox(width: 10,),
            getCategories(2),
            SizedBox(width: 10,),
            getCategories(3),
            SizedBox(width: 10,),
            getCategories(4),
            SizedBox(width: 10,),
            getCategories(5),
            SizedBox(width: 10,),
            getCategories(6),
          ],
        ),),
      SizedBox(height: 30,),
      Row(
        children: [
          Text(
            "Evènement",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF120D26),
            ),),
          SizedBox(width: size *0.4,),
          Text(
            "Voir tout",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF747688),
            ),),
          Icon(Icons.arrow_right , size: 25,color: Color(0xFF747688),),
        ],
      ),
      SizedBox(height: 15,),
      SingleChildScrollView(
        //changing scroll direction into horizontal
        scrollDirection: Axis.horizontal,

        child: Column(
          children: <Widget>[
            getEvents(1,size),
            SizedBox(height: 20,),
            getEvents(2,size),
            SizedBox(height: 20,),
            getEvents(3,size),
            SizedBox(height: 20,),
            getEvents(4,size),

          ],
        ),),
      Row(
        children: [
          Text(
            "Packs",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF120D26),
            ),),
          SizedBox(width: size *0.52,),
          Text(
            "Voir tout",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF747688),
            ),),
          Icon(Icons.arrow_right , size: 25,color: Color(0xFF747688),),
        ],
      ),
      SizedBox(height: 15,),
      SingleChildScrollView(
        //changing scroll direction into horizontal
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            getPacks(1),
            SizedBox(width: 10,),
            getPacks(2),
            SizedBox(width: 10,),
            getPacks(3),
            SizedBox(width: 10,),
          ],
        ),),
      Row(
        children: [
          Text(
            "Tontine",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF120D26),
            ),),
          SizedBox(width: size *0.52,),
          Text(
            "Voir tout",
              style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF747688),
            ),),
          Icon(Icons.arrow_right , size: 25,color: Color(0xFF747688),),
        ],
      ),
      SizedBox(height: 15,),
      SingleChildScrollView(
        //changing scroll direction into horizontal
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            getTontine(),
            SizedBox(width: 10,),
            getTontine(),
            SizedBox(width: 10,),
            getTontine(),
            SizedBox(width: 10,),
          ],
        ),),
      SizedBox(height: 250,),
    ], ),
  );
}

Widget getEvents(int  i, var size)
{
  return
  Container(
    padding: EdgeInsets.only(
    right: 90,
  ),
    child:Container(
      height: 125,
      width: size * 0.85,
      padding: EdgeInsets.only(
        left: 30.0,
        top: 9,
        bottom: 10,
      ),
      decoration:
      new BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: Colors.white,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child:
            Image.asset(
              "assets/events/$i.png",
              width: 79,
              height: 93,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 5.0,
              right: 5.0,
              top: 10,
              bottom:5,
            ),
            child: Column(
              children: [
                Text(
                  "1ER MAY-LUN -2:00 PM",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5669FF),
                  ),),
                SizedBox(height: 3,),
                Expanded(
                  child: Container(
                    width: size *0.4,
                    child: Text(
                      "Payer vos tickets en toute sécurité",
                      style:  TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black),
                      softWrap: true,
                      maxLines: 3,
                    ),
                  )
                  ,),
                Row(
                  children: [
                    Icon(Icons.location_on_rounded,size: 20,color:  Color(0xFF747688),),
                    SizedBox(width: 10,),
                   Container(
                     width: size *0.4,
                        child: Text(
                          "Radius Gallery • Santa Cruz",
                          style:  TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold, color: Color(0xFF747688),),
                          softWrap: true,
                          maxLines: 3,
                        ),
                      ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ) ,
  );

}

Widget getCategories(int  i)
{
  return Stack(
      alignment: Alignment.centerLeft,
      children: <Widget>[
        Container(
          child:  ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child:
            Image.asset(
              "assets/categories/$i.jpg",
               width: 218,
               height: 131,
            ),
          ),
        ),
        Container(
          width: 120,
          padding: EdgeInsets.only(
            left: 23.0,
            top: 10.0,
          ),
          child:Text(
            "Musique & chants",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),),
      ]);
}


Widget getPacks(int i)
{
  String pack="";
  String namepack="";
  if(i==1)
  {
    pack = "assets/SlashScreen/packbronze.png";
    namepack="Bronze";
  }
  else if (i==2)
  {
    pack = "assets/SlashScreen/packsilver.png";
    namepack="Silver";
  }
  else
  {
    pack = "assets/SlashScreen/packgold.png";
    namepack="Gold";
  }

  {
    return Container(
        height: 270,
        width: 244,
        decoration:
        new BoxDecoration(
          borderRadius: BorderRadius.circular(13.0),
          color: Colors.transparent,
        ),
        child: Column (
          children: [
            Stack(
              children: <Widget>[
                Container(
                  child:  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child:
                    Image.asset(
                      pack,
                      height : 270,
                      width: 244,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 65,
                          top: 25,
                          //right: 50.0,
                        ),
                        child:     Text("Pack $namepack", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                      ),
                    ],),
                    SizedBox(height: 20,),

                    Row(children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 65,
                          top: 10,
                          //right: 50.0,
                        ),
                        child: Text("10 Fcfa", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                      ),
                    ],),

                    SizedBox(height: 15,),
                    Row(children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 45,
                          top: 1,
                          //right: 50.0,
                        ),
                        child: Icon(Icons.check_circle_sharp, color : Colors.black),
                      ),
                      SizedBox(width: 15,),
                      Text("3 évenèments" , style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    ],),

                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 45,
                            top: 1,
                            //right: 50.0,
                          ),
                          child: Icon(Icons.check_circle_sharp, color : Colors.black),
                        ),
                        SizedBox(width: 15,),
                        Text("7 jours de publicité" , style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                      ],),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 21,
                                right: 21,
                                top : 5,
                                bottom: 5,
                              ),
                              height: 28,
                              decoration:
                              new BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: Color(0xFFFFFFFF).withOpacity(0.63),
                              ),
                              child: Text(
                                "Acheter",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],),
                  ],
                ),
              ],
            ),

          ],
        )
    );
  }
}


Widget getTontine()
 {
    return Container(
        decoration:
        new BoxDecoration(
          borderRadius: BorderRadius.circular(13.0),
          color: Colors.transparent,
        ),
        child: Column (
          children: [
            Stack(
              children: <Widget>[
                Container(
                  child:  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child:
                    Image.asset(
                      "assets/tontine/s1.png",
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 35,
                    top:100,
                  ),
                  child: Text(
                    "Mariage",
                    style: TextStyle(
                      fontSize: 13,
                      //fontWeight: FontWeight.bold,
                      color: Color(0xFFE28541),
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 34,
                    top:120,
                  ),
                  child: Text(
                    "Lorem espium anturium ka",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 34,
                    top:150,
                  ),
                  child: Text(
                    "500 Fcfa Chaque trimestre",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF120D26),
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 34,
                    top:170,
                  ),
                  child: Text(
                    "12 participants",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF120D26),
                    ),),
                ),

                Container(
                  padding: EdgeInsets.only(
                    left: 120,
                    top:190,
                  ),
                  child: InkWell(
                    onTap: () {
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 6.0,
                        right: 6.0,
                        top: 10,
                        bottom: 10,
                      ),
                      decoration:
                      new BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        gradient: new LinearGradient(
                          colors: [Colors.purple, Colors.pink],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: Text(
                        "Participer ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ],
        )
    );
  }


Widget getCardEvent(int i)
{
  return Container(
      height: 255,
      width: 237,
      padding: EdgeInsets.only(
        left: 9.0,
        right: 9.0,
        top: 10,
        //bottom: 5,
      ),
      decoration:
      new BoxDecoration(
        borderRadius: BorderRadius.circular(13.0),
        color: Colors.white,
      ),
      child: Column (
        children: [
          Stack(
            children: <Widget>[
              Container(
                child:  ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child:
                  Image.asset(
                    "assets/events/$i.png",
                    width: 218,
                    height: 131,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 23.0,
                  top: 10.0,
                ),
                child: Row(
                  children: [
                    Container(
                        height: 45,
                        width: 45,
                        padding: EdgeInsets.only(
                          left: 6.0,
                          right: 6.0,
                          top: 3,
                          bottom: 1.8,
                        ),
                        decoration:
                        new BoxDecoration(
                          color: Colors.white.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                        child:Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GradientText(
                              '10',
                              style: const TextStyle(fontSize: 13,fontWeight: FontWeight.bold,),

                            ),
                            GradientText(
                              'Mai',
                              style: const TextStyle(fontSize: 13,fontWeight: FontWeight.bold,),

                            ),
                          ],
                        )
                    ),
                    SizedBox(width: 108,),
                    Container(
                        height: 30,
                        width: 30,
                        padding: EdgeInsets.all(2),
                        decoration:
                        new BoxDecoration(
                          color: Colors.white.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GradientIcon(
                              Icons.bookmark_outlined,
                              20.0,
                            ),
                          ],
                        )
                    ),
                  ],),
              )
            ],
          ),
          SizedBox(height: 14,),
          Padding(padding: EdgeInsets.only(
            left: 7,
            right: 25,
            top: 2,
            bottom: 2,
          ),
            child: Text(
              "Kanté Show Gabon ...",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 14,),
          Padding(
            padding: EdgeInsets.only(
              left: 7,
              right: 10,
              top:2,
              bottom: 2,
            ),
            child: Row(children: [
              GradientIcon(
                Icons.star,
                15.0,
              ),
              GradientIcon(
                Icons.star,
                15.0,

              ),
              GradientIcon(
                Icons.star,
                15.0,

              ),
              GradientIcon(
                Icons.star,
                15.0,

              ),
              GradientIcon(
                Icons.star,
                15.0,
              ),
              SizedBox(width: 37,),
              Text(
                "Prix: 1000 fcfa",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],),
          ),
          SizedBox(height: 5,),
          Padding(padding: EdgeInsets.only(
            left: 7,
            right: 25,
            top: 2,
            bottom: 2,
          ),
              child: Row(
                children: [
                  Icon(Icons.location_on_sharp,color: Colors.grey, ),
                  Text(
                    "Gabon",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),),
                ],)
          ),
        ],
      )
  );
}

class TabIconData {
  TabIconData({
   // this.imagePath = null ,
    this.icon,
    this.selectedIcon,
    this.index = 0,
    this.isSelected = false,
    this.animationController,
  });

  Widget? icon;
  Widget? selectedIcon;
  bool isSelected;
  int index;
  AnimationController? animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      icon: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(Icons.search, color : Color(0xFFDADADA)),
        Text(
          "Decouvrir",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],),
      selectedIcon: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    GradientIconNav(
      Icons.search,
      ),
    GradientText("Decouvrir",
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),)
  ]),
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      icon: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Icon(Icons.calendar_month ,color : Color(0xFFDADADA)),
  Text(
  "Event",
  style: TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  ),
  ),
  ],),
      selectedIcon: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientIconNav(
              Icons.calendar_month,
            ),
            GradientText("Event",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),)
          ]),
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      icon: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_on,  color : Color(0xFFDADADA)),
          Text(
            "Tickets",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],),
      selectedIcon: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientIconNav(
              Icons.location_on,
            ),
            GradientText("Tickets",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),)
          ]),
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      icon: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.login_outlined,  color : Color(0xFFDADADA)),
          Text(
            "Deconnecter",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],),
      selectedIcon: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientIconNav(
              Icons.login_outlined,
            ),
            GradientText("Deconnecter",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),)
          ]),
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];
}

Widget bottomBar(BuildContext c) {
  return Column(
    children: <Widget>[
      const Expanded(
        child: SizedBox(),
      ),
      BottomBarView(
        tabIconsList: TabIconData.tabIconsList,
        addClick: () {
          Navigator.pushReplacement(
              c, MaterialPageRoute(builder: (context) => Profil() ));
        },
        changeIndex: (int index) {
        },
      ),
    ],
  );
}

class GradientText extends StatelessWidget {
   GradientText(
      this.text, {
        this.style,
      });

  final String text;
  final TextStyle? style;
  final Gradient gradient = LinearGradient(
    colors: [
      Colors.purple,
      Colors.pink
    ],
    begin: Alignment.topLeft,
    end: Alignment.centerRight,
  );

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

class GradientIcon extends StatelessWidget {
  GradientIcon(
      this.icon,
      this.size,
      );

  final IconData icon;
  final double size;
  final Gradient gradient = LinearGradient(
    colors: [
      Colors.purple,
      Colors.pink
    ],
    begin: Alignment.topLeft,
    end: Alignment.centerRight,
  );

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: SizedBox(
        width: size * 1.2,
        height: size * 1.2,
        child: Icon(
          icon,
          size: size,
          color: Colors.white,
        ),
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return gradient.createShader(rect);
      },
    );
  }
}

class GradientIconNav extends StatelessWidget {
  GradientIconNav(
      this.icon,
      );
  final IconData icon;
  final Gradient gradient = LinearGradient(
    colors: [
      Colors.purple,
      Colors.pink
    ],
    begin: Alignment.topLeft,
    end: Alignment.centerRight,
  );

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: SizedBox(
       // width: size * 1.2,
       // height: size * 1.2,
        child: Icon(
          icon,
          size: 35,
          color: Colors.white,
        ),
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, 30, 30);
        return gradient.createShader(rect);
      },
    );
  }
}