import 'package:flutter/material.dart';

class PrimaryCallToAction extends StatelessWidget {
  const PrimaryCallToAction({Key key, @required this.label, @required this.route, @required this.onPressed})
      : super(key: key);

  final String label;
  final String route;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 0,
      hoverElevation: 1,
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
