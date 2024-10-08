import 'package:biometricdemo/verify_otp_screen.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  GlobalKey<FormState> mFormKey = GlobalKey<FormState>();
  TextEditingController mMobileNumberCont = TextEditingController();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
    // appStore.setLoading(false);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  Future<void> sendOTP() async {
    // VerifyOTPScreen(
    //   // verificationId: verificationId,
    //   // isCodeSent: true,
    //   // phoneNumber: phoneNumber,
    //   // mobileNo: mobileNo,
    // ).launch(context);
    // hideKeyboard(context);
    // appStore.setLoading(true);
    //
    // String number = '$countryCode${mMobileNumberCont.text.trim()}';
    // if (!number.startsWith('+')) {
    //   number = '$mMobileNumberCont${mMobileNumberCont.text.trim()}';
    // }
    //
    // await loginWithOTP(context, number, mMobileNumberCont.text.trim()).then((value) {}).catchError((e) {
    //   toast(e.toString());
    //   appStore.setLoading(false);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBarWidget("", context: context),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Form(
              key: mFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Continue with Phone',
                  ),
                  Text(
                    'You\'ll receive 6 digit code to verify next.',
                  ),
                  // 24.height,
                  Text(
                    'Phone Number',
                  ),
                  // 6.height,
                  // AppTextField(
                  //   controller: mMobileNumberCont,
                  //   textFieldType: TextFieldType.PHONE,
                  //   isValidationRequired: true,
                  //   // suffix: mSuffixTextFieldIconWidget(ic_call),
                  //   decoration: defaultInputDecoration(context,
                  //       label: 'Enter Phone Number',
                  //       mPrefix: IntrinsicHeight(
                  //         child: Row(
                  //           mainAxisSize: MainAxisSize.min,
                  //           children: [
                  //             CountryCodePicker(
                  //               initialSelection: getStringAsync(COUNTRY_CODE,defaultValue: countryCode!),
                  //               showCountryOnly: false,
                  //               showFlag: false,
                  //               boxDecoration: BoxDecoration(borderRadius: radius(defaultRadius), color: context.scaffoldBackgroundColor),
                  //               showFlagDialog: true,
                  //               showOnlyCountryWhenClosed: false,
                  //               alignLeft: false,
                  //               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  //               textStyle: primaryTextStyle(),
                  //               onInit: (c) {
                  //                 countryCode = c!.dialCode;
                  //                 setValue(COUNTRY_CODE,c.code);
                  //               },
                  //               onChanged: (c) {
                  //                 countryCode = c.dialCode;
                  //                 setValue(COUNTRY_CODE,c.code);
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
