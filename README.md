## 1. Research: neopop_package

- Keywords:
    - NeoPOP in flutter
    - NeoPOP-flutter
    - NeoPOP android
    - NeoPOP iOS
    - NeoPOP cred
    - NeoPOP figma
    - NeoPOP github
    - NeoPOP design framework
    - NeoPOP react native
    - NeoPOP download

- Video Title: NeoPOP in flutter. NeoPOP CRED design for flutter, android, iOS, web and react native 


## 2. Research: Competitors

**Flutter Videos/Articles**

- 21K: https://www.youtube.com/watch?v=ZESCeVZncsQ
- https://pub.dev/packages/neopop
- https://github.com/CRED-CLUB/neopop-flutter
- https://cred.club/neopop

**Android/Swift/React Videos**

- https://github.com/CRED-CLUB/neopop-android
- https://github.com/CRED-CLUB/neopop-ios
- https://github.com/CRED-CLUB/neopop-web
- https://github.com/efoken/neopop-react-native

**Great Features**
- NeoPOP is CRED's inbuilt library for using NeoPOP components in your app.
- NeoPOP was created with one simple goal; to create the next generation of a beautiful, affirmative design system. NeoPOP stays true to everything that design at CRED stands for.
- NeoPOP is built for Android, iOS, Flutter and Web.
- NeoPOP has NeoPopButton, Elevated, Flat, Shimmer, Flat Strokes, Elevated Strokes, Adjacent Buttons, Vertically Aligned Buttons, Horizontally Aligned Buttons and many other buttons explained below.
- See more details [here](https://pub.dev/packages/neopop).

**Problems from Videos**

- NA

**Problems from Flutter Stackoverflow**

- NA

## 3. Video Structure

**Main Points / Purpose Of Lesson**

1. NeoPOP is CRED's inbuilt library for using NeoPOP components in your app. NeoPOP was created with one simple goal; to create the next generation of a beautiful, affirmative design system. NeoPOP stays true to everything that design at CRED stands for.
2. Flutter built-in buttons do not have beautiful animations as like NeoPOP buttons have.
3. NeoPOP makes our app look great, and work great. it also makes it incredibly fast, effective, and easy to build on top of.

**The Structured Main Content**
1. NeoPop is CRED's inbuilt library for using NeoPop components in your app. NeoPOP is used for creating animated buttons.
2. Run
```dart
flutter pub add neopop
```
in terminal to add the latest NeoPOP package in your app.
3. There are two types of buttons. Simple and Tilted NeoPOP buttons.
  - NeoPOP Simple buttons have elevated, Flat, Shimmer, Flat Strokes, Vertically and Horizontally adjacent types.
  - NeoPOP Flat buttons have Floating, Non Floating, Strokes and Shimmer types.
## Elevated

![Elevated](https://user-images.githubusercontent.com/9965653/172596228-1bcb92d0-d293-4290-ac38-b9a693a2fab2.png "Elevated Button")
![elevated](https://user-images.githubusercontent.com/9965653/175874614-ab316981-29d1-4ed5-a90b-6fe840ac9700.gif)


``` dart
NeoPopButton(
    color: Colors.white,
    onTapUp: () => HapticFeedback.vibrate(),
    onTapDown: () => HapticFeedback.vibrate(),
    child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text("Pay now"),
            ],
        ),
    ),
),
```

## Flat

![Flat](https://user-images.githubusercontent.com/9965653/172597180-63b4c386-9b7c-4211-a64c-a79892232481.png "Flat Button")
![flatButton](https://user-images.githubusercontent.com/9965653/175874619-b5edb3e8-6c18-4f15-8e60-ef44cb004c94.gif)

By specifying the `buttonPosition` as `Position.center`, NeoPOP will compute right and bottom surface's color according to `color`.
Top and left surface's color is computed w.r.t `parentColor` and `grandparentColor`

``` dart
NeoPopButton(
    color: Colors.white,
    onTapUp: () => HapticFeedback.vibrate(),
    onTapDown: () => HapticFeedback.vibrate(),
    parentColor: Colors.transparent,
    buttonPosition: Position.center,
    child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
                Text("Pay Now"),
            ],
        ),
    ),
),
```

## Shimmer

```dart
const NeoPopShimmer(
    shimmerColor: Colors.yellow,
    child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
        child: Text("Hello"),
    ),
),
 ```  
## Flat Strokes

![Flat Strokes](https://user-images.githubusercontent.com/9965653/172597728-5830cc72-1d2a-4d52-8089-55fb61449996.png "Flat Strokes")
![flatStroked](https://user-images.githubusercontent.com/9965653/175874617-a90ef305-d460-4887-927c-0ddecfe45975.gif)

To add border on a flat button, add `border`

```dart
NeoPopButton(
    color: const Color.fromRGBO(0, 0, 0, 1),
    buttonPosition: Position.center,
    onTapUp: () {},
    border: const Border.fromBorderSide(
        BorderSide(color: kBorderColorWhite, width: kButtonBorderWidth),
    ),
    child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
                Text("Pay Now", style: TextStyle(color: Colors.white)),
            ],
        ),
    ),
),
```

## Elevated Strokes

![Elevated Strokes](https://user-images.githubusercontent.com/9965653/172597473-630c86b9-574d-4f65-afeb-171c5ec147cc.png "Elevated Strokes")
![elevatedStroked](https://user-images.githubusercontent.com/9965653/175874610-3e92e9e9-cbed-4906-a90b-423c615e465d.gif)

```dart
NeoPopButton(
    color: kSecondaryButtonLightColor,
    bottomShadowColor: ColorUtils.getVerticalShadow(kBorderColorGreen).toColor(),
    rightShadowColor: ColorUtils.getHorizontalShadow(kBorderColorGreen).toColor(),
    animationDuration: kButtonAnimationDuration,
    depth: kButtonDepth,
    onTapUp: () {},
    border: Border.all(
        color: kBorderColorGreen,
        width: kButtonBorderWidth,
    ),
    child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
                Text("Scan & Pay", style: TextStyle(color: Colors.white)),
            ],
        ),
    ),
),
```  

## Adjacent Buttons

![Adjacent Buttons](https://user-images.githubusercontent.com/58745044/176997736-e93eae47-caa7-4905-a678-5e6eba0ac70f.jpg "Adjacent Buttons")

### Vertically Aligned Buttons

```dart
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
            color: kBorderColorGreen, width: kButtonBorderWidth,
        ),
        child:  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
                    child: Text(
                    "Button",
                    style: TextStyle(color: Colors.white),
                ),
            ),
        ),
        NeoPopButton(
            color: kPrimaryButtonColor,
            buttonPosition: Position.fullBottom,
            onTapUp: () {},
            child:  const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
                child: Text("Button"),
            ),
        ),
    ],
),
```

### Horizontally Aligned Buttons

```dart
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
            child:  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 15.0),
                    child: Text("Button"),
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
                    color: kBorderColorGreen, width: kButtonBorderWidth,
                ),
                child: const Center(
                child: Padding(
                    padding: EdgeInsets.symmetric( horizontal: 8.0, vertical: 15.0),
                    child: Text(
                            "Button",
                            style: TextStyle(color: Colors.white),
                        ),
                    ),
                ),
            ),
        ),
    ],
),
```


# NeoPopTiltedButton

![NeoPopTiltedButton](https://user-images.githubusercontent.com/58745044/176997116-89e1de77-f903-4051-8145-012f3af1fe7d.jpg "NeoPopTiltedButton")


## Non Floating

![Non Floating](https://user-images.githubusercontent.com/9965653/172599904-75d12903-f490-47d6-b8df-39adc9ef058e.png "Non Floating")
![tiltNonFloating](https://user-images.githubusercontent.com/9965653/175874607-e8e10326-1d6d-4b7d-be8f-50cc8f37ee14.gif)

```dart
 NeoPopTiltedButton(
    color: kPrimaryButtonColor,
    onTapUp: () {},
    child: Padding(
        padding: const EdgeInsets.symmetric(
        horizontal: 80.0,
        vertical: 15,
        ),
        child: SvgPicture.asset('assets/svg/cta_text_view.svg'),
    ),
),
```

##  Floating

![Floating](https://user-images.githubusercontent.com/9965653/172599406-6da2d3a4-06ff-4a74-bd6a-988b36a59159.png "Floating")
![tiltFloating](https://user-images.githubusercontent.com/9965653/175874595-86cc0725-df20-4ab3-b432-a6110d4c97c4.gif)

```dart
NeoPopTiltedButton(
    isFloating: true,
    onTapUp: () => HapticFeedback.vibrate(),
    onTapDown: () => HapticFeedback.vibrate(),
    decoration: const NeoPopTiltedButtonDecoration(
        color: kPopYellowColor,
        plunkColor: kPlunkColorYellow,
        shadowColor: kTiltedButtonShadowColor,
    ),
    child: Padding(
        padding: const EdgeInsets.symmetric(
        horizontal: 70.0,
        vertical: 15,
        ),
        child: SvgPicture.asset('assets/svg/cta_text_play_now.svg'),
    ),
),
```

## Strokes

![Strokes](https://user-images.githubusercontent.com/9965653/172600281-53eec23d-3596-470e-95ed-dc93ebef82bb.png "Strokes")
![TiltStroked](https://user-images.githubusercontent.com/9965653/175874601-91a27b7d-9e1b-4148-9a26-b9c9245e7a05.gif)

```dart
NeoPopTiltedButton(
    isFloating: true,
    onTapUp: () {},
    decoration: const NeoPopTiltedButtonDecoration(
        color: Color(0xFF0D0D0D),
        plunkColor: Color(0xFF3F6915),
        shadowColor: Colors.black,
        border: Border.fromBorderSide(
        BorderSide(color: Color(0xFF8DD04A), width: 1),
        ),
    ),
    child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 15),
        child: Text('Play Now', style: TextStyle(color: Colors.white)),
    ),
),
```

## Shimmer

![shimmer](https://user-images.githubusercontent.com/9965653/175874574-99f209f2-2d14-458b-9f92-959e6aabf112.gif)

```dart 
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
        child: Text('Play Now'),
    ),
),
```#   p r o j e c t s _ m o h a m m a d  
 #   p r o j e c t s _ m o h a m m a d  
 #   p r o j e c t s _ m o h a m m a d  
 