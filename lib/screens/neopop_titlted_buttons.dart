import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/neopop.dart';

import '/utils/constants.dart';

class NeoPopTiltedButtons extends StatelessWidget {
  const NeoPopTiltedButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('NeoPOP Tilted Buttons'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: kSmallHeight),
                NeoPopTiltedButton(
                  color: kPrimaryButtonColor,
                  onTapUp: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 80.0,
                      vertical: 15,
                    ),
                    child: Text('Non Floating NeoPopTiltedButton'),
                  ),
                ),
                const SizedBox(height: kLargeHeight),
                NeoPopTiltedButton(
                  isFloating: true,
                  onTapUp: () => HapticFeedback.vibrate(),
                  onTapDown: () => HapticFeedback.vibrate(),
                  decoration: const NeoPopTiltedButtonDecoration(
                    color: kPopYellowColor,
                    plunkColor: kPlunkColorYellow,
                    shadowColor: kTiltedButtonShadowColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 70.0,
                      vertical: 15,
                    ),
                    child: Text('Floating NeoPopTiltedButton'),
                  ),
                ),
                const SizedBox(height: kLargeHeight),
                NeoPopTiltedButton(
                  isFloating: true,
                  onTapUp: () {},
                  decoration: const NeoPopTiltedButtonDecoration(
                    color: Color(0xFF0D0D0D),
                    plunkColor: Color(0xFF3F6915),
                    shadowColor: Colors.black,
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: Color(0xFF8DD04A),
                        width: 1,
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 70.0,
                      vertical: 15,
                    ),
                    child: Text(
                      'Strokes NeoPopTiltedButton',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: kLargeHeight),
                NeoPopTiltedButton(
                  isFloating: true,
                  onTapUp: () {},
                  decoration: const NeoPopTiltedButtonDecoration(
                    color: Color.fromRGBO(255, 235, 52, 1),
                    plunkColor: Color.fromRGBO(255, 235, 52, 1),
                    shadowColor: Color.fromRGBO(36, 36, 36, 1),
                    showShimmer: true,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 70.0,
                      vertical: 15,
                    ),
                    child: Text('Shimmer NeoPopTiltedButton'),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
