import 'package:flutter/material.dart';

class create extends StatelessWidget {
  final IconData icon ;
  final String type ;
  final Color color ;
  create({this.icon,this.type,this.color});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,color: Colors.cyan,),
        Text(type,style: TextStyle(color: color,fontWeight: FontWeight.bold),),
      ],
    );
  }
}

class VerticalDividerActivity extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 4.0,
      child: VerticalDivider(
        color: Colors.grey,
      ),
    );
  }
}

class divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4.0,
      width: double.infinity,
      child: Divider(
        color: Colors.grey,
      ),
    );
  }
}

class editbutton extends StatelessWidget {
  const editbutton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      child: Icon(Icons.edit_sharp,color: Colors.white,),
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(8.0),
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF60DF21)),
          shape: MaterialStateProperty.all<CircleBorder>(
              CircleBorder()
          )
      ),

    );
  }
}

class profile_Symbol extends StatelessWidget {
  final IconData icon ;
  final Color color ;
  profile_Symbol({this.icon,this.color});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 20.0,
      splashColor: Colors.white,
      icon: Icon( icon ,color: color),
      onPressed: (){},
    );
  }
}   ///android wala

class Square_interests extends StatelessWidget {
  final String url ;
  Square_interests({this.url});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(url)),
        ),
        constraints: BoxConstraints(
          minWidth: 40.0,
          minHeight: 40.0,
        ),
      ),
    );
  }
}
