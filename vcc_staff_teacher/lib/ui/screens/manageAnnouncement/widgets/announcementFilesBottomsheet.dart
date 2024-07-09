import 'package:vcc_staff_teacher/data/models/studyMaterial.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/widgets/studyMaterialContainer.dart';
import 'package:vcc_staff_teacher/ui/widgets/customBottomsheet.dart';
import 'package:vcc_staff_teacher/utils/constants.dart';
import 'package:vcc_staff_teacher/utils/labelKeys.dart';
import 'package:flutter/material.dart';

class AnnouncementFilesBottomsheet extends StatelessWidget {
  final List<StudyMaterial> files;
  const AnnouncementFilesBottomsheet({super.key, required this.files});

  @override
  Widget build(BuildContext context) {
    return CustomBottomsheet(
        titleLabelKey: viewFilesKey,
        child: Column(
          children: files
              .map((file) => Padding(
                    padding: EdgeInsets.all(appContentHorizontalPadding),
                    child: StudyMaterialContainer(
                        studyMaterial: file, showEditAndDeleteButton: false),
                  ))
              .toList(),
        ));
  }
}
