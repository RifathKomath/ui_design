import 'package:flutter/material.dart';

Widget customListView({
  required IconData icon,
  required IconData icon_2,
  required String label,
  // required List screens
}) {
  return ListTile(
    leading: Icon(icon,color:const  Color.fromRGBO(109, 56, 5, 1),size: 35,),
    title: Text(label,style: const TextStyle(color: Color.fromRGBO(109, 56, 5, 1),fontSize: 15,fontWeight: FontWeight.w700),),
    trailing: Icon(icon_2,color: const Color.fromRGBO(109, 56, 5, 1),),
    onTap: () {
      // Navigator.of().push(MaterialPageRoute(builder: (context) => screens));
    },
  );
}
