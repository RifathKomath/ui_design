import 'package:flutter/material.dart';
import 'package:uidesign/additional/colors.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                  'Payment',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange),
                )),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'In-Store Pick Up',
                    style: itemReviewTitle(),
                  ),
                  const Spacer(),
                  Text(
                    'Free',
                    style: itemReviewTitle(),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Some store may be temporarily\nunavailable',
                    style: itemReviewSubTitle(),
                  ),
                  const Spacer(),
                 const  Icon(Icons.keyboard_arrow_down_outlined),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 48,
                width: 343,
                child: SearchBar(
                  elevation: const WidgetStatePropertyAll(0),
                  leading: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  hintText: 'Search',
                  backgroundColor: const WidgetStatePropertyAll(Colors.black12),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                ),
              ),
//               ListView.separated(itemBuilder: (context, index){
// return Card(
//   child: Column(
//     children: [
//       Row(
//         children: [
//           Text('fd')
//         ],
//       )
//     ],
//   ),
// );
//               }, separatorBuilder: (context , index){
//                 return const Divider();
//               }, itemCount: 2)
            ],
          ),
        ),
      ),
    );
  }
}
