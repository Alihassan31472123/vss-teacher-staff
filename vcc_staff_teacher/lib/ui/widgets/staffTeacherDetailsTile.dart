import 'package:vcc_staff_teacher/ui/widgets/customTextContainer.dart';
import 'package:vcc_staff_teacher/ui/widgets/profileImageContainer.dart';
import 'package:vcc_staff_teacher/utils/constants.dart';
import 'package:flutter/material.dart';

class StaffTeacherDetailsTile extends StatelessWidget {
  final Function onTap;
  const StaffTeacherDetailsTile({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
          onTap.call();
        },
        child: Container(
          padding: EdgeInsets.all(appContentHorizontalPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Theme.of(context).colorScheme.tertiary),
              color: Theme.of(context).colorScheme.surface),
          child: Row(
            children: [
              const ProfileImageContainer(
                imageUrl: "",
                heightAndWidth: 70,
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: CustomTextContainer(
                  textKey: "Po the dragon warrior",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                ),
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.1),
                child: Icon(
                  Icons.arrow_right_alt,
                  size: 20.0,
                  color: Theme.of(context).colorScheme.primary,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}