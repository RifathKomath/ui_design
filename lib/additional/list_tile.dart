import 'package:flutter/material.dart';

Widget customListView({
  required IconData icon,
  required IconData icon_2,
  required String label,
  required Widget destinationScreen,
  TextStyle? labelStyle
  
}) {
  return Builder(
    builder: (context) {
      return ListTile(
        leading: Icon(icon,color:const  Color.fromRGBO(109, 56, 5, 1),size: 35,),
        title: Text(label,style: labelStyle,),
        trailing: Icon(icon_2,color: const Color.fromRGBO(109, 56, 5, 1),),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>destinationScreen));
        },
      );
    }
  );
}
