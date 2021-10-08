import 'package:apptide/pages/widgets/packkageSizeSheet.dart';
import 'package:flutter/material.dart';

class Sheet {
  packageSizeSheet(context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      backgroundColor: Colors.white,
      builder: (context) => Wrap(children: [PackageSizeSheet()]),
    );
  }
}
