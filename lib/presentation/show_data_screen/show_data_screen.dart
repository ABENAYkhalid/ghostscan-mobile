import 'package:flutter/material.dart';
import 'package:ghost_scan/core/app_export.dart';
import 'package:ghost_scan/widgets/custom_icon_button.dart';
import 'package:ghost_scan/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ShowDataScreen extends StatelessWidget {
  ShowDataScreen({Key? key}) : super(key: key);

  TextEditingController nameInputController = TextEditingController();

  TextEditingController cIDNvalueInputController = TextEditingController();

  TextEditingController dateInputController = TextEditingController();

  TextEditingController villevalueInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 41.h, vertical: 58.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgA2794cebA9cd4,
                          height: 155.v,
                          width: 176.h,
                          margin: EdgeInsets.only(left: 80.h)),
                      SizedBox(height: 2.v),
                      Text("Name", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 7.v),
                      _buildNameInput(context),
                      SizedBox(height: 21.v),
                      Text("CID N:", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 7.v),
                      _buildCIDNvalueInput(context),
                      SizedBox(height: 21.v),
                      Text("Date de naissance",
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 7.v),
                      _buildDateInput(context),
                      SizedBox(height: 30.v),
                      Text("Ville", style: theme.textTheme.bodyLarge),
                      _buildVillevalueInput(context),
                      Spacer(),
                      SizedBox(height: 74.v),
                      CustomIconButton(
                          height: 58.adaptSize,
                          width: 58.adaptSize,
                          padding: EdgeInsets.all(17.h),
                          alignment: Alignment.center,
                          onTap: () {
                            onTapBtnArrowDown(context);
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowDown))
                    ]))));
  }

  /// Section Widget
  Widget _buildNameInput(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 11.h),
        child: CustomTextFormField(
            controller: nameInputController, hintText: "Khalid Bellingham"));
  }

  /// Section Widget
  Widget _buildCIDNvalueInput(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 11.h),
        child: CustomTextFormField(
            controller: cIDNvalueInputController, hintText: "EE919888"));
  }

  /// Section Widget
  Widget _buildDateInput(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 11.h),
        child: CustomTextFormField(
            controller: dateInputController, hintText: "1999-08-22"));
  }

  /// Section Widget
  Widget _buildVillevalueInput(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 11.h),
        child: CustomTextFormField(
            controller: villevalueInputController,
            hintText: "Marrakech",
            textInputAction: TextInputAction.done));
  }

  /// Navigates to the insertScreen when the action is triggered.
  onTapBtnArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.insertScreen);
  }
}
