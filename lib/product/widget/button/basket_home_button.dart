import 'package:flutter/material.dart';

import '../../../core/constants/extension/context_extension.dart';
import '../../../core/constants/navigator/routes.dart';
import '../../../core/constants/text/text.dart';
import '../../../core/init/navigator/navigation_service.dart';
import '../../state_management/mobx.dart';
import 'custom_elevated_button.dart';

class BasketHomeButton extends CustomElevatedButton {
  BasketHomeButton(BuildContext context, MobxS _mobx, {Key? key})
      : super(
          key: key,
          width: context.width * 0.7,
          height: context.height * 0.06,
          color: Colors.red,
          onPressed: () {
            NavigationService.instance
                .navigateToPage(RouteConstants.shoppingcard);
          },
          borderRadius: 20,
          child: Text(AppText.basketHomeButton),
        );
}
