import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/neopop.dart';
import 'package:neopop/utils/color_utils.dart';

import '../utils/constants.dart';

class NeoPopFlatButtons extends StatefulWidget {
  const NeoPopFlatButtons({super.key});

  @override
  State<NeoPopFlatButtons> createState() => _NeoPopFlatButtonsState();
}

class _NeoPopFlatButtonsState extends State<NeoPopFlatButtons> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('NeoPOP Flat Buttons'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.black87,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: kSmallHeight),
                NeoPopButton(
                  color: Colors.white,
                  onTapUp: () => HapticFeedback.vibrate(),
                  onTapDown: () => HapticFeedback.vibrate(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Elevated NeoPOP Button'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: kLargeHeight),
                NeoPopButton(
                  color: Colors.white,
                  onTapUp: () => HapticFeedback.vibrate(),
                  onTapDown: () => HapticFeedback.vibrate(),
                  parentColor: Colors.transparent,
                  buttonPosition: Position.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Flat NeoPOP Button'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: kLargeHeight),
                const NeoPopShimmer(
                  shimmerColor: Colors.yellow,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    child: Text(
                      'Shimmer NeoPOP Button',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: kLargeHeight),
                NeoPopButton(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  buttonPosition: Position.center,
                  onTapUp: () {},
                  border: const Border.fromBorderSide(
                    BorderSide(
                      color: kBorderColorWhite,
                      width: kButtonBorderWidth,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Flat Strokes NeoPOP Button',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: kLargeHeight),
                NeoPopButton(
                  color: kSecondaryButtonLightColor,
                  bottomShadowColor:
                      ColorUtils.getVerticalShadow(kBorderColorGreen).toColor(),
                  rightShadowColor:
                      ColorUtils.getHorizontalShadow(kBorderColorGreen)
                          .toColor(),
                  animationDuration: kButtonAnimationDuration,
                  depth: kButtonDepth,
                  onTapUp: () {},
                  border: Border.all(
                    color: kBorderColorGreen,
                    width: kButtonBorderWidth,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Elevated Strokes NeoPOP Button',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: kLargeHeight),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    NeoPopButton(
                      color: kSecondaryButtonLightColor,
                      bottomShadowColor: kShadowColorDarkGreen,
                      rightShadowColor: kShadowColorGreen,
                      buttonPosition: Position.fullBottom,
                      onTapUp: () {},
                      border: Border.all(
                        color: kBorderColorGreen,
                        width: kButtonBorderWidth,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 15.0),
                        child: Text(
                          'Adjacent Vertically Aligned',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    NeoPopButton(
                      color: kPrimaryButtonColor,
                      buttonPosition: Position.fullBottom,
                      onTapUp: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 15.0),
                        child: Text('NeoPOP Buttons'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: kLargeHeight),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: NeoPopButton(
                        color: kPrimaryButtonColor,
                        buttonPosition: Position.fullBottom,
                        depth: kButtonDepth,
                        onTapUp: () {},
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 15.0),
                            child: Text('Adjacent Horizontally Aligned'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: NeoPopButton(
                        color: kSecondaryButtonLightColor,
                        bottomShadowColor: kShadowColorDarkGreen,
                        rightShadowColor: kShadowColorGreen,
                        buttonPosition: Position.fullBottom,
                        depth: kButtonDepth,
                        onTapUp: () {},
                        border: Border.all(
                          color: kBorderColorGreen,
                          width: kButtonBorderWidth,
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 15.0),
                            child: Text(
                              'NeoPOP Buttons',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: kLargeHeight),
              ],
            ),
          ),
        ),
      );
}
