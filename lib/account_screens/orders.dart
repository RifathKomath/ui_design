import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  final String formattedDate = DateFormat('MMMM d, y').format(DateTime.now());
  // final String formattedTime = DateFormat('HH:mm').format(DateTime(2019, 3, 5, 12, 31));

  List title = ['Order #345', 'Order #346', 'Order #347'];
  List subTitle = ['Delivered', 'Cancelled', 'Delivered'];
  List date = ['October 24,2014', 'October 24,2014', 'October 24,2014'];
  List price = ['700', '800', '600'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(65),
              child: AppBar(
                iconTheme: const IconThemeData(color: Colors.orange),
                backgroundColor: Colors.white,
                bottom: const PreferredSize(
                    preferredSize: Size.fromHeight(120),
                    child: Text(
                      'Orders',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.orange),
                    )),
              )),
          body: Column(
            children: [
              const TabBar(
                tabs: [
                  Tab(
                    text: 'Ongoing',
                  ),
                  Tab(
                    text: 'History',
                  )
                ],
                labelColor: Colors.orange,
                indicatorColor: Colors.orange,
                unselectedLabelColor: Color.fromRGBO(109, 56, 5, 1),
              ),
              Expanded(
                  child: TabBarView(children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.calendar_month,
                                color: Color.fromRGBO(109, 56, 5, 1)),
                            const SizedBox(width: 8),
                            Text(
                              formattedDate,
                              style: const TextStyle(
                                  color: Color.fromRGBO(109, 56, 5, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            // Text(formattedTime)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 70,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Icon(
                                  Icons.card_travel,
                                  color: Colors.orange,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${title[index]}',
                                    style: const TextStyle(
                                        color: Color.fromRGBO(109, 56, 5, 1),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    '${subTitle[index]}',
                                    
                                  ),
                                  Text('${date[index]}')
                                ],
                              ),
                              const SizedBox(
                                width: 105,
                              ),
                              const Icon(
                                Icons.attach_money_rounded,
                                color: Colors.orange,
                              ),
                              Text('${price[index]}',
                                  style: const TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemCount: 3),
                )
              ]))
            ],
          ),
        ));
  }
}
