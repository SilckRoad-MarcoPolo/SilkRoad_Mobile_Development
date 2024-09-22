import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';
import 'package:silk_road/features/Students/widgets/student_card.dart';
import 'package:silk_road/features/home/widgets/customSearch.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackButton(onTap: (){
          Navigator.pop(context);
        }),
          title: Text(
        "Students",
        style: TextStyle(
            fontSize: ScreenUtils.screenHeight(context) * (22 / 932),
            fontWeight: FontWeight.w600),
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtils.screenHeight(context) * (10 / 462),
          ),
          child: Column(
            children: [
               SizedBox(
                height: (20 / 932) * ScreenUtils.screenHeight(context),
              ),
              CustOmSearch(),
              SizedBox(
                height: (20 / 932) * ScreenUtils.screenHeight(context),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return StudentCard();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
