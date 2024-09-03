import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class VerifyOTPScreen extends StatefulWidget {
  final String? verificationId;
  final String? phoneNumber;
  final String? mobileNo;
  final bool? isCodeSent;
  final PhoneAuthCredential? credential;

  VerifyOTPScreen(
      {this.verificationId,
      this.isCodeSent,
      this.phoneNumber,
      this.mobileNo,
      this.credential});

  @override
  _VerifyOTPScreenState createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> {
  String otpCode = '';

  // Future<void> submit() async {
  //   hideKeyboard(context);
  //   appStore.setLoading(true);
  //
  //   AuthCredential credential = PhoneAuthProvider.credential(verificationId: widget.verificationId!, smsCode: otpCode);
  //
  //   await FirebaseAuth.instance.signInWithCredential(credential).then((result) async {
  //     Map req = {
  //       "email": "",
  //       "username": widget.phoneNumber!.replaceAll('+', ''),
  //       "first_name": "",
  //       "last_name": "",
  //       "login_type": LoginTypeOTP,
  //       "user_type": LoginUser,
  //       "accessToken": widget.phoneNumber!.replaceAll('+', ''),
  //       "phone_number": widget.phoneNumber!.replaceAll('+', ''),
  //       'player_id': getStringAsync(PLAYER_ID).validate(),
  //     };
  //
  //     // await socialOtpLogInApi(req).then((value) async {
  //     //   await setValue(IS_OTP, true);
  //     //   await setValue(IS_SOCIAL, true);
  //     //   userStore.setPhoneNo(widget.phoneNumber!.replaceAll('+', ''));
  //     //   userStore.setUserPassword(widget.phoneNumber!.replaceAll('+', ''));
  //     //   await removeKey(IS_REMEMBER);
  //     //   appStore.setLoading(false);
  //     //   print(widget.phoneNumber!.replaceAll('+', ''));
  //     //   if (value.isUserExist == false) {
  //     //     finish(context);
  //     //     SignUpScreen(phoneNumber: widget.phoneNumber!.replaceAll('+', '')).launch(context);
  //     //   } else {
  //     //     await setValue(TOKEN, value.data!.apiToken.validate());
  //     //     userStore.setToken(value.data!.apiToken.validate());
  //     //     await getUSerDetail(context, value.data!.id.validate()).whenComplete(() {
  //     //       DashboardScreen().launch(context, isNewTask: true);
  //     //     });
  //     //   }
  //     // }).catchError((e) {
  //     //   appStore.setLoading(false);
  //     //   if (e.toString().contains('invalid_username')) {
  //     //     finish(context);
  //     //     SignUpScreen(phoneNumber: widget.phoneNumber!.replaceAll('+', '')).launch(context);
  //     //   } else {
  //     //     toast(e.toString());
  //     //   }
  //     //   setState(() {});
  //     // });
  //   }).catchError((e) {
  //     log("error->" + e.toString());
  //     toast(e.toString());
  //     // appStore.setLoading(false);
  //     setState(() {});
  //   });
  // }

  @override
  void initState() {
    // appStore.setLoading(false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBarWidget("", context: context),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Verify Phone Number',
                ),
                Text(
                  "We will use this data to give you a better result and help to track your health",
                ),
                // Text('${'We have sent the code verification to'} '
                //     ''
                //     // '${widget.phoneNumber!}'
                //
                //     , style: secondaryTextStyle()),
                // 30.height,
                // OTPTextField(
                //   pinLength: 6,
                //   fieldWidth: context.width() * 0.1,
                //   onChanged: (s) {
                //     otpCode = s;
                //   },
                //   onCompleted: (pin) {
                //     otpCode = pin;
                //     // submit();
                //     // UserDetails().launch(context);
                //
                //   },
                // ).center(),
                // 30.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Didn't received OTP ?",
                    ),
                    GestureDetector(
                        child: Text(
                          'Resend',
                        ),
                        // style: primaryTextStyle(
                        //     color: primaryColor))
                        // .paddingLeft(4),
                        onTap: () {})
                  ],
                ),
                // 30.height,
                // AppButton(
                //   text:'Verify & Proceed',
                //   // width: context.width(),
                //   // color: primaryColor,
                //   onTap: () {
                //     // UserDetails().launch(context);
                //     // submit();
                //   },
                // ),
              ],
            ),
          ),
          // Observer(
          //   builder: (context) {
          //     return Loader().center().visible(appStore.isLoading);
          //   },
          // )
        ],
      ),
    );
  }
}
