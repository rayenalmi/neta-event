import 'package:flutter/material.dart';

class PhotoProfile extends StatefulWidget {

  PhotoProfile({Key? key, this.SaveEdit}) : super(key: key);

  final Function()? SaveEdit;
  @override
  State<PhotoProfile> createState() => _PhotoProfileState();
}

class _PhotoProfileState extends State<PhotoProfile>  {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        InkWell(
          onTap: () {
            widget.SaveEdit!();
          },
          child: Container(
            width: 325,
           height: 140,
           /* padding: EdgeInsets.only(
              left: 40.0,
              right: 40.0,
              top: 12,
              bottom: 5,
            ),*/
            decoration:
            new BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              color : Colors.white,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/edit/gallery.png',
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.1 ,
                  scale: 0.1,
                ),
                SizedBox(height: 15,),
                Text("De la gallerie",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],),
          ),
        ),
        SizedBox(height: 42,),
        InkWell(
          onTap: () {
            widget.SaveEdit!();
          },
          child: Container(
            height: 140,
            width: 325,
            /* padding: EdgeInsets.only(
              left: 40.0,
              right: 40.0,
              top: 12,
              bottom: 5,
            ),*/
            decoration:
            new BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              color : Colors.white,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/edit/camera.png',
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.1 ,
                  scale: 0.1,
                ),
                SizedBox(height: 15,),
                Text("Prendre une photo",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],),
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