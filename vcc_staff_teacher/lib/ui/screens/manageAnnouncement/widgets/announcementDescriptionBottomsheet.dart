import 'package:vcc_staff_teacher/ui/widgets/customBottomsheet.dart';
import 'package:vcc_staff_teacher/ui/widgets/customTextContainer.dart';
import 'package:vcc_staff_teacher/utils/constants.dart';
import 'package:vcc_staff_teacher/utils/labelKeys.dart';
import 'package:flutter/material.dart';

class AnnouncementDescriptionBottomsheet extends StatelessWidget {
  final String text;
  const AnnouncementDescriptionBottomsheet({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return CustomBottomsheet(
        titleLabelKey: descriptionKey,
        child: Padding(
          padding: EdgeInsets.all(appContentHorizontalPadding),
          child: CustomTextContainer(textKey: text),
        ));
  }
}
