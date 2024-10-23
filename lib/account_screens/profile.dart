import 'package:flutter/material.dart';
import 'package:uidesign/additional/list_tile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.orange),
            backgroundColor: Colors.white,
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(120),
                child: Text(
                  'Profile',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange),
                )),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            customListView(
                icon: Icons.supervisor_account,
                icon_2: Icons.keyboard_arrow_right_outlined,
                label: 'Edit Profile'),
            customListView(
                icon: Icons.key,
                icon_2: Icons.keyboard_arrow_right_outlined,
                label: 'Change Password'),
            customListView(
                icon: Icons.credit_card,
                icon_2: Icons.keyboard_arrow_right_outlined,
                label: 'My Cards'),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'App Settings',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange,
                        fontWeight: FontWeight.w700),
                  )),
            ),
           const  SizedBox(height: 20,),
            ListTile(
    leading: Icon(Icons.abc,color:const  Color.fromRGBO(109, 56, 5, 1),size: 35,),
    title: Text('Notifications',style: const TextStyle(color: Color.fromRGBO(109, 56, 5, 1),fontSize: 15,fontWeight: FontWeight.w700),),
    trailing:Switch(value: true, onChanged: (value){
        setState(() {
          value=false;
        });
    },activeColor: Colors.orange,
    )
  ),
           const ListTile(
    leading: Icon(Icons.language,color:const  Color.fromRGBO(109, 56, 5, 1),size: 35,),
    title: Text('Language',style: const TextStyle(color: Color.fromRGBO(109, 56, 5, 1),fontSize: 15,fontWeight: FontWeight.w700),),
    trailing: Icon(Icons.keyboard_arrow_right_outlined,color: const Color.fromRGBO(109, 56, 5, 1),),
  ),
   const ListTile(
    leading: Icon(Icons.logout,color:const  Color.fromRGBO(109, 56, 5, 1),size: 35,),
    title: Text('Logout',style: const TextStyle(color: Color.fromRGBO(109, 56, 5, 1),fontSize: 15,fontWeight: FontWeight.w700),),
   
  )
  
          ],
        ),
      ),
    );
  }
}
