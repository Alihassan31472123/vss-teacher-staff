import 'package:vcc_staff_teacher/cubits/authentication/sendPasswordResetEmailCubit.dart';
import 'package:vcc_staff_teacher/ui/widgets/customBottomsheet.dart';
import 'package:vcc_staff_teacher/ui/widgets/customCircularProgressIndicator.dart';
import 'package:vcc_staff_teacher/ui/widgets/customRoundedButton.dart';
import 'package:vcc_staff_teacher/ui/widgets/customTextFieldContainer.dart';
import 'package:vcc_staff_teacher/utils/constants.dart';
import 'package:vcc_staff_teacher/utils/labelKeys.dart';
import 'package:vcc_staff_teacher/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';

class ForgotPasswordBottomsheet extends StatefulWidget {
  const ForgotPasswordBottomsheet({super.key});

  @override
  State<ForgotPasswordBottomsheet> createState() =>
      _ForgotPasswordBottomsheetState();
}

class _ForgotPasswordBottomsheetState extends State<ForgotPasswordBottomsheet> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBottomsheet(
      titleLabelKey: forgotPasswordKey,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: appContentHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            CustomTextFieldContainer(
              prefixWidget: const Icon(Icons.email_outlined),
              hintTextKey: emailKey,
              textEditingController: _textEditingController,
            ),
            const SizedBox(
              height: 15,
            ),
            BlocConsumer<SendPasswordResetEmailCubit,
                SendPasswordResetEmailState>(
              listener: (context, state) {
                if (state is SendPasswordResetEmailSuccess) {
                  Get.back();
                  Utils.showSnackBar(
                      message: passwordResetLinkSentToYourEmailKey,
                      context: context);
                } else if (state is SendPasswordResetEmailFailure) {
                  Utils.showSnackBar(
                      message: state.errorMessage, context: context);
                }
              },
              builder: (context, state) {
                return PopScope(
                  canPop: state is! SendPasswordResetEmailInProgress,
                  child: CustomRoundedButton(
                    widthPercentage: 1.0,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    buttonTitle: sendLinkKey,
                    showBorder: false,
                    child: state is SendPasswordResetEmailInProgress
                        ? const CustomCircularProgressIndicator()
                        : null,
                    onTap: () {
                      if (state is SendPasswordResetEmailInProgress) {
                        return;
                      }

                      if (_textEditingController.text.trim().isEmpty) {
                        Utils.showSnackBar(
                            message: pleaseEnterEmailKey, context: context);
                        return;
                      }
                      context
                          .read<SendPasswordResetEmailCubit>()
                          .sendPasswordResetEmail(
                              email: _textEditingController.text.trim());
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
