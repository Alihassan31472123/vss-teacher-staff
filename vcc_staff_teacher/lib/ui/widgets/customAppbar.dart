import 'package:vcc_staff_teacher/ui/widgets/customTextContainer.dart';
import 'package:vcc_staff_teacher/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Function? onBackButtonTap;
  final String titleKey;
  final bool? showBackButton;
  final bool? centerTitle;
  final Widget? trailingWidget;
  final double? elevation;
  const CustomAppbar(
      {super.key,
      this.showBackButton,
      required this.titleKey,
      this.onBackButtonTap,
      this.elevation,
      this.trailingWidget,
      this.centerTitle});

  Widget _buildAppBarTitle(BuildContext context) {
    return CustomTextContainer(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textKey: titleKey,
      style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Theme.of(context).colorScheme.tertiary)),
        color: Theme.of(context).colorScheme.surface,
      ),
      height: kToolbarHeight + MediaQuery.of(context).padding.top,
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          right: appContentHorizontalPadding),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Row(
        children: [
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                (showBackButton ?? true)
                    ? IconButton(
                        onPressed: () {
                          if (onBackButtonTap == null) {
                            Get.back();
                          } else {
                            onBackButtonTap!.call();
                          }
                        },
                        icon: const Icon(Icons.arrow_back))
                    : const SizedBox(),
                const SizedBox(
                  width: 15.0,
                ),
                Flexible(child: _buildAppBarTitle(context)),
              ],
            ),
          ),
          trailingWidget ?? const SizedBox()
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}