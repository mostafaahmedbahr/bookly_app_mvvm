import 'package:bookly_app/core/utils/assets_path.dart';
import 'package:flutter/material.dart';
class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7/4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: const DecorationImage(
                  image: AssetImage(AssetsPath.testImage),
                  fit:BoxFit.fill ,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
