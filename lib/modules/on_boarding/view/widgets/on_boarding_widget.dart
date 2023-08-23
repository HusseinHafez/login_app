import 'package:flutter/material.dart';
import 'package:flutter_login_app/core/utils/app_constants.dart';
import 'package:flutter_login_app/modules/on_boarding/model/on_boarding_model.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({super.key, required this.model});
  final OnBoardingModel model;
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return  Container(
      padding: const EdgeInsets.only(right: 15),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(model.image,height:size.height*.3,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(model.title,style: AppConstants.headline2),
              Text(model.subTitle,style: AppConstants.subTitle3,textAlign: TextAlign.center,)
            ],
          ),
          const SizedBox(),
          Text(model.counterText,style: AppConstants.headline4,),
        ],
      ),
    );
  }
}