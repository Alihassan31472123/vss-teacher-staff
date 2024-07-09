import 'package:vcc_staff_teacher/data/models/staffSalary.dart';
import 'package:vcc_staff_teacher/ui/widgets/allowancesAndDeductionsContainer.dart';
import 'package:vcc_staff_teacher/ui/widgets/customBottomsheet.dart';
import 'package:vcc_staff_teacher/utils/labelKeys.dart';
import 'package:flutter/material.dart';

class AllowanceAndDeductionsBottomsheet extends StatelessWidget {
  final List<StaffSalary> allowances;
  final List<StaffSalary> deductions;
  const AllowanceAndDeductionsBottomsheet(
      {super.key, required this.allowances, required this.deductions});

  @override
  Widget build(BuildContext context) {
    return CustomBottomsheet(
        titleLabelKey: allowancesAndDeductionsKey,
        child: AllowancesAndDeductionsContainer(
            allowances: allowances, deductions: deductions));
  }
}
