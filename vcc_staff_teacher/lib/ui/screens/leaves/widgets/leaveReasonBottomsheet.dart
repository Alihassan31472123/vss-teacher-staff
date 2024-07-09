import 'package:vcc_staff_teacher/ui/widgets/customBottomsheet.dart';
import 'package:vcc_staff_teacher/ui/widgets/customTextContainer.dart';
import 'package:vcc_staff_teacher/utils/constants.dart';
import 'package:vcc_staff_teacher/utils/labelKeys.dart';
import 'package:flutter/material.dart';

class LeaveReasonBottomsheet extends StatelessWidget {
  final String reason;
  const LeaveReasonBottomsheet({super.key, required this.reason});

  @override
  Widget build(BuildContext context) {
    return CustomBottomsheet(
        titleLabelKey: leaveReasonKey,
        child: Container(
          padding: EdgeInsets.all(appContentHorizontalPadding),
          child: CustomTextContainer(textKey: reason),
        ));
  }
}
