import 'package:bookly_app/core/utils/assets_path.dart';
import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsPath.logo,height: 100,width: 100,),
          IconButton(
            onPressed: (){},
            icon:const Icon(Icons.search,
            size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
