import 'package:vcc_staff_teacher/ui/widgets/customBottomsheet.dart';
import 'package:vcc_staff_teacher/ui/widgets/customTextContainer.dart';
import 'package:vcc_staff_teacher/utils/constants.dart';
import 'package:vcc_staff_teacher/utils/labelKeys.dart';
import 'package:flutter/material.dart';

class NotificationMessageBottomsheet extends StatelessWidget {
  final String text;
  const NotificationMessageBottomsheet({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return CustomBottomsheet(
        titleLabelKey: messageKey,
        child: Padding(
          padding: EdgeInsets.all(appContentHorizontalPadding),
          child: CustomTextContainer(textKey: text),
        ));
  }
}
