import 'package:flutter/material.dart';
import 'package:app/theme/app_colors.dart';

Future<void> showAlert({
  @required BuildContext context,
  @required Widget child,
}) =>
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Colors.transparent,
        content: SingleChildScrollView(child: child),
      ),
    );

class SimplePopup extends StatelessWidget {
  final String title;
  final Widget body;
  final double height;
  final double width;
  final List<Widget> actions;
  const SimplePopup({
    Key key,
    this.title,
    @required this.body,
    this.height = 324,
    this.width = 320,
    this.actions = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(8.0),
      ),
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          (title != null)
              ? Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryDark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  height: 44,
                  width: this.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 20),
                      Text(title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                )
              : SizedBox(),
          Container(
            width: width,
            child: body,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: actions,
          ),
        ],
      ),
    );
  }
}