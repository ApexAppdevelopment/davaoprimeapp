import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyCodeSMSWidget extends StatefulWidget {
  const VerifyCodeSMSWidget({Key? key}) : super(key: key);

  @override
  _VerifyCodeSMSWidgetState createState() => _VerifyCodeSMSWidgetState();
}

class _VerifyCodeSMSWidgetState extends State<VerifyCodeSMSWidget> {
  TextEditingController? pinCodeController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        context.pushNamed('phonesignup');
      },
      child: Title(
          title: 'VerifyCodeSMS',
          color: FlutterFlowTheme.of(context).primaryColor,
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              title: Text(
                'Enter Pin Code Below',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              actions: [],
              centerTitle: true,
              elevation: 0,
            ),
            body: SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Confirm your Code',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(44, 8, 44, 0),
                            child: Text(
                              'This code helps keep your account safe and secure.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                            child: PinCodeTextField(
                              appContext: context,
                              length: 6,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .subtitle2Family,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .subtitle2Family),
                                  ),
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              enableActiveFill: false,
                              autoFocus: true,
                              showCursor: true,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              obscureText: false,
                              hintCharacter: '-',
                              pinTheme: PinTheme(
                                fieldHeight: 60,
                                fieldWidth: 60,
                                borderWidth: 2,
                                borderRadius: BorderRadius.circular(12),
                                shape: PinCodeFieldShape.box,
                                activeColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                inactiveColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                selectedColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                activeFillColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                inactiveFillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                selectedFillColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              controller: pinCodeController,
                              onChanged: (_) => {},
                              onCompleted: (_) async {
                                GoRouter.of(context).prepareAuthEvent();
                                final smsCodeVal = pinCodeController!.text;
                                if (smsCodeVal == null || smsCodeVal.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content:
                                          Text('Enter SMS verification code.'),
                                    ),
                                  );
                                  return;
                                }
                                final phoneVerifiedUser = await verifySmsCode(
                                  context: context,
                                  smsCode: smsCodeVal,
                                );
                                if (phoneVerifiedUser == null) {
                                  return;
                                }

                                context.goNamedAuth('homepage', mounted);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
