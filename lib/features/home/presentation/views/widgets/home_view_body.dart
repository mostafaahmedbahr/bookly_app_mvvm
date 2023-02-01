import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
      children:const [
        CustomAppBarWidget(),
      ],
    );
  }
}
