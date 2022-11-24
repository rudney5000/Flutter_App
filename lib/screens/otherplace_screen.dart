import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class OtherPlaceScreen extends StatelessWidget {
  final Map<String, dynamic> otherplace;
  const OtherPlaceScreen({Key? key, required this.otherplace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Hotel price is ${otherplace['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 2,
              spreadRadius: 1,
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/${otherplace['image']}"
                    )
                )
            ),
          ),
          const Gap(10),
          Text(
            otherplace['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor
            ),
          ),
          const Gap(5),
          Text(
              otherplace['destination'],
              style: Styles.headLineStyle2.copyWith(color: Colors.white)
          ),
          const Gap(10),
          Text(
              '\$${otherplace['price']}/visit',
              style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor)
          ),
        ],
      ),
    );
  }
}
