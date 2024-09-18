import 'package:flutter/material.dart';
import 'package:silk_road/core/constants.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class CustOmSearch extends StatefulWidget {
  CustOmSearch({
    super.key,
    this.onChanged,
    this.prefixIcon,
  });
  Widget? prefixIcon;
  Function(String)? onChanged;
  @override
  State<CustOmSearch> createState() => _CustOmSearchState();
}
class _CustOmSearchState extends State<CustOmSearch> {
  String _searchQuery = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (37 / 932) * ScreenUtils.screenHeight(context),
      width: (398 / 414) * ScreenUtils.screenWidth(context),
      child: TextFormField(
          onChanged: (value) {
            setState(() {
              _searchQuery = value;
            });
          },
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: kGrey),
            prefixIcon: Icon(Icons.search,color: kGrey,),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: kGrey),
            ),
            contentPadding: EdgeInsets.symmetric(vertical:  (10 / 932) * ScreenUtils.screenHeight(context))
          )),
    );
  }
}

























    // Container(
    //   height: (37 / 932) * ScreenUtils.screenHeight(context),
    //   width: (398 / 414) * ScreenUtils.screenWidth(context),
    //   decoration: BoxDecoration(
    //     border: Border.all(
    //       color: kGrey,
    //     ),
    //     borderRadius: BorderRadius.circular(10),
    //     color: Colors.white,
    //   ),
    //   child: Row(
    //     children: [
    //       Padding(
    //         padding: EdgeInsets.only(
    //             left: (16 / 414) * ScreenUtils.screenWidth(context)),
    //         child:IconButton(onPressed: (){}, icon: Icon(Icons.search,color: kGrey,size: 21,))
    //       ),
         
    //       Text(
    //         'Search',
    //         style: TextStyle(
    //           color: kGrey,
    //           fontSize:   (16 / 932) * ScreenUtils.screenHeight(context),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
 

