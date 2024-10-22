import 'package:flutter/material.dart';
import 'package:uidesign/account_screens/edit_address.dart';
import 'package:uidesign/account_screens/new_address.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
            preferredSize: const Size.fromHeight(75),
            child: AppBar(
              iconTheme: const IconThemeData(color: Colors.orange),
              backgroundColor: Colors.white,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const NewAddress()));
                  }, icon:const  Icon(Icons.add))
                )
              ],
              bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(120),
                  child: Text(
                    'Addresses',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange),
                  )),
            )),
            body:ListView(
              children: [
                ListTile(
                  leading:const  Icon(Icons.home),
                  title: const Text('Home',style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.bold
                  ),),
                  subtitle: const Text('Lungangen 6, 41722'),
                  iconColor:const  Color.fromRGBO(109, 56, 5, 1), 
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap:() => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const EditAddress() )),
                ),
               const Divider(),
               const  ListTile(
                  leading: Icon(Icons.card_travel),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  title: Text('Office',style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.bold
                  ),),
                  subtitle: Text('Lungangen 6, 41722'),
                  iconColor: Color.fromRGBO(109, 56, 5, 1), 
                ),
              const  Divider(),

              ],
            ),
            );
    
  }
}