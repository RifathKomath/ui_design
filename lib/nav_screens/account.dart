import 'package:flutter/material.dart';
import 'package:uidesign/account_screens/address.dart';
import 'package:uidesign/account_screens/orders.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(65),
            child: AppBar(
              backgroundColor: Colors.white,
              bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(120),
                  child: Text(
                    'Account',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange),
                  )),
            )),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children:  [
               ListTile(
                leading:const  Icon(Icons.supervisor_account,color:Colors.orange,size: 30,),
                title: const Text(
                  'Profile',
                  style: TextStyle(
                      color: Color.fromRGBO(127, 83, 29, 10),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Orders())),
              ),
              ListTile(
                leading: const Icon(Icons.card_travel,color:Colors.orange,size: 30,),
                title: const Text(
                  'Orders',
                  style: TextStyle(
                      color: Color.fromRGBO(127, 83, 29, 10),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Orders())),
              ),
              ListTile(
                leading: const Icon(Icons.location_on_sharp,color:Colors.orange,size: 30,),
                title: const Text(
                  'Address',
                  style: TextStyle(
                      color: Color.fromRGBO(127, 83, 29, 10),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onTap:() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Address()));
                },
              ),
            const   ListTile(
                leading: Icon(Icons.payment,color:Colors.orange,size: 30,),
                title: Text(
                  'Payment',
                  style: TextStyle(
                      color: Color.fromRGBO(127, 83, 29, 10),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
  }
}
