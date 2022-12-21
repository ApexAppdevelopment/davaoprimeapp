import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Gcash1kWidget extends StatefulWidget {
  const Gcash1kWidget({Key? key}) : super(key: key);

  @override
  _Gcash1kWidgetState createState() => _Gcash1kWidgetState();
}

class _Gcash1kWidgetState extends State<Gcash1kWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'gcash1k',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFF1E2429),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              context.pushNamed('homepage');
            },
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            elevation: 8,
            child: FaIcon(
              FontAwesomeIcons.home,
              color: FlutterFlowTheme.of(context).primaryBtnText,
              size: 24,
            ),
          ),
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: true,
            actions: [],
            centerTitle: true,
            elevation: 4,
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF4B39EF), Color(0xFFEE8B60)],
                stops: [0, 1],
                begin: AlignmentDirectional(1, -1),
                end: AlignmentDirectional(-1, 1),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterFlowWebView(
                  url:
                      'https://payments.gcash.com/gcash-cashier-web/1.2.1/index.html#/login?bizNo=20221215121212800110170998833325289&timestamp=1671103745046&sign=dadGBuHTri7p9jzq6fSt%2F%2F5%2FDgniB5pX8aQFYsZ1MhULY7hpLUPcS6J9igt18bvefPYjo%2F9FOSxXD%2FfLHck%2BR3n70tMbGJ7dFN2JPYJ%2Bdn5L%2FzHPQL%2Bc%2BO9S7SS9t1nG2%2Fw3ZLsKYLBvoX5GULxP%2B34cIQ96aILEUnPtA4x9y8c8DBSlNI91Kd1%2FvM51ZgMif9%2B%2BZ1V0YJJODQpl3hXiq5b9UTkJwq%2B7N4t11Jf9MyOkYbt9j9biVVOgxYNxMVZUwfIt1hPv%2BCGf0LQeRvVB9JO3x0N2%2F1rfpUAXfyvJUSdQ01ZWMNWIe%2F6k6nNZG4RxBv2%2BXyfvRO1pvAtVBdpZJA%3D%3D&merchantName=DAVAO%20PRIME&orderAmount=1000.00&pdCode=51051000101000100001&callbackUrl=https%3A%2F%2Fpayments.gcash.com%2Fgcash-cashier-web%2F1.2.1%2Findex.html%23%2Fconfirm%3FbizNo%3D20221215121212800110170998833325289%26timestamp%3D1671103745046%26sign%3DdadGBuHTri7p9jzq6fSt%252F%252F5%252FDgniB5pX8aQFYsZ1MhULY7hpLUPcS6J9igt18bvefPYjo%252F9FOSxXD%252FfLHck%252BR3n70tMbGJ7dFN2JPYJ%252Bdn5L%252FzHPQL%252Bc%252BO9S7SS9t1nG2%252Fw3ZLsKYLBvoX5GULxP%252B34cIQ96aILEUnPtA4x9y8c8DBSlNI91Kd1%252FvM51ZgMif9%252B%252BZ1V0YJJODQpl3hXiq5b9UTkJwq%252B7N4t11Jf9MyOkYbt9j9biVVOgxYNxMVZUwfIt1hPv%252BCGf0LQeRvVB9JO3x0N2%252F1rfpUAXfyvJUSdQ01ZWMNWIe%252F6k6nNZG4RxBv2%252BXyfvRO1pvAtVBdpZJA%253D%253D%26merchantName%3DDAVAO%2520PRIME%26orderAmount%3D1000.00%26pdCode%3D51051000101000100001',
                  bypass: false,
                  height: 812,
                  verticalScroll: false,
                  horizontalScroll: false,
                ),
                Stack(
                  children: [],
                ),
              ],
            ),
          ),
        ));
  }
}
