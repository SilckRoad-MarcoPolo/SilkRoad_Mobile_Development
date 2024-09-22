import 'package:flutter/material.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';

import '../../../features/home/widgets/customSearch.dart';
import '../../helpers/screen_utils.dart';

class GradiantColorHeader extends StatelessWidget {
  String title;
  bool icon;
  GradiantColorHeader({
    this.icon = false,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
          width: ScreenUtils.screenWidth(context),
          height: (198 / 932) * ScreenUtils.screenHeight(context),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height:(25 / 932) * ScreenUtils.screenHeight(context) ,
              ),
              Center(
                child: Padding(
                  padding:  EdgeInsets.only(left: (10/ 430) * ScreenUtils.screenWidth(context)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ArrowBackButton(onTap: (){}),
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: (22 / 932) * ScreenUtils.screenHeight(context),
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Spacer(),
                      icon?Icon(Icons.filter_alt_rounded):Text("")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height:(20 / 932) * ScreenUtils.screenHeight(context) ,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: CustOmSearch())
            ],
          )),
    );
  }
}