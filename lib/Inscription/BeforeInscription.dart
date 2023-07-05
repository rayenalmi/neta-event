import 'package:flutter/material.dart';

class BeforeIncription extends StatefulWidget
{
  const BeforeIncription({Key? key}) : super(key: key);

  @override
  _BeforeIncription_State createState() => _BeforeIncription_State();
}

class _BeforeIncription_State extends State<BeforeIncription>
{
  int indexSelected = 0 ;
  final List<String> StringChoce = <String>["CLIENT","ORGANISATEUR","SOCIÉTE"];

  InkWell Choosed(int i ,String ch)
  {
     bool tr = StringChoce.indexOf(ch)==1;
     if (indexSelected==StringChoce.indexOf(ch)) {
       return InkWell(
         onTap: () {
         },
         child: Container(
           height: 65,
           padding: EdgeInsets.only(
             left: tr? 35 : 55,
             right: tr? 35 : 55,
             top: 17,
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
             ch,
             style: TextStyle(
               fontSize: tr? 19 : 23,
               color: Colors.white,
             ),
           ),
         ),
       );
     }
     else
       {
         return InkWell(onTap: () {
           setState(() { this.indexSelected = i; });
         },
           child: Container(
             height: 80,
             padding: EdgeInsets.only(
               left: tr? 35 : 55,
               right: tr? 35 : 55,
               top: 23,
               bottom: 16,
             ),
             decoration:
             BoxDecoration(
               border: Border.all(
                   color: Colors.purple,
                   width: 3.0
               ),
               borderRadius: BorderRadius.all(
                   Radius.circular(13.0)
               ),),
             child: Text(
               ch,
               style: TextStyle(
                 fontSize: tr? 19 : 23,
               ),
             ),
           ),);
       }
  }



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
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height *0.02,),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 55.0,
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

          SizedBox(height: 50,),

          ListView.builder(
            itemCount: StringChoce.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 16),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Choosed(index,StringChoce[index]),
                  SizedBox(
                    height: 50,
                  )
                ],
              );
            },
          ),


          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SignUp');
            },
            child: Container(
              height: 50,
              padding: EdgeInsets.only(
                left: 90.0,
                right: 90.0,
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
                "VALIDER",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                ),
              ),
            ),
          ),

        ]),
    );
  }

}