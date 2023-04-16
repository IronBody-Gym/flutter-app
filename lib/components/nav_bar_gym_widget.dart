import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bar_gym_model.dart';
export 'nav_bar_gym_model.dart';

class NavBarGymWidget extends StatefulWidget {
  const NavBarGymWidget({Key? key}) : super(key: key);

  @override
  _NavBarGymWidgetState createState() => _NavBarGymWidgetState();
}

class _NavBarGymWidgetState extends State<NavBarGymWidget> {
  late NavBarGymModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarGymModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 90.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 64.0,
            height: 64.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: InkWell(
              onTap: () async {
                context.pushNamed('gymEvents');
              },
              child: Icon(
                FFIcons.kcalender,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
            ),
          ),
          Container(
            width: 64.0,
            height: 64.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: InkWell(
              onTap: () async {
                context.pushNamed('DailyWorkout');
              },
              child: Icon(
                FFIcons.kgym,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
            ),
          ),
          Container(
            width: 56.0,
            height: 56.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
              shape: BoxShape.circle,
            ),
            child: InkWell(
              onTap: () async {
                context.pushNamed('Home1');
              },
              child: Icon(
                FFIcons.khome,
                color: Colors.black,
                size: 24.0,
              ),
            ),
          ),
          Container(
            width: 64.0,
            height: 64.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: InkWell(
              onTap: () async {
                context.pushNamed(
                  'WorkoutCategories',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              child: Icon(
                FFIcons.klist,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
            ),
          ),
          Container(
            width: 64.0,
            height: 64.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: InkWell(
              onTap: () async {
                context.pushNamed('Perfil');
              },
              child: Icon(
                FFIcons.kprofile,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
