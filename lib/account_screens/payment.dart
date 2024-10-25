import 'package:flutter/material.dart';
import 'package:uidesign/additional/app_text_colors.dart';
import 'package:uidesign/additional/colors.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  List<String> images = [
    'assets/image/Group (2).png',
    'assets/image/Vector.png'
  ];
  List<String> title = ['Apple Pay', 'Cash on delivery'];

  final AppTextColors _appTextColors = AppTextColors();

  List titles = ['Gotaborg\nArcadon', 'Kunsabanka\nKunsabassan'];
  List subTitle = ['1.4 ML', '17 ML'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          iconTheme: const IconThemeData(color: Colors.orange),
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(120),
            child: Text('Payment', style: _appTextColors.appTextStyle_700_24),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 15),
              Row(
                children: [
                  Text('In-Store Pick Up',
                      style: _appTextColors.appTextStyle_400_22),
                  const Spacer(),
                  Text('Free', style: _appTextColors.appTextStyle_700_18),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Some store may be temporarily\nunavailable',
                    style: _appTextColors.appTextStyle_400_18,
                  ),
                  const Spacer(),
                  const Icon(Icons.keyboard_arrow_down_outlined),
                ],
              ),
              const SizedBox(height: 15),
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
              const SizedBox(height: 20),
              Card(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(titles[index],
                          style: _appTextColors.appTextStyle_700_18),
                      subtitle: Text(subTitle[index],
                          style: _appTextColors.appTextStyle_400_18),
                      trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: 2,
                ),
              ),
              const SizedBox(height: 10),
              Card(
                child: ListTile(
                  title: Text(
                    'See Items',
                    style: _appTextColors.appTextStyle_700_18,
                  ),
                  leading: const Icon(
                    Icons.shopping_basket_rounded,
                    color: Color.fromRGBO(109, 56, 5, 1),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
              ),
              const SizedBox(height: 10),
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Payment Method',
                            style: _appTextColors.appTextStyle_700_18),
                      ),
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Image.asset(images[index]),
                          title: Text(
                            title[index],
                            style: _appTextColors.appTextStyle_400_16,
                          ),
                          trailing:
                              const Icon(Icons.keyboard_arrow_right_rounded),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemCount: 2,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text('Order Summary',
                              style: _appTextColors.appTextStyle_700_18)),
                      customRow(
                          label: 'Subtotal:',
                          labelStyle: _appTextColors.appTextStyle_400_18,
                          money: '137.00'),
                      customRow(
                          label: 'Tax',
                          labelStyle: _appTextColors.appTextStyle_400_18,
                          money: '4.50'),
                      customRow(
                          label: 'In-Store Pick Up',
                          labelStyle: _appTextColors.appTextStyle_400_18,
                          money: '00.00'),
                      const Divider(),
                      customRow(
                          label: 'Total:',
                          labelStyle: _appTextColors.appTextStyle_700_18,
                          money: '143.00')
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: 343,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Check Out',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.orange)),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
