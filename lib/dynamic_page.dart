import 'package:flutter/material.dart';
import 'package:uidesign/additional/app_text_colors.dart';
import 'package:uidesign/additional/custom_card.dart';
import 'package:uidesign/additional/custom_tab.dart';

class DynamicPage extends StatefulWidget {
  final String title;
  final List<String> images;
  final List<String> itemTitles;
  final String subLabel;
  final String price;

  const DynamicPage({
    super.key,
    required this.title,
    required this.images,
    required this.itemTitles,
    this.subLabel = '1kg',
    this.price = '4.99',
  });

  @override
  State<DynamicPage> createState() => _DynamicPageState();
}

class _DynamicPageState extends State<DynamicPage> {
  final AppTextColors appTextColors = AppTextColors();
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(165),
        child: AppBar(
          iconTheme: const IconThemeData(color: Colors.orange),
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(10),
            child: Column(
              children: [
                Text(widget.title, style: appTextColors.appTextStyle_700_24),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    height: 48,
                    width: 343,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        prefixIcon: const Icon(Icons.search, color: Colors.black38),
                        hintText: 'Search',
                        hintStyle: const TextStyle(color: Colors.black38),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      customTab(label: 'Vegetables'),
                      customTab(label: 'Meat'),
                      customTab(label: 'Fruits'),
                      customTab(label: 'Toys'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 2.0,
          childAspectRatio: 0.8,
        ),
        itemCount: widget.images.length,
        itemBuilder: (context, index) {
          return customCard(
            image: widget.images[index],
            label: widget.itemTitles[index],
            subLabel: widget.subLabel,
            icon: Icons.attach_money_rounded,
            price: widget.price,
          );
        },
      ),
    );
  }
}
