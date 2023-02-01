import 'package:bookly_app/core/utils/assets_path.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with TickerProviderStateMixin  {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late AnimationController animationController2;
  late Animation<Offset> slidingAnimation2;
  @override
  void initState() {
    super.initState();
    animation();
    navigateToAfterSplash();

  }

  void navigateToAfterSplash(){
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(()=>const HomeView(),transition:Transition.fadeIn ,duration: const Duration(milliseconds: 250) );
    });
  }

  void animation(){
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2,),
    );
    slidingAnimation = Tween<Offset>(begin:const Offset(0 , 40) ,end: Offset.zero).animate(animationController);
    animationController.forward();
    // slidingAnimation.addListener(() {setState((){});});
    animationController2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2,),
    );
    slidingAnimation2 = Tween<Offset>(begin:const Offset(0 , -5) ,end: Offset.zero).animate(animationController2);
    animationController2.forward();
    // slidingAnimation2.addListener(() {setState((){});});
  }
  @override
  void dispose() {
    super.dispose();
    // اى controller لأازم نعمله dispose عشان ال resources
    animationController.dispose();
    animationController2.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return   Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // بنعمل كدا عشان نحسن الاداء
        AnimatedBuilder(
          animation: slidingAnimation2,
          builder: (context,_){
            return  SlideTransition(
                position: slidingAnimation2,
                child: Image.asset(AssetsPath.logo));
          },

        ),
        const SizedBox(height: 5,),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context,_){
            return  SlideTransition(
              position: slidingAnimation,
              child:const Text("Read Free Books",
                textAlign: TextAlign.center,
              ),
            );
          },

        ),

      ],
    );
  }
}
