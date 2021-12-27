import 'package:flutter/material.dart';

import '../../../core/constants/extension/context_extension.dart';
import '../../../core/constants/text/text.dart';
import '../../state_management/mobx.dart';
import 'custom_elevated_button.dart';

class OnBoardButton extends CustomElevatedButton {
  OnBoardButton(BuildContext context, MobxS _mobx,onPressed, {Key? key})
      : super(
          key: key,
          width: context.width * 0.7,
          height: context.height * 0.06,
          color: Colors.red,
          onPressed:onPressed,
          // _mobx.isPressed,
          borderRadius: 20,
          child: Text(AppText.onBoardButton),
        );
}
