import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lottie/lottie.dart';

import '../../core/constants/extension/context_extension.dart';
import '../../product/state_management/mobx.dart';
import '../../product/widget/button/onboard_button.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({
    Key? key,
  }) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    final _mobx = MobxS();
    return Scaffold(body: _body(context, _mobx));
  }
}

Widget _body(BuildContext context, MobxS _mobx) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Observer(
          builder: (_) => SizedBox(
              width: context.width * 1,
              child: Lottie.asset(_mobx.imageonboard)),
        ),
        SizedBox(height: context.height * 0.1),
        OnBoardButton(
          context,
          _mobx,
          _mobx.isPressed,
        )
      ],
    );
