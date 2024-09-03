import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> mFormKey = GlobalKey<FormState>();
  TextEditingController mMobileNumberCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Form(
                key: mFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text('Continue with Phone', style: boldTextStyle(size: 22)),
                    // 6.height,
                    // Text('You\'ll receive 6 digit code to verify next.', style: secondaryTextStyle()),
                    // 24.height,
                    // Text('Phone Number', style: secondaryTextStyle()),
                    // 6.height,
                    // AppTextField(
                    //   controller: mMobileNumberCont,
                    //   // textFieldType: TextFieldType.PHONE,
                    //   isValidationRequired: true,
                    //   // suffix: mSuffixTextFieldIconWidget(ic_call),
                    //   decoration: defaultInputDecoration(context,
                    //       label: 'Enter Phone Number',
                    //       mPrefix: IntrinsicHeight(
                    //         child: Row(
                    //           mainAxisSize: MainAxisSize.min,
                    //           children: [
                    //             CountryCodePicker(
                    //               // initialSelection: getStringAsync(COUNTRY_CODE,defaultValue: countryCode!),
                    //               showCountryOnly: false,
                    //               showFlag: false,
                    //               // boxDecoration: BoxDecoration(borderRadius: radius(defaultRadius), color: context.scaffoldBackgroundColor),
                    //               showFlagDialog: true,
                    //               showOnlyCountryWhenClosed: false,
                    //               alignLeft: false,
                    //               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    //               // textStyle: primaryTextStyle(),
                    //               onInit: (c) {
                    //                 // countryCode = c!.dialCode;
                    //                 // setValue(COUNTRY_CODE,c.code);
                    //               },
                    //               onChanged: (c) {
                    //                 // countryCode = c.dialCode;
                    //                 // setValue(COUNTRY_CODE,c.code);
                    //               },
                    //             ),
                    //             // CountryCodePicker(
                    //             //   initialSelection: countryCode,
                    //             //   showCountryOnly: false,
                    //             //   showFlag: false,
                    //             //   boxDecoration: BoxDecoration(borderRadius: radius(defaultRadius), color: context.scaffoldBackgroundColor),
                    //             //   showFlagDialog: true,
                    //             //   showOnlyCountryWhenClosed: false,
                    //             //   alignLeft: false,
                    //             //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    //             //   textStyle: primaryTextStyle(),
                    //             //   onInit: (c) {
                    //             //     countryCode = c!.dialCode;
                    //             //   },
                    //             //   onChanged: (c) {
                    //             //     countryCode = c.dialCode;
                    //             //   },
                    //             // ),
                    //             VerticalDivider(color: Colors.grey.withOpacity(0.5)),
                    //             // 16.width,
                    //           ],
                    //         ),
                    //       )),
                    // ),
                    //
                    // 30.height,
                    // AppButton(
                    //   text: 'Continue',
                    //   width: context.width(),
                    //   color: primaryColor,
                    //   onTap: () {
                    //     sendOTP();
                    //   },
                    // ),
                  ],
                  // ).paddingSymmetric(horizontal: 16),
                )),
          ),
          // Observer(builder: (context) {
          //   return Loader().visible(appStore.isLoading);
          // })
        ],
      ),
    );
  }
}
