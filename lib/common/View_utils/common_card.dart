import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  const CommonCard({Key? key, this.elevation, this.paddingValue, this.cardChild})
      : super (key: key);
  final double? elevation;
  final double? paddingValue;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation ?? 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(paddingValue ?? 2),
        child: cardChild,
      ),
    );
  }
}

