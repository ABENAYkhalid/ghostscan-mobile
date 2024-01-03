import 'package:flutter/material.dart';
import 'package:ghost_scan/core/app_export.dart';
import 'package:ghost_scan/widgets/custom_icon_button.dart';
import 'package:ghost_scan/widgets/custom_outlined_button.dart';

class InsertScreen extends StatelessWidget {
  const InsertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 51.h, vertical: 68.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgA2794cebA9cd4,
                      height: 155.v,
                      width: 176.h),
                  SizedBox(height: 6.v),
                  Container(
                      margin: EdgeInsets.only(left: 1.h),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgCamera,
                                height: 52.v,
                                width: 63.h,
                                margin:
                                    EdgeInsets.only(top: 55.v, bottom: 57.v)),
                            Container(
                                height: 165.v,
                                width: 189.h,
                                margin: EdgeInsets.only(left: 31.h),
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgGroup36,
                                          height: 165.v,
                                          width: 118.h,
                                          radius: BorderRadius.circular(24.h),
                                          alignment: Alignment.centerRight),
                                      CustomOutlinedButton(
                                          width: 154.h,
                                          text: "OPEN CAMERA",
                                          margin: EdgeInsets.only(top: 55.v),
                                          alignment: Alignment.topLeft)
                                    ]))
                          ])),
                  SizedBox(height: 56.v),
                  SizedBox(
                      height: 165.v,
                      width: 327.h,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 165.v,
                                width: 327.h,
                                decoration: AppDecoration.fillBluegray80001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder24),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup36Black900,
                                    height: 165.v,
                                    width: 118.h,
                                    radius: BorderRadius.circular(24.h),
                                    alignment: Alignment.centerRight))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 31.h, top: 28.v),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: 100.adaptSize,
                                          width: 100.adaptSize,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 28.h, vertical: 32.v),
                                          decoration: AppDecoration
                                              .fillGray90001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgUser,
                                              height: 35.v,
                                              width: 42.h,
                                              alignment: Alignment.center)),
                                      CustomOutlinedButton(
                                          width: 133.h,
                                          text: "Choose File",
                                          margin: EdgeInsets.only(
                                              left: 17.h,
                                              top: 21.v,
                                              bottom: 37.v),
                                          buttonStyle:
                                              CustomButtonStyles.outlineGrayTL5)
                                    ])))
                      ])),
                  Spacer(),
                  SizedBox(height: 65.v),
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

  /// Navigates to the showDataScreen when the action is triggered.
  onTapBtnArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.showDataScreen);
  }
}
