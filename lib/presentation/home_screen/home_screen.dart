import 'package:flutter/material.dart';
import 'package:ghost_scan/core/app_export.dart';
import 'package:ghost_scan/widgets/custom_icon_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding:
                    EdgeInsets.symmetric(horizontal: 40.h, vertical: 108.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgA2794cebA9cd4,
                          height: 155.v,
                          width: 176.h),
                      SizedBox(height: 93.v),
                      SizedBox(
                          width: 346.h,
                          child: Text("WELCOME TO THE N1 CIN SCANNER APP",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.displayMedium!
                                  .copyWith(height: 1.47))),
                      Spacer(),
                      SizedBox(height: 25.v),
                      CustomIconButton(
                          height: 58.adaptSize,
                          width: 58.adaptSize,
                          padding: EdgeInsets.all(16.h),
                          onTap: () {
                            onTapBtnArrowDown(context);
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowDown))
                    ]))));
  }

  /// Navigates to the insertScreen when the action is triggered.
  onTapBtnArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.insertScreen);
  }
}
